import { Router } from 'express';
import authController from '../controllers/authController';

class AuthRoute {

  public router: Router = Router();

  constructor() {
    this.config();
  }

  config(): void {
    this.router.post('/', authController.authM);
    // this.router.post('/profileall', hvController.profileall );
    // this.router.post('/skill', hvController.skill );
    // this.router.post('/education', hvController.education );
    // this.router.delete('/:id', hvController.deletetest );
  }

}

const authRouter = new AuthRoute();
export default authRouter.router;