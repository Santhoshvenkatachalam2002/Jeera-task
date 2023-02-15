import { LightningElement,track,wire } from 'lwc';
import carrecords from '@salesforce/apex/GetCarNames.carNames';

export default class ParentCarRental extends LightningElement {

    @track childval;
    customeventhandler(event)
    {
     console.log('entered Value');
     let val=event.detail;
     this.childval=val;
     console.log(this.childval);
    }

    @wire(carrecords,{value:'$childval'})
    results({data,error})
    {
        if(data)
        {
          console.log(data);
            const arguementfun=this.template.querySelector('c-rental-car-body');
            arguementfun.showCarDetails(data);
        }
        else if(error)
    {
        alert("ERROR" + error.body.message);
    }
    }

}