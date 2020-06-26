import { Injectable } from '@angular/core';
import { CanActivate, Router } from '@angular/router';
import { MasterService } from '../services/master.service';

@Injectable({
  providedIn: 'root'
})
export class AuthGuard implements CanActivate {

  constructor(
    private _authServive: MasterService,
    private router: Router,
  ) {}

  canActivate(): boolean
  {
    if (this._authServive.loggedIn()) {
      return true
    }
    this.router.navigate(['/login'])
  }
}
