import { Component, inject, OnDestroy, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { NavController } from '@ionic/angular';
import { Subscription } from 'rxjs';
import { ApiService } from 'src/app/services/api/api.service';
import { CartService } from 'src/app/services/cart/cart.service';

@Component({
  selector: 'app-item-detail',
  templateUrl: './item-detail.page.html',
  styleUrls: ['./item-detail.page.scss'],
})
export class ItemDetailPage implements OnInit, OnDestroy {

  id!: string;
  item: any;
  server!: String;
  addToCart!: any;
  totalItem = 0;
  cartSub!: Subscription;
  private route = inject(ActivatedRoute);
  private navCtrl = inject(NavController);
  private api = inject(ApiService);
  public cartService = inject(CartService);

  constructor() { }

  ngOnInit() {
    this.getItems();

    this.cartSub = this.cartService.cart.subscribe({
        next: (cart) => {
          this.totalItem = cart ? cart?.totalItem : 0;
        }
      });
  }

  async getItems() {
    const id = this.route.snapshot.paramMap.get('id');
    console.log('check id: ', id);
    if (!id || id == '0') {
      this.navCtrl.back();
      return;
    }
    this.id = id;

    // this.item = this.api.items.find((record) => record.id == id);
    // console.log(this.item);
    try {
      const data: any = await this.api.getCoffeeById(id);
      if(data) {
        this.server = data?.server_base_url;
        this.item = data?.data;
      }
    } catch(e) {
      console.log(e);
    }
  }

  addItem() {
    const item = {...this.item};
    const result = this.cartService.addQuantity(this.item);
    this.addedText();
  }

  addedText() {
    this.addToCart = 'Added to Cart';
    setTimeout(() => {
      this.addToCart = null;
    }, 1000);
  }
  
  ngOnDestroy(): void {
    if(this.cartSub) this.cartSub.unsubscribe();
  }
}
