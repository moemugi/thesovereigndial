import { Component, EventEmitter, inject, Input, OnInit, Output } from '@angular/core';
import { Strings } from 'src/app/enum/strings.enum';
import { ApiService } from 'src/app/services/api/api.service';

@Component({
  selector: 'app-coupons',
  templateUrl: './coupons.component.html',
  styleUrls: ['./coupons.component.scss'],
})
export class CouponsComponent  implements OnInit {

  @Input() orderTotal!: number;
  @Output() close: EventEmitter<any> = new EventEmitter()
  coupons: any[] = [];
  isLoading: boolean = false;
  currency = Strings.CURRENCY;
  private apiService = inject(ApiService);
  

  constructor() {}

  ngOnInit() { 
    this.getCoupons();
  }

 async getCoupons(){
  try {
    this.isLoading = true;
    const coupons: any[] = await this.apiService.getCoupons();
    if (coupons?.length > 0) {
      coupons.map((coupon) => {
        coupon.saved = this.getSavedAmount(coupon);
        return coupon;
      });
      this.coupons = [...coupons];
    }
    this.isLoading = false;
  } catch(e) {
    this.isLoading = false;
    console.log(e);
  }
}

getSavedAmount(coupon: any) {
  let amt = 0;
  if (coupon?.minimumOrderAmount) {
      if (this.orderTotal < coupon.minimumOrderAmount) {
          amt = -1; // Set to -1 to indicate insufficient order amount
          return amt; // Early return if order total is insufficient
      }
  }
  
  amt = coupon?.isPercentage
      ? this.orderTotal * (coupon?.discount / 100)
      : coupon?.discount;

  if (coupon?.upto_discount) {
      amt = amt >= coupon.upto_discount ? coupon.upto_discount : amt;
  }
  return amt;
}

  applyCoupon(coupon: any) {
    if (coupon.saved >= 0) {
      this.close.emit(coupon); // Emit the coupon data
    }
  }
  closeModal(data?: any) {
    this.close.emit(data);
  }
}
