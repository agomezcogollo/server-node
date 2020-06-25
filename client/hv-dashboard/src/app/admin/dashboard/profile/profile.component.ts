import { Component, OnInit } from '@angular/core';
import { MasterService } from '../../../services/master.service'
import { Router } from '@angular/router';

@Component({
  selector: 'app-profile',
  templateUrl: './profile.component.html',
  styleUrls: ['./profile.component.css'],
  providers: [ MasterService ]
})
export class ProfileComponent implements OnInit {

  public data: string = 'user1'
  dataHtmlProfile:any = null;

  constructor(
    private _curriculumService: MasterService,
    private router: Router
  ) {
    this.editProfileHtml()
    let StoraToken_ = localStorage.getItem('toke_');
    _curriculumService.getDataTokenverify(StoraToken_).subscribe(
      response => {
        if (response != 'success') {
          localStorage.removeItem('toke_');
          localStorage.clear()
          this.router.navigate(['login'])
        }
      },
      error => {
        console.log('Entro en error');
        console.log(error);
      }
    );
  }

  ngOnInit(): void {
  }

  editProfileHtml() {
    this._curriculumService.getDataProfileall().subscribe(
      response => {
        this.dataHtmlProfile = response
      },
      error => {
        console.log('Entro en error');
        console.log(error);
      }
    );
  }

}
