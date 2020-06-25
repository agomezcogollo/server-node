import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { global } from './global';
import { Observable, from } from 'rxjs';
import { UserModule } from '../models/user/user.module';
import { ProfileIdModule } from '../models/profileId.module';
import { ProfilesUpd } from '../models/profileUpd';

@Injectable({
  providedIn: 'root'
})
export class MasterService {

  public url: string;
  public StoraToken_: string;
  public SessionValidate: boolean = false

  constructor(
    public _http: HttpClient
  ) {
    this.url = global.url;
  }

  loggedIn():boolean {
    return !!localStorage.getItem('toke_');
  }
  getDataTokenParams(data1:any, data2:any): Observable<any> {
    let user1 = new UserModule(data1, data2);
    const headers = { 'content-type': 'application/json'}
    const body = JSON.stringify(user1);
    return this._http.post(this.url + 'auth', body , {'headers':headers} );
  }
  getDataTokenverify(dataToken:any): Observable<any> {
    const headers = {'content-type': 'application/json', 'Authorization': dataToken}  
    return this._http.post(this.url + 'auth/verifi-tk', '', {'headers':headers} );
  }
  getDataProfileall(): Observable<any> {
      let StoraToken_ = localStorage.getItem('toke_');
      let Headers = new HttpHeaders().set('Content-Type', 'application/x-www-form-urlencoded')
                                    .set('Authorization', StoraToken_);
      return this._http.post(this.url + 'hv/profileall', '', {headers: Headers});
  }
  getDataProfileallID(id:any): Observable<any> {
      let StoraToken_ = localStorage.getItem('toke_');
      let dataSend = new ProfileIdModule(id);
      const headers = {'content-type': 'application/json', 'Authorization': StoraToken_}  
      const body = JSON.stringify(dataSend);
      return this._http.post(this.url + 'hv/profileid', body , {'headers':headers} );
  }
  setDataProfileUpd(data:any): Observable<any> {
      let StoraToken_ = localStorage.getItem('toke_');
      let dataSend = new ProfilesUpd(data.idProfile,data.nameProfile,data.professionProfile,data.mobileProfile,data.cityProfile,data.emailProfile,data.emailGoogleProfile,data.aboutMeProfile,data.ageProfile);
      const headers = {'content-type': 'application/json', 'Authorization': StoraToken_}
      const body = JSON.stringify(dataSend);
      return this._http.put(this.url + 'hv/profileupd', body , {'headers':headers} );
  }
  setTokenDown(): Observable<any> {
    let StoraToken_ = localStorage.getItem('toke_');
    const headers = {'content-type': 'application/json', 'Authorization': StoraToken_}
    return this._http.post(this.url + 'auth/sing-out', '', {'headers':headers} );
  }
  getDataExperiences(): Observable<any> {
      let StoraToken_ = localStorage.getItem('toke_');
      let Headers = new HttpHeaders().set('Content-Type', 'application/x-www-form-urlencoded')
                                    .set('Authorization', StoraToken_);
      return this._http.post(this.url + 'hv/experiences', '', {headers: Headers});
  }
  getDataEducations(): Observable<any> {
      let StoraToken_ = localStorage.getItem('toke_');
      let Headers = new HttpHeaders().set('Content-Type', 'application/x-www-form-urlencoded')
                                    .set('Authorization', StoraToken_);
      return this._http.post(this.url + 'hv/education', '', {headers: Headers});
  }
  getDataSkill(): Observable<any> {
      let StoraToken_ = localStorage.getItem('toke_');
      let Headers = new HttpHeaders().set('Content-Type', 'application/x-www-form-urlencoded')
                                    .set('Authorization', StoraToken_);
      return this._http.post(this.url + 'hv/skill', '', {headers: Headers});
  }

}
