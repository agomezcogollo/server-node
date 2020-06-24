import { Component, OnInit } from '@angular/core';
import { MasterService } from '../../../services/master.service'
import {Router} from '@angular/router';

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
    private router: Router,
  ) {
    let StoraToken_ = localStorage.getItem('toke_');
    if (StoraToken_ == null) {
      this.router.navigate(['/login'])
    }
    this.editProfileHtml()
  }

  ngOnInit(): void {
  }

  editProfileHtml() {
    this._curriculumService.getDataProfileall().subscribe(
      response => {
        this.dataHtmlProfile = response
        //console.log(response)
        //this.router.navigate(['/dashboard/profile'])
      },
      error => {
        //this.show = true
        console.log(error);
      }
    );
  }

}
