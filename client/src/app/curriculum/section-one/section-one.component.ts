import { Component, OnInit } from '@angular/core';
import { MasterService } from '../../services/master.service';

@Component({
  selector: 'app-section-one',
  templateUrl: './section-one.component.html',
  styleUrls: ['./section-one.component.css'],
  providers: [ MasterService ]
})
export class SectionOneComponent implements OnInit {

  cheers = 'Espere 2 Segundos...';
  dataHeader = {
    name: null,
    profession: null,
    age: null,
    phone: null,
    address: null,
    mail: null,
    hangouts_google: null
  };

  constructor(
    private _curriculumService: MasterService
  ) { 

    setTimeout (() => {

    // Consumo de servicio sobre profile y carga en memoria
    this._curriculumService.getDataProfileall().subscribe(
      response => {
        //console.log(response[0]);
        this.dataHeader.name = response[0].name;
        this.dataHeader.profession = response[0].profession;
        this.dataHeader.age = response[0].age;
        this.dataHeader.phone = response[0].phone;
        this.dataHeader.address = response[0].address;
        this.dataHeader.mail = response[0].mail;
        this.dataHeader.hangouts_google = response[0].hangouts_google;
        this.cheers = 'Hola'
      },
      error => {
        console.log('Section-one-Part1');
        console.log(error);
      }
    );

   }, 2000);

  }

  ngOnInit(): void {
  }

}
