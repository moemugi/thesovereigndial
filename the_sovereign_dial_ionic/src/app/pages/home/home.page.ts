import { Component, inject, OnDestroy, OnInit } from '@angular/core';
import { Subscription } from 'rxjs';
import { ApiService } from 'src/app/services/api/api.service';
import { CartService } from 'src/app/services/cart/cart.service';

@Component({
  selector: 'app-home',
  templateUrl: './home.page.html',
  styleUrls: ['./home.page.scss'],
})
export class HomePage  implements OnInit, OnDestroy{
  items: any[] = [];
  allItems: any[] = [];
  server!: string;
  query!: string;
  totalItem = 0;
  cartSub!: Subscription;
  private api = inject(ApiService);
  public cartService = inject(CartService);

  constructor() { }

  ngOnInit() {
    console.log('ngOnInit homepage');
    this.getItems();

    this.cartSub = this.cartService.cart.subscribe({
      next: (cart) => {
        this.totalItem = cart ? cart?.totalItem : 0;
      }
    });
  }

  async getItems() {
    try {
      const data: any = await this.api.getCoffees();
      console.log(data);
      if(data) {
        this.allItems = data?.data;
        this.server = data?.server_base_url;
        this.items = [...this.allItems];
      }

    }catch(e) {
      console.log(e);
    }
  }

  onSearchChange(event: any) {
    console.log(event.detail.value);

    this.query = event.detail.value.toLowerCase();
    this.querySearch();
  }

  querySearch() {
    this.items = [];
    if (this.query.length > 0) {
      this.searchItems();
    } else {
      this.items = [...this.allItems];
    }
  }

  async searchItems() {
  //   this.items = this.api.items.filter((item) =>
  //   item.name.toLowerCase().includes(this.query)
  // );
  try {
    const data: any = await this.api.searchCoffees(this.query);
    console.log(data);
    if(data) {
      this.server = data?.server_base_url;
      this.items = data?.data;
    }
  }
  catch(e) {
    console.log(e);
  }
}


  ngOnDestroy(): void {
    if(this.cartSub) this.cartSub.unsubscribe();
  }
}
