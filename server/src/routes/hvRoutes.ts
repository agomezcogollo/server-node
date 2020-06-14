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
    this.router.post('/skill', hvController.skill );
    this.router.post('/education', hvController.education );
    this.router.delete('/:id', hvController.deletetest );
  }

}

const _hvRouter = new hvRoute();
export default _hvRouter.router;