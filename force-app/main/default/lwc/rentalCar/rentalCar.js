import { LightningElement, track, wire } from 'lwc';
import cartype from '@salesforce/apex/GetCarType.getMet';
import { NavigationMixin } from 'lightning/navigation';
export default class RentalCar extends  NavigationMixin(LightningElement) {


   @track value='All Types';
   @track optionsarr=[];

   get options()
   {
    return this.optionsarr;
   }
    connectedCallback()
    {
       cartype().then(res=>{
        var val=[{label:"All Types",value:"All Types"}];
        
        for(let i=0;i<res.length;i++)
        {
          
          
          val.push({label:res[i].Name,value:res[i].Id});
        }
        //console.log('pushed:' + val);
         this.optionsarr=val;
        // console.log(this.optionsarr);
       }).catch(error=>{
         console.log(error.body.message);
       }) 

    }
    handleChange(event)
    {
      this.value=event.detail.value;
      const dataGetter=new CustomEvent('cartypescustomevent', {detail:this.value });
      console.log('Event Entered');
      this.dispatchEvent(dataGetter);
      console.log("event dispatched");
     //alert("selected Value is :" + this.value);
    }
    

    onclickhandler(event)
    {
    this[NavigationMixin.Navigate]({
      type: 'standard__objectPage',
      attributes: {
          objectApiName: 'Car_Type__c',
          actionName: 'new',
      }
  });
    }
}