import serverExpress, { Application } from 'express';
import morgan from 'morgan';
import cors from 'cors';

import indexRoute from './routes/indexRoutes';
import hvRoute from './routes/hvRoutes';
import AuthRoute from './routes/authRouter';

class Server {

  public app: Application;

  constructor() {
    this.app = serverExpress();
    this.config();
    this.routes();
  }

  config(): void {
    this.app.set('port', process.env.PORT || 3000)
    this.app.use(morgan('dev'))
    this.app.use(cors());
    this.app.use( serverExpress.json() );
    this.app.use( serverExpress.urlencoded({extended: false}) );
  }

  routes(): void {
    // this.app.use(indexRoute); igual
    this.app.use('/',indexRoute);
    this.app.use('/api/hv',hvRoute);
    this.app.use('/api/auth',AuthRoute);
  }

  start(): void {
    this.app.listen(this.app.get('port'), () => {
      console.log('Server ON port', this.app.get('port'))
      console.log('Url: http://localhost:3000')
    });
  }

}

const serverNode = new Server();
serverNode.start();