import { Router } from 'express';

import hvController from '../controllers/hvController';
import { TokenValidation } from '../controllers/verifyTokenController'

class hvRoute {

  public router: Router = Router();

  constructor() {
    this.config();
  }

  config(): void {
    this.router.get('/', hvController.index );
    this.router.post('/profileall', TokenValidation, hvController.profileall );
    this.router.post('/skill', TokenValidation, hvController.skill );
    this.router.post('/experiences', TokenValidation, hvController.experience );
    this.router.post('/education', TokenValidation, hvController.education );
    //this.router.delete('/:id', hvController.deletetest );
  }

}

const _hvRouter = new hvRoute();
export default _hvRouter.router;