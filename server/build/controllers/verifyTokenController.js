"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.TokenValidation = void 0;
const jsonwebtoken_1 = __importDefault(require("jsonwebtoken"));
const config_1 = __importDefault(require("../config/config"));
exports.TokenValidation = (req, res, next) => {
    const token = req.header('Authorization');
    if (!token)
        return res.status(401).json('Access Denied');
    try {
        const playLoad = jsonwebtoken_1.default.verify(token, config_1.default.keyjwt.keyprivate);
        req.userId = playLoad.user;
        req.userIdDb = playLoad.idUser;
        next();
    }
    catch (error) {
        //console.log(error)
        res.json('Error Token');
    }
    //res.send('OK')
    //res.json('OK')
};
//# sourceMappingURL=verifyTokenController.js.map