import { Component } from '@angular/core';
import { MasterService } from './services/master.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css'],
  providers: [ MasterService ]
})
export class AppComponent {
  
  title = 'curriculum-front-ag';

  constructor(
    private _curriculumService: MasterService
  ) {
    this._curriculumService.getDataToken().subscribe(
      response => {
        //console.log(response)
        localStorage.setItem('toke_', response.token);
      },
      error => {
        console.log(error);
      }
    );

  }



}

