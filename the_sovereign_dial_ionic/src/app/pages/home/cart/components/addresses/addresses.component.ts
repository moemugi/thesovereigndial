import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';

@Component({
  selector: 'app-addresses',
  templateUrl: './addresses.component.html',
  styleUrls: ['./addresses.component.scss'],
})
export class AddressesComponent  implements OnInit {

  @Input() addresses: any[] = [];
  @Output() close: EventEmitter<any> = new EventEmitter();

  constructor() { }

  ngOnInit() {}

dismiss(data?: any) {
  this.close.emit(data);
  }

}
