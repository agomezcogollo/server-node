import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { MasterService } from '../master.service';
import { Router } from "@angular/router";


@Component({
  selector: 'app-login',
  templateUrl: './login.page.html',
  styleUrls: ['./login.page.scss'],
  providers: [ MasterService ]
})
export class LoginPage implements OnInit {
  
  public folder: string;
  show: boolean = false;

  constructor(
    private activatedRoute: ActivatedRoute,
    private _serviceMaster: MasterService,
    private router: Router,
  ){ }

  ngOnInit() { }

  logForm(myform) { 
    
    this._serviceMaster.getDataTokenParams(myform.value.email,myform.value.password).subscribe(
      response => {
        localStorage.setItem('toke_', response.token)
        this.router.navigate(['home']) 
      },
      error => {
        this.show = true
        console.log(error)
      }
    );
    return false
    
  }

}
