import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute, ParamMap } from '@angular/router';
import { MasterService } from '../../../services/master.service'

@Component({
  selector: 'app-profile-edit',
  templateUrl: './profile-edit.component.html',
  styleUrls: ['./profile-edit.component.css']
})
export class ProfileEditComponent implements OnInit {

  id: number;
  dataHtmlProfile: any = null;
  //itemsa: any[] = [{text:'ga'}]
  
  constructor(
    private _curriculumService: MasterService,
    private route: ActivatedRoute,
    private router: Router
  ) { 
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
    this.route.queryParams.subscribe(params => {
      this.id = params['id'];
    });
    this.showProfileHtml(this.id)
  }

  showProfileHtml(id:any) {
    this._curriculumService.getDataProfileallID(id).subscribe(
      response => {
        this.dataHtmlProfile = response
      },
      error => {
        console.log(error);
      }
    );
  }

  onClickSubmit(form: any) {
    this._curriculumService.setDataProfileUpd(form.value).subscribe(
      response => {
        console.log('success')
      },
      error => {
        console.log(error);
      }
    );    
  }
}
