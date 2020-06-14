import { Request, Response } from 'express';

import db from '../config/database';

class HVController {

  public index (req: Request, res:Response) {
    //res.send('Hoja de Vida Controller')
    //db.query('DESCRIBE users');
    res.json('API')
  } 

  public async profileall(req: Request, res: Response) {
    const profilesList = await db.query('SELECT * FROM profiles WHERE mail = ? ', req.userId);
    if (!profilesList) return res.status(404).json('No Found cod. 14563')
    res.json(profilesList)
  } 

  public skill (req: Request, res:Response) {
    res.json('Table skill')
  } 

  public education (req: Request, res:Response) {
    res.json('Table education')
  } 

  public experience (req: Request, res:Response) {
    res.json('Table experience')
  } 

  public deletetest (req: Request, res:Response) {
    res.json('Table deletetest '+req.params.id)
  } 

}

const hvController = new HVController();
export default hvController;
