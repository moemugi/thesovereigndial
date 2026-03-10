import { inject, NgModule } from '@angular/core';
import { PreloadAllModules, RouterModule, Routes } from '@angular/router';
import { AuthService } from './services/auth/auth.service';

const routes: Routes = [

  {
    path: '',
    redirectTo: 'splash',
    pathMatch: 'full'
  },
  {
    path: 'home',
    loadChildren: () => import('./pages/home/home.module').then( m => m.HomePageModule),
    canMatch: [ async () => await inject(AuthService).authGuard()],
  },
  {
    path: 'login',
    loadChildren: () => import('./pages/login/login.module').then( m => m.LoginPageModule)
  },

  {
    path: 'profile',
    loadChildren: () => import('./pages/home/profile/profile.module').then( m => m.ProfilePageModule),
    canMatch: [ async () => await inject(AuthService).authGuard()],
  },
  
  {
    path: 'privacy',
    loadChildren: () => import('./pages/home/privacy/privacy.module').then( m => m.PrivacyPageModule),
    canMatch: [ async () => await inject(AuthService).authGuard()],
  },
  {
    path: 'about',
    loadChildren: () => import('./pages/home/about/about.module').then( m => m.AboutPageModule),
    canMatch: [ async () => await inject(AuthService).authGuard()],
  },
  {
    path: 'splash',
    loadChildren: () => import('./splash/splash.module').then( m => m.SplashPageModule)
  },
];

@NgModule({
  imports: [
    RouterModule.forRoot(routes, { preloadingStrategy: PreloadAllModules })
  ],
  exports: [RouterModule]
})
export class AppRoutingModule { }
