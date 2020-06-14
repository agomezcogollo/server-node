import { Request, Response } from 'express';
import jwt from 'jsonwebtoken'
import keysdba from '../config/config';
import db from '../config/database';

class AuthController {

  public async authM (req: Request, res:Response) {
    //res.send('Hola Mundo IndexController')
    const userSystemLogin = await db.query('SELECT * FROM users WHERE email = ? AND password_node = ? ',
                                          [req.body.user, req.body.password]);
    if (!(Object.keys(userSystemLogin).length === 0)) {
      let DateNow = new Date();
      const tokenWeb: string =
        jwt.sign({ user: req.body.user, date: DateNow },
          keysdba.keyjwt.keyprivate, { expiresIn: 60 * 60 * 24 } )
      res.json({status:'200',token:tokenWeb})
    } else {
      res.status(401).json('Acces Denied');
    }
  } 

}

const authController = new AuthController();
export default authController 