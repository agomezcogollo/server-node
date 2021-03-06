"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const jsonwebtoken_1 = __importDefault(require("jsonwebtoken"));
const config_1 = __importDefault(require("../config/config"));
const database_1 = __importDefault(require("../config/database"));
class AuthController {
    authM(req, res) {
        return __awaiter(this, void 0, void 0, function* () {
            //res.send('Hola Mundo IndexController')
            const userSystemLogin = yield database_1.default.query('SELECT * FROM users WHERE email = ? AND password_node = ? ', [req.body.email, req.body.password]);
            if (!(Object.keys(userSystemLogin).length === 0)) {
                let DateNow = new Date();
                const tokenWeb = jsonwebtoken_1.default.sign({ user: req.body.email, idUser: userSystemLogin[0]['id'], date: DateNow }, config_1.default.keyjwt.keyprivate, { expiresIn: 60 * 60 });
                // 60S * 60M * 24H
                res.json({ status: '200', token: tokenWeb });
            }
            else {
                res.status(401).json('Access Denied');
            }
        });
    }
    verifyTk(req, res) {
        console.log('Consulta de Token');
        res.status(201).json('success');
    }
    destroyTk(req, res) {
        console.log('Token Destruido');
        res.status(201).json('success');
    }
}
const authController = new AuthController();
exports.default = authController;
//# sourceMappingURL=authController.js.map