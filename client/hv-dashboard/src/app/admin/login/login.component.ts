import { Component, OnInit } from '@angular/core';
import {Router} from '@angular/router';
import { MasterService } from '../../services/master.service'

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css'],
  providers: [ MasterService ]
})
export class LoginComponent implements OnInit {
 
  public show: boolean = false;

  constructor(
    private _curriculumService: MasterService,
    private router: Router,
  ) { 
    let StoraToken_ = localStorage.getItem('toke_');
    if (StoraToken_ != null) {
      this.router.navigate(['/dashboard/profile'])
    }
    /*if (_curriculumService.SessionValidate) {
      console.log('se encuentra logeado')
    }*/
  }

  ngOnInit() {
  }

  onClickSubmit(email, password) {
    
    this._curriculumService.getDataTokenParams(email.value,password.value).subscribe(
      response => {
        localStorage.setItem('toke_', response.token);
        this._curriculumService.SessionValidate = true
        this.router.navigate(['/dashboard/profile'])
      },
      error => {
        this.show = true
        //console.log(error);
      }
    );
    return false
  }

}

