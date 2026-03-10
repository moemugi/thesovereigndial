import { Component, inject } from '@angular/core';
import { Router } from '@angular/router';
import { Platform } from '@ionic/angular';
import { AuthService } from './services/auth/auth.service';

@Component({
  selector: 'app-root',
  templateUrl: 'app.component.html',
  styleUrls: ['app.component.scss'],
})
export class AppComponent {
  pages = [
  { title: 'Home', url: '/home', icon: 'home', active: true },
  { title: 'Orders', url: '/home/orders', icon: 'bag-handle', active: false },
  { title: 'About Us', url: '/about', icon: 'information-circle', active: false },
  { title: 'Privacy Policy', url: '/privacy', icon: 'document-lock', active: false },
  { title: 'Sign Out', icon: 'log-out', route: true, active: false },
];
token: any;
profile: any = {};
private platform = inject(Platform);
private  router = inject(Router);
private auth = inject(AuthService);

constructor() {
  this.platform.ready().then(()=>{
    this.auth.token.subscribe({
      next: (token) => {
        this.token = token;
        if(token) this.getProfile();
      }
    });
  });

  
}  onItemTap(page: any) {
  if(!page?.active) {
    const index = this.pages.findIndex(x => x.active);
    this.pages[index].active = false;
    page.active = true;
  }

  if(!page?.route) {
    //navigate
    this.router.navigateByUrl(page?.url);
  } else {
    this.logout();
  }
}

async getProfile() {
  try {
    this.profile = await this.auth.getProfile();
  }catch(e) {
    console.log(e);
  }
}
logout() {
  console.log('logout');
  this.auth.logout();
  }
}

// constructor(public router: Router) {
// this.installApp();
// }
// installApp(){
// this.router.navigateByUrl('splash');
// }