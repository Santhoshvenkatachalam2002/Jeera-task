import { LightningElement,api,track } from 'lwc';

export default class RentalCarBody extends LightningElement {
@track arrayval=[];

get backendvalues()
{
    return this.arrayval;
}
    @api showCarDetails(array)
    {
    let data=[];
      for(let i=0;i<array.length;i++)
    {
        data.push(array[i]);
    }
    this.arrayval=data;

    
    }
}