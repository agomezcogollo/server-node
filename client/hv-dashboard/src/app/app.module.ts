import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HttpClientModule } from '@angular/common/http';
// Importamos el módulo de formularios
import { FormsModule }   from '@angular/forms';
import { ReactiveFormsModule } from '@angular/forms';

// Importaando componetes 
import { LoginComponent } from './admin/login/login.component'
import { HomeComponent } from './admin/dashboard/home/home.component'
import { ProfileComponent } from './admin/dashboard/profile/profile.component';
import { FooterComponent } from './admin/dashboard/footer/footer.component';
import { ProfileEditComponent } from './admin/dashboard/profile-edit/profile-edit.component'

// Importando guardian 
import { AuthGuard } from "./guard/auth.guard";

@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    HomeComponent,
    ProfileComponent,
    FooterComponent,
    ProfileEditComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule,
    ReactiveFormsModule
  ],
  providers: [AuthGuard],
  bootstrap: [AppComponent]
})
export class AppModule { }
