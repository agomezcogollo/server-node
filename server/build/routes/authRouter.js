"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
const authController_1 = __importDefault(require("../controllers/authController"));
class AuthRoute {
    constructor() {
        this.router = express_1.Router();
        this.config();
    }
    config() {
        this.router.post('/', authController_1.default.authM);
        // this.router.post('/profileall', hvController.profileall );
        // this.router.post('/skill', hvController.skill );
        // this.router.post('/education', hvController.education );
        // this.router.delete('/:id', hvController.deletetest );
    }
}
const authRouter = new AuthRoute();
exports.default = authRouter.router;
//# sourceMappingURL=authRouter.js.map