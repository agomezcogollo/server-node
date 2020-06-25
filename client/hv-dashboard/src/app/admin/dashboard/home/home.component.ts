import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { MasterService } from "../../../services/master.service";

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css'],
  providers: [ MasterService ]
})
export class HomeComponent implements OnInit {

  constructor(
    private _curriculumService: MasterService,
    private route: Router
  ){}

  ngOnInit(): void {
  }

  sign_out() {
    this._curriculumService.setTokenDown().subscribe(
      response => {
          console.log('signOut Success')
      },
      error => {
        console.log('error');
        console.log(error);
      }
    );
    localStorage.removeItem('toke_');
    localStorage.clear()
    this.route.navigate(['login'])
  }

}
