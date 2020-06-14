"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
const hvController_1 = __importDefault(require("../controllers/hvController"));
const verifyTokenController_1 = require("../controllers/verifyTokenController");
class hvRoute {
    constructor() {
        this.router = express_1.Router();
        this.config();
    }
    config() {
        this.router.get('/', hvController_1.default.index);
        this.router.post('/profileall', verifyTokenController_1.TokenValidation, hvController_1.default.profileall);
        this.router.post('/skill', verifyTokenController_1.TokenValidation, hvController_1.default.skill);
        this.router.post('/experiences', verifyTokenController_1.TokenValidation, hvController_1.default.experience);
        this.router.post('/education', verifyTokenController_1.TokenValidation, hvController_1.default.education);
        //this.router.delete('/:id', hvController.deletetest );
    }
}
const _hvRouter = new hvRoute();
exports.default = _hvRouter.router;
//# sourceMappingURL=hvRoutes.js.map