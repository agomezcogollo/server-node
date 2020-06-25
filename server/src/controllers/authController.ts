import { Request, Response } from 'express';
import jwt from 'jsonwebtoken'
import keysdba from '../config/config';
import db from '../config/database';

class AuthController {

  public async authM (req: Request, res:Response) {
    //res.send('Hola Mundo IndexController')
    const userSystemLogin = await db.query('SELECT * FROM users WHERE email = ? AND password_node = ? ',
                                          [req.body.email, req.body.password]);
    if (!(Object.keys(userSystemLogin).length === 0)) {
      let DateNow = new Date();
      const tokenWeb: string =
        jwt.sign({ user: req.body.email, idUser: userSystemLogin[0]['id'], date: DateNow },
          keysdba.keyjwt.keyprivate, { expiresIn: 60 * 60 })
          // 60S * 60M * 24H
      res.json({status:'200',token:tokenWeb})
    } else {
      res.status(401).json('Access Denied');
    }
  }

  public verifyTk(req: Request, res: Response) {
    console.log('Consulta de Token')
    res.status(201).json('success');
  }

  public destroyTk(req: Request, res: Response) {
    console.log('Token Destruido')
    res.status(201).json('success');
  }

}

const authController = new AuthController();
export default authController 