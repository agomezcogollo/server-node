"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
const authController_1 = __importDefault(require("../controllers/authController"));
const verifyTokenController_1 = require("../controllers/verifyTokenController");
class AuthRoute {
    constructor() {
        this.router = express_1.Router();
        this.config();
    }
    config() {
        this.router.post('/', authController_1.default.authM);
        this.router.post('/verifi-tk', verifyTokenController_1.TokenValidation, authController_1.default.verifyTk);
        this.router.post('/sing-out', verifyTokenController_1.TokenDestroy, authController_1.default.destroyTk);
    }
}
const authRouter = new AuthRoute();
exports.default = authRouter.router;
//# sourceMappingURL=authRouter.js.map