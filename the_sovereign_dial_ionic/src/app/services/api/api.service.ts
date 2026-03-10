import { HttpClient } from '@angular/common/http';
import { Injectable, inject } from '@angular/core';
import { lastValueFrom } from 'rxjs';
import { environment } from 'src/environments/environment';

@Injectable({
    providedIn: 'root'
})
export class ApiService {

    private http = inject(HttpClient);
    // private http: HttpClient;


    constructor() {
        // this.http = inject(HttpClient); // Use inject here
    } 

    async getCoupons() {
        // return this.coupons.filter(coupon => coupon.isActive);
        try {
            const result: any = await lastValueFrom(this.http.get(environment.serverUrl + 'coupon'))
            if(result?.success == 1){
                return result?.data;
            }
            return null;
        } catch (e) {
            throw e;
        }
    }

    async getCoffees() {
        try {
            const url = environment.serverUrl + 'coffee'; // This should now be correct
            const result = await lastValueFrom(this.http.get(url));
            return result;
        } catch (e) {
            throw e;
        }
    }

        async searchCoffees(query: string) {
        try {
            const result = await lastValueFrom(this.http.get(environment.serverUrl + 'coffee', {params: {query} }));
            // const url = environment.serverUrl + 'coffee'; // This should now be correct
            // const result = await lastValueFrom(this.http.get(url));
            return result;
        } catch (e) {
            throw e;
        }
    }

        async getCoffeeById(id: string) {
        try {
            const result = await lastValueFrom(this.http.get(environment.serverUrl + 'coffee/' + id));
            return result;
        } catch (e) {
            throw e;
        }
    }
}