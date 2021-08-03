const {
    dummyPaymentHandler,
    LanguageCode,
    DefaultJobQueuePlugin,
    DefaultSearchPlugin,
    PaymentMethodHandler,
} = require("@vendure/core");
const { defaultEmailHandlers, EmailPlugin } = require("@vendure/email-plugin");
const { AssetServerPlugin } = require("@vendure/asset-server-plugin");
const { AdminUiPlugin } = require("@vendure/admin-ui-plugin");

const path = require("path");
require("dotenv").config();

const mercadopago = require("mercadopago");

const mercadoPagoIntegration = new PaymentMethodHandler({
    code: "mercado-pago-handler",
    description: [
        {
            languageCode: LanguageCode.es,
            value: "Mercado Pago",
        },
    ],
    args: {
        apiKey: { type: "string" },
    },

    /** This is called when the `addPaymentToOrder` mutation is executed */
    createPayment: async (ctx, order, amount, args, metadata) => {
        try {
            mercadopago.configurations.setAccessToken(
                "TEST-4314139111445738-071414-8595ac6daacb5c4d18e1ed4e8058704e-191921434"
            );
            const payment_data = {
                transaction_amount: order.total,
                token: metadata.token,
                description: metadata.description,
                installments: Number(metadata.installments),
                payment_method_id: metadata.paymentMethodId,
                issuer_id: metadata.issuer_id,
                payer: {
                    email: metadata.payer.email,
                    identification: {
                        type: metadata.payer.identification.type,
                        number: metadata.payer.identification.number,
                    },
                },
            };

            console.log(payment_data, metadata);
            const resultPayment = await mercadopago.payment.save(payment_data);

            return {
                amount: order.total,
                state: "Settled",
                transactionId: resultPayment.body.id.toString(),
                metadata: {
                    public: {
                        ...resultPayment.body,
                    },
                },
            };
        } catch (err) {
            console.log(err);
            return {
                amount: order.total,
                state: "Declined",
                metadata: {
                    errorMessage: err.message,
                },
            };
        }
    },

    /** This is called when the `settlePayment` mutation is executed */
    settlePayment: async (ctx, order, payment, args) => {
        try {
            return { success: true };
        } catch (err) {
            return {
                success: false,
                errorMessage: err.message,
            };
        }
    },
});

const config = {
    apiOptions: {
        port: 4000,
        adminApiPath: "admin-api",
        adminApiPlayground: {
            settings: {
                "request.credentials": "include",
            },
        }, // turn this off for production
        adminApiDebug: true, // turn this off for production
        shopApiPath: "shop-api",
        shopApiPlayground: {
            settings: {
                "request.credentials": "include",
            },
        }, // turn this off for production
        shopApiDebug: true, // turn this off for production
    },
    authOptions: {
        superadminCredentials: {
            identifier: "superadmin",
            password: "superadmin",
        },
        tokenMethod: "cookie",
        cookieOptions: {
            secret: process.env.COOKIE_SESSION_SECRET,
        },
        requireVerification: true,
    },
    dbConnectionOptions: {
        type: "mysql",
        synchronize: true, // turn this off for production
        logging: false,
        database: "ian_ecommerce",
        host: "localhost",
        port: 3306,
        username: "root",
        password: "",
        migrations: [path.join(__dirname, "../migrations/*.ts")],
    },
    paymentOptions: {
        paymentMethodHandlers: [mercadoPagoIntegration, dummyPaymentHandler],
    },
    customFields: {},
    plugins: [
        AssetServerPlugin.init({
            route: "assets",
            assetUploadDir: path.join(__dirname, "../static/assets"),
        }),
        DefaultJobQueuePlugin,
        DefaultSearchPlugin,
        EmailPlugin.init({
            devMode: true,
            outputPath: path.join(__dirname, "../static/email/test-emails"),
            route: "mailbox",
            handlers: defaultEmailHandlers,
            templatePath: path.join(__dirname, "../static/email/templates"),
            globalTemplateVars: {
                // The following variables will change depending on your storefront implementation
                fromAddress: '"example" <noreply@example.com>',
                verifyEmailAddressUrl: "http://localhost:3000/users/verify",
                passwordResetUrl: "http://localhost:3000/users/password-reset",
                changeEmailAddressUrl:
                    "http://localhost:3000/users/verify-email-address-change",
            },
        }),
        AdminUiPlugin.init({
            route: "admin",
            port: 3002,
        }),
    ],
};

module.exports = { config };
