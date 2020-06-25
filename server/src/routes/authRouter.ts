import { Router } from 'express';
import authController from '../controllers/authController';
import { TokenValidation, TokenDestroy } from '../controllers/verifyTokenController'

class AuthRoute {

  public router: Router = Router();

  constructor() {
    this.config();
  }

  config(): void {
    this.router.post('/', authController.authM);
    this.router.post('/verifi-tk', TokenValidation, authController.verifyTk);
    this.router.post('/sing-out', TokenDestroy, authController.destroyTk);
  }

}

const authRouter = new AuthRoute();
export default authRouter.router;