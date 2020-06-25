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
const database_1 = __importDefault(require("../config/database"));
class HVController {
    index(req, res) {
        //res.send('Hoja de Vida Controller')
        //db.query('DESCRIBE users');
        res.json('API');
    }
    profileall(req, res) {
        return __awaiter(this, void 0, void 0, function* () {
            const profilesList = yield database_1.default.query('SELECT * FROM profiles');
            if (!profilesList)
                return res.status(404).json('No Found cod. 14563');
            res.json(profilesList);
        });
    }
    profileid(req, res) {
        return __awaiter(this, void 0, void 0, function* () {
            const body = req.body;
            const profilesList = yield database_1.default.query('SELECT * FROM profiles WHERE id = ? ', body.id_search);
            if (!profilesList)
                return res.status(404).json('No Found cod. 14563');
            res.json(profilesList);
        });
    }
    profileUpd(req, res) {
        return __awaiter(this, void 0, void 0, function* () {
            const body = req.body;
            console.log(body);
            const profilesList = yield database_1.default.query('UPDATE `profiles` SET `name` = ?, `profession` = ?, `age` = ?, `phone` = ?, `address` = ?, `mail` = ?, `hangouts_google` = ?, `about_me` = ? WHERE (`id` = ?); ', [body.name_profile, body.profession_profile, body.age_profile, body.phone_profile, body.address_profile, body.mail_profile, body.hangouts_google_profile, body.about_me_profile, body.id_profile]);
            if (!profilesList)
                return res.status(404).json('No Found cod. 14563');
            if (profilesList.changedRows == 1)
                return res.status(201).json('success');
            if (profilesList.changedRows == 0)
                return res.status(201).json('not change');
            res.json(profilesList);
        });
    }
    skill(req, res) {
        return __awaiter(this, void 0, void 0, function* () {
            const skillList = yield database_1.default.query('SELECT * FROM skills WHERE profile_id = ? ', req.userIdDb);
            if (!skillList)
                return res.status(404).json('No Found cod. 14563');
            res.json(skillList);
        });
    }
    education(req, res) {
        return __awaiter(this, void 0, void 0, function* () {
            const educationList = yield database_1.default.query('SELECT * FROM educations WHERE profile_id = ? ', req.userIdDb);
            if (!educationList)
                return res.status(404).json('No Found cod. 14563');
            res.json(educationList);
        });
    }
    experience(req, res) {
        return __awaiter(this, void 0, void 0, function* () {
            const experienceList = yield database_1.default.query('SELECT * FROM experiences WHERE profile_id = ? ', req.userIdDb);
            if (!experienceList)
                return res.status(404).json('No Found cod. 14563');
            res.json(experienceList);
        });
    }
    deletetest(req, res) {
        res.json('Table deletetest ' + req.params.id);
    }
}
const hvController = new HVController();
exports.default = hvController;
//# sourceMappingURL=hvController.js.map