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
exports.TokenDestroy = exports.TokenValidation = void 0;
const jsonwebtoken_1 = __importDefault(require("jsonwebtoken"));
const config_1 = __importDefault(require("../config/config"));
const database_1 = __importDefault(require("../config/database"));
exports.TokenValidation = (req, res, next) => __awaiter(void 0, void 0, void 0, function* () {
    const token = req.header('Authorization');
    if (!token)
        return res.status(401).json('Access Denied');
    try {
        const tokeSelectData = yield database_1.default.query('SELECT * FROM node_access_tokens_expired WHERE tokens_expired = ? ;', token);
        if (!(Object.keys(tokeSelectData).length === 0)) {
            return res.status(401).json('Access Denied');
        }
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
});
exports.TokenDestroy = (req, res, next) => __awaiter(void 0, void 0, void 0, function* () {
    const token = req.header('Authorization');
    if (!token)
        return res.status(401).json('Access Denied');
    try {
        let DateNow = new Date();
        const playLoad = jsonwebtoken_1.default.verify(token, config_1.default.keyjwt.keyprivate);
        const InsertToken = yield database_1.default.query('INSERT INTO `node_access_tokens_expired` (`tokens_expired`, `date_expired`) VALUES (?, ?) ', [token, DateNow]);
        next();
    }
    catch (error) {
        //console.log(error)
        res.json('Error Token');
    }
});
//# sourceMappingURL=verifyTokenController.js.map