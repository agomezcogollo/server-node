import { Component, OnInit } from '@angular/core';
import { MasterService } from '../../services/master.service';

@Component({
  selector: 'app-section-six',
  templateUrl: './section-six.component.html',
  styleUrls: ['./section-six.component.css'],
  providers: [ MasterService ]
})
export class SectionSixComponent implements OnInit {

  skillOne:any = {
    skills_name: null,
    skills_age: null,
  };
  skillTwo:any = {
    skills_name: null,
    skills_age: null,
  };
  skillThree:any = {
    skills_name: null,
    skills_age: null,
  };
  skillFour:any = {
    skills_name: null,
    skills_age: null,
  };
  skillFive:any = {
    skills_name: null,
    skills_age: null,
  };
  skillSix:any = {
    skills_name: null,
    skills_age: null,
  };
  skillSeven:any = {
    skills_name: null,
    skills_age: null,
  };
  skillEight:any = {
    skills_name: null,
    skills_age: null,
  };

  constructor(
    private _curriculumService: MasterService
  ) { }

  ngOnInit(): void {

    setTimeout(() => {

        // Consumo de servicio sobre profile y carga en memoria
        this._curriculumService.getDataSkill().subscribe(
          response => {

            this.skillOne.skills_name = response[0].skills_name;
            this.skillOne.skills_age = response[0].skills_age;
            
            this.skillTwo.skills_name = response[1].skills_name;
            this.skillTwo.skills_age = response[1].skills_age;
            
            this.skillThree.skills_name = response[2].skills_name;
            this.skillThree.skills_age = response[2].skills_age;
            
            this.skillFour.skills_name = response[3].skills_name;
            this.skillFour.skills_age = response[3].skills_age;
            
            this.skillFive.skills_name = response[4].skills_name;
            this.skillFive.skills_age = response[4].skills_age;
            
            this.skillSix.skills_name = response[5].skills_name;
            this.skillSix.skills_age = response[5].skills_age;
            
            this.skillSeven.skills_name = response[6].skills_name;
            this.skillSeven.skills_age = response[6].skills_age;
            
            this.skillEight.skills_name = response[7].skills_name;
            this.skillEight.skills_age = response[7].skills_age;

          },
          error => {
            console.log('Section-five');
            console.log(error);
          }
        );
      
    }, 3000);
  }

}
