import { Component, OnInit } from '@angular/core';
import { MasterService } from '../../services/master.service';

@Component({
  selector: 'app-section-four',
  templateUrl: './section-four.component.html',
  styleUrls: ['./section-four.component.css'],
  providers: [ MasterService ]
})
export class SectionFourComponent implements OnInit {

  workExperienceAll: any = null;
  
  constructor(
    private _curriculumService: MasterService
  ) { }

  ngOnInit(): void {

    setTimeout(() => {
      
        // Consumo de servicio sobre profile y carga en memoria
        this._curriculumService.getDataExperiences().subscribe(
          response => {
            this.workExperienceAll = response;
          },
          error => {
            console.log('Section-four');
            console.log(error);
          }
        );
      
      }, 3000);
  }

  

}
