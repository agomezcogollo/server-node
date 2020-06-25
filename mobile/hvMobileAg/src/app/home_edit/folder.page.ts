import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { MasterService } from '../master.service'
import {Location} from '@angular/common';

@Component({
  selector: 'app-folder',
  templateUrl: './folder.page.html',
  styleUrls: ['./folder.page.scss'],
  providers: [ MasterService ]
})
export class FolderPage implements OnInit {
  
  id: number;
  public folder: string;
  dataHtmlProfile:any = null;

  constructor(
    private activatedRoute: ActivatedRoute,
    private _curriculumService: MasterService,
    private router: Router,
    private _location: Location
  )
  { }

  ngOnInit() {
    this.folder = 'Inicio'
    this.activatedRoute.queryParams.subscribe(params => {
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
        //this._location.back();
        this.router.navigate(['/home'])
      },
      error => {
        console.log(error);
      }
    );    
  }

}
