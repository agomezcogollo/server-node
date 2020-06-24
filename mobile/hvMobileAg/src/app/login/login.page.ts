import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';


@Component({
  selector: 'app-login',
  templateUrl: './login.page.html',
  styleUrls: ['./login.page.scss'],
})
export class LoginPage implements OnInit {
  public folder: string;
  //form: FormGroup;

  constructor(private activatedRoute: ActivatedRoute) { }

  ngOnInit() {
    //this.folder = 'Inicio'
    //this.folder = this.activatedRoute.snapshot.paramMap.get('id');
  }

  logForm() { 
    console.log('Hola Amilcar')
    //console.log(this.form.value)
  }

}
