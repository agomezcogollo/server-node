import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { MasterService } from '../master.service'

@Component({
  selector: 'app-folder',
  templateUrl: './folder.page.html',
  styleUrls: ['./folder.page.scss'],
  providers: [ MasterService ]
})
export class FolderPage implements OnInit {
  
  public folder: string;
  dataHtmlProfile:any = null;

  constructor(private activatedRoute: ActivatedRoute, private _curriculumService: MasterService,)
  {
    this.editProfileHtml()
  }

  ngOnInit() {
    this.folder = 'Inicio'
    //this.folder = this.activatedRoute.snapshot.paramMap.get('id');
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
