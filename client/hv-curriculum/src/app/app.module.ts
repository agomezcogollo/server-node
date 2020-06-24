import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
// Importamos el módulo de formularios
import { FormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { CommonModule } from '@angular/common';  

import { AppRoutingModule } from './app-routing.module';
// Importar componentes
import { AppComponent } from './app.component';
import { CurriculumModule } from './curriculum/curriculum.module';

@NgModule({
  declarations: [
    AppComponent,
  ],
  imports: [
    BrowserModule,
    CommonModule,
    FormsModule,
    AppRoutingModule,
    HttpClientModule,
    CurriculumModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
