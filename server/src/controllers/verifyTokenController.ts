import { Request, Response, NextFunction } from 'express';
import jwt from 'jsonwebtoken';
import keysdba from '../config/config';
import db from '../config/database';

interface IpayLoad {
  user: string;
  idUser: string;
  date: string,
  iat: number;
  exp: number;
}

export const TokenValidation = async (req: Request, res: Response, next: NextFunction) => {

  const token = req.header('Authorization')

  if (!token) return res.status(401).json('Access Denied')

  try {
    const tokeSelectData = await db.query('SELECT * FROM node_access_tokens_expired WHERE tokens_expired = ? ;', token);
    if (!(Object.keys(tokeSelectData).length === 0)) {
      return res.status(401).json('Access Denied')
    }
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

export const TokenDestroy = async (req: Request, res: Response, next: NextFunction) => {

  const token = req.header('Authorization')

  if (!token) return res.status(401).json('Access Denied')

  try {
    let DateNow = new Date();
    const playLoad = jwt.verify(token, keysdba.keyjwt.keyprivate) as IpayLoad
    const InsertToken = await db.query('INSERT INTO `node_access_tokens_expired` (`tokens_expired`, `date_expired`) VALUES (?, ?) ', [token, DateNow]);
    next();
  } catch (error) {
    //console.log(error)
    res.json('Error Token')
  }
  
}
