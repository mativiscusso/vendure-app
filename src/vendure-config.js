const {
    dummyPaymentHandler,
    DefaultJobQueuePlugin,
    DefaultSearchPlugin,
} = require("@vendure/core");
const { defaultEmailHandlers, EmailPlugin } = require("@vendure/email-plugin");
const { AssetServerPlugin } = require("@vendure/asset-server-plugin");
const { AdminUiPlugin } = require("@vendure/admin-ui-plugin");
const path = require("path");
require("dotenv").config();

const config = {
    apiOptions: {
        port: process.env.PORT,
        adminApiPath: "admin-api",
        adminApiPlayground: {
            settings: {
                "request.credentials": "include",
            },
        }, // turn this off for production
        adminApiDebug: false, // turn this off for production
        shopApiPath: "shop-api",
        shopApiPlayground: {
            settings: {
                "request.credentials": "include",
            },
        }, // turn this off for production
        shopApiDebug: false, // turn this off for production
        cors: {
            origin: process.env.DOMAIN_URL,
            exposedHeaders: ["vendure-auth-token"],
            credentials: true,
        },
    },
    authOptions: {
        superadminCredentials: {
            identifier: process.env.SUPERADMIN_IDENTIFIER,
            password: process.env.SUPERADMIN_PASSWORD,
        },
        tokenMethod: "bearer",
        requireVerification: false,
    },
    dbConnectionOptions: {
        type: "mysql",
        synchronize: false, // turn this off for production
        logging: false,
        database: process.env.DB_NAME,
        host: process.env.DB_HOST,
        port: process.env.DB_PORT,
        username: process.env.DB_USER,
        password: process.env.DB_PASSWORD,
        migrations: [path.join(__dirname, "../migrations/*.ts")],
    },
    paymentOptions: {
        paymentMethodHandlers: [dummyPaymentHandler],
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
                verifyEmailAddressUrl: `${process.env.DOMAIN_URL}/users/verify`,
                passwordResetUrl: `${process.env.DOMAIN_URL}/users/password-reset`,
                changeEmailAddressUrl: `${process.env.DOMAIN_URL}/users/verify-email-address-change`,
            },
        }),
        AdminUiPlugin.init({
            route: "admin",
            port: 3002,
        }),
    ],
};

module.exports = { config };
