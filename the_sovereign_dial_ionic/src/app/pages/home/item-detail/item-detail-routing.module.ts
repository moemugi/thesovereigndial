import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { ItemDetailPage } from './item-detail.page';

const routes: Routes = [
  {
    path: '',
    component: ItemDetailPage
  },
  {
    path: 'cart',
    loadChildren: () => import('../cart/cart.module').then( m => m.CartPageModule)
  },
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class ItemDetailPageRoutingModule {}
