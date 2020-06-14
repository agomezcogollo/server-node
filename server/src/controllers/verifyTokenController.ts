import { Request, Response, NextFunction } from 'express';
import jwt from 'jsonwebtoken';
import keysdba from '../config/config';

interface IpayLoad {
  user: string;
  idUser: string;
  date: string,
  iat: number;
  exp: number;
}

export const TokenValidation = (req: Request, res: Response, next: NextFunction) => {

  const token = req.header('Authorization')

  if (!token) return res.status(401).json('Access Denied')

  try {
    const playLoad = jwt.verify(token, keysdba.keyjwt.keyprivate) as IpayLoad
    req.userId = playLoad.user;
    req.userIdDb = playLoad.idUser;
    next();    
  } catch (error) {
    //console.log(error)
    res.json('Error Token')

  }

  //res.send('OK')
  //res.json('OK')
    

}