import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { global } from './global';
import { Observable, from } from 'rxjs';

import { UserPassModule } from "./models/userPass.module";
import { ProfileIdModule } from "./models/profileId.module";
import { ProfilesUpd } from "./models/profileUpd";

@Injectable({
  providedIn: 'root'
})
export class MasterService {

  public url: string;

  constructor(
    public _http: HttpClient
  ) { 
    this.url = global.url;
  }

  getDataTokenParams(data1:any, data2:any): Observable<any> {
    let user1 = new UserPassModule(data1, data2);
    const headers = { 'content-type': 'application/json'}
    const body = JSON.stringify(user1);
    return this._http.post(this.url + 'auth', body , {'headers':headers} );
  }

  loggedIn():boolean {
    return !!localStorage.getItem('toke_');
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

}
