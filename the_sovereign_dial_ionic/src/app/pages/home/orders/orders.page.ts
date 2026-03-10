import { Component, inject, OnInit } from '@angular/core';
import { Strings } from 'src/app/enum/strings.enum';
import { OrderService } from 'src/app/services/order/order.service';

@Component({
  selector: 'app-orders',
  templateUrl: './orders.page.html',
  styleUrls: ['./orders.page.scss'],
})
export class OrdersPage implements OnInit {

  currency = Strings.CURRENCY;
  orders: any[] = [];
  private orderService = inject(OrderService);
  constructor() { }

  ngOnInit() {
    this.getOrders();
  }

  async getOrders() {
    try {
      const response = await this.orderService.getOrders();
      console.log(response);
      this.orders = response?.data;
    }catch(e) {
      console.log(e);
    }
  }

}