"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.indexController = void 0;
class IndexController {
    index(req, res) {
        //res.send('Hola Mundo IndexController')
        res.json({ text: 'API' });
    }
}
exports.indexController = new IndexController();
//# sourceMappingURL=indexController.js.map