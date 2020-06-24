import { Component, OnInit } from '@angular/core';
import { MasterService } from '../../services/master.service';

@Component({
  selector: 'app-section-five',
  templateUrl: './section-five.component.html',
  styleUrls: ['./section-five.component.css'],
  providers: [ MasterService ]
})
export class SectionFiveComponent implements OnInit {

  educationsOne:any = {
    university_name: null,
    program_title: null,
    date_studies: null,
  };
  educationsTwo:any = {
    university_name: null,
    program_title: null,
    date_studies: null,
  };
  educationsThree:any = {
    university_name: null,
    program_title: null,
    date_studies: null,
  };

  constructor(
    private _curriculumService: MasterService
  ) { }

  ngOnInit(): void {

    setTimeout(() => {

        // Consumo de servicio sobre profile y carga en memoria
        this._curriculumService.getDataEducations().subscribe(
          response => {
            this.educationsOne.university_name = response[0].university_name;
            this.educationsOne.date_studies = response[0].date_studies;
            this.educationsOne.program_title = response[0].program_title;

            this.educationsTwo.university_name = response[1].university_name;
            this.educationsTwo.date_studies = response[1].date_studies;
            this.educationsTwo.program_title = response[1].program_title;

            this.educationsThree.university_name = response[2].university_name;
            this.educationsThree.date_studies = response[2].date_studies;
            this.educationsThree.program_title = response[2].program_title;
          },
          error => {
            console.log('Section-five');
            console.log(error);
          }
        );
      
    }, 3000);

  }

}
