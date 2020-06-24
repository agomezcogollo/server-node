import { Component, OnInit } from '@angular/core';
import { MasterService } from '../../services/master.service';

@Component({
  selector: 'app-section-three',
  templateUrl: './section-three.component.html',
  styleUrls: ['./section-three.component.css'],
  providers: [ MasterService ]
})
export class SectionThreeComponent implements OnInit {

  dataAboutMe = {
    aboutMe: null,
  };

  constructor(
    private _curriculumService: MasterService
  ) { }

  ngOnInit(): void {

    setTimeout (() => {
      
        // Consumo de servicio sobre profile y carga en memoria
        this._curriculumService.getDataProfileall().subscribe(
          response => {
            //console.log(response.profile[0]);
            this.dataAboutMe.aboutMe = response[0].about_me;
          },
          error => {
            console.log('Section-three');
            console.log(error);
          }
        );
      
    }, 3000);
  }

}
