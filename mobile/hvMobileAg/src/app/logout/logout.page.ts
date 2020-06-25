import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';

@Component({})
  
export class LogoutPage implements OnInit {
  
  public folder: string;
  dataHtmlProfile:any = null;

  constructor(
    private activatedRoute: ActivatedRoute,
    private router: Router
  ){
    localStorage.removeItem('toke_');
    localStorage.clear()
    this.router.navigate(['login'])
  }

  ngOnInit() { }

}
