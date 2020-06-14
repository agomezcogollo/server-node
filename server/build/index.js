"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = __importDefault(require("express"));
const morgan_1 = __importDefault(require("morgan"));
const cors_1 = __importDefault(require("cors"));
const indexRoutes_1 = __importDefault(require("./routes/indexRoutes"));
const hvRoutes_1 = __importDefault(require("./routes/hvRoutes"));
const authRouter_1 = __importDefault(require("./routes/authRouter"));
class Server {
    constructor() {
        this.app = express_1.default();
        this.config();
        this.routes();
    }
    config() {
        this.app.set('port', process.env.PORT || 3000);
        this.app.use(morgan_1.default('dev'));
        this.app.use(cors_1.default());
        this.app.use(express_1.default.json());
        this.app.use(express_1.default.urlencoded({ extended: false }));
    }
    routes() {
        // this.app.use(indexRoute); igual
        this.app.use('/', indexRoutes_1.default);
        this.app.use('/api/hv', hvRoutes_1.default);
        this.app.use('/api/auth', authRouter_1.default);
    }
    start() {
        this.app.listen(this.app.get('port'), () => {
            console.log('Server ON port', this.app.get('port'));
            console.log('Url: http://localhost:3000');
        });
    }
}
const serverNode = new Server();
serverNode.start();
//# sourceMappingURL=index.js.map