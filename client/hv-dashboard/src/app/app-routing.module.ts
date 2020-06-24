import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

// Importando COmponentes
import { LoginComponent } from './admin/login/login.component'
import { HomeComponent } from './admin/dashboard/home/home.component'
import { ProfileComponent } from './admin/dashboard/profile/profile.component'
import { ProfileEditComponent } from './admin/dashboard/profile-edit/profile-edit.component'

const routes: Routes = [

  { path: 'login', component: LoginComponent },
  { path: 'dashboard', component: HomeComponent,
    children: [
      { path: 'profile', component: ProfileComponent },
      { path: 'profile-edit/:id', component: ProfileEditComponent},
      { path: '', redirectTo: 'profile', pathMatch: 'full' },
    ]
  },
  { path: '**', redirectTo: '/login', pathMatch: 'full' }

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
