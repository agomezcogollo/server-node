import { Request, Response } from 'express';

import db from '../config/database';

class HVController {

  public index (req: Request, res:Response) {
    //res.send('Hoja de Vida Controller')
    //db.query('DESCRIBE users');
    res.json('API')
  } 

  public async profileall(req: Request, res: Response) {
    const profilesList = await db.query('SELECT * FROM profiles');
    if (!profilesList) return res.status(404).json('No Found cod. 14563')
    res.json(profilesList)
  }

  public async profileid(req: Request, res: Response) {
    const body = req.body
    const profilesList = await db.query('SELECT * FROM profiles WHERE id = ? ', body.id_search);
    if (!profilesList) return res.status(404).json('No Found cod. 14563')
    res.json(profilesList)
  }

  public async profileUpd(req: Request, res: Response) {
    const body = req.body
    console.log(body)
    const profilesList = await db.query('UPDATE `profiles` SET `name` = ?, `profession` = ?, `age` = ?, `phone` = ?, `address` = ?, `mail` = ?, `hangouts_google` = ?, `about_me` = ? WHERE (`id` = ?); ',
                                        [body.name_profile, body.profession_profile, body.age_profile , body.phone_profile, body.address_profile, body.mail_profile, body.hangouts_google_profile, body.about_me_profile, body.id_profile]); 
    if (!profilesList) return res.status(404).json('No Found cod. 14563')
    if (profilesList.changedRows == 1) return res.status(201).json('success')
    if (profilesList.changedRows == 0) return res.status(201).json('not change')
    res.json(profilesList)
  } 

  public async skill (req: Request, res:Response) {
    const skillList = await db.query('SELECT * FROM skills WHERE profile_id = ? ', req.userIdDb);
    if (!skillList) return res.status(404).json('No Found cod. 14563')
    res.json(skillList)
  } 

  public async education (req: Request, res:Response) {
    const educationList = await db.query('SELECT * FROM educations WHERE profile_id = ? ', req.userIdDb);
    if (!educationList) return res.status(404).json('No Found cod. 14563')
    res.json(educationList)
  } 

  public async experience (req: Request, res:Response) {
    const experienceList = await db.query('SELECT * FROM experiences WHERE profile_id = ? ', req.userIdDb);
    if (!experienceList) return res.status(404).json('No Found cod. 14563')
    res.json(experienceList)
  } 

  public deletetest (req: Request, res:Response) {
    res.json('Table deletetest '+req.params.id)
  } 

}

const hvController = new HVController();
export default hvController;
