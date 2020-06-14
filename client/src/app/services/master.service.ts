import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { global } from './global';
import { Observable, from } from 'rxjs';
import { UserModule } from '../curriculum/user/user.module';

@Injectable({
  providedIn: 'root'
})
export class MasterService {

  public url: string;
  public StoraToken_: string;

  constructor(
    public _http: HttpClient
  ) {
    this.url = global.url;
  }

  getDataToken(): Observable<any> {
    let user1 = new UserModule('amilkargomez@hotmail.es', 'node123456');
    //let params = JSON.stringify(user1);
    //let paramsJosn = 'json=' + params;
    //let Headers = new HttpHeaders().set('Content-Type', 'application/x-www-form-urlencoded');
    //return this.http.post(this.baseURL + 'people', body,{'headers':headers})
    const headers = { 'content-type': 'application/json'}  
    const body = JSON.stringify(user1);
    return this._http.post(this.url + 'auth', body , {'headers':headers} );
  }
  getDataProfileall(): Observable<any> {
      let StoraToken_ = localStorage.getItem('toke_');
      let Headers = new HttpHeaders().set('Content-Type', 'application/x-www-form-urlencoded')
                                    .set('Authorization', StoraToken_);
      //let parameters = new HttpHeaders();
      //parameters = parameters.set('Authorization', "Bearer " + StoraToken_);
      return this._http.post(this.url + 'hv/profileall', '', {headers: Headers});
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
