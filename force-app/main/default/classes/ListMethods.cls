public class ListMethods {

    public static void met()
    {
    //creating List 
    List<integer> acc=new List<integer>();
    List<Account> acc1=new List<Account>();
    //Add and get elements
    acc.add(45);
    system.debug(acc.get(0));
    //Array List 
    List<integer> nn=new integer[10];
    nn.add(9,10);
    //clear list
    nn.clear();
    //addAll
    nn.addall(acc);
    //List Parameters
    List<integer> intpar=new List<integer>(nn); 
    system.debug(intpar);
    //set to copy
    set<integer> selis=new set<integer>();
     intpar.addall(selis);
    //Clone
    Account aa1=new Account();
        aa1.Name='sandy';
        acc1.add(aa1);
    List<Account> acc2=acc1.clone();
        system.debug(acc2);
    //clonemethod2
    Contact cc1=new Contact();
        cc1.Email='s@gmail.com';
    Contact cc2=new Contact();
        cc2.Phone='6374443';
        Contact[] cc=new Contact[]{cc1,cc2};
        Contact[] c=cc.clone();
        system.debug(c);
        cc[0].Email='sakthi';
        system.debug(c);
     //contains
     System.debug(nn.contains(10));
     //equals
     System.debug(nn.equals(acc));
     //getsobjecttype
     system.debug(acc1.getsobjecttype());
     //remove index
     List<integer> can=new integer[5];
       can[0]=1;
       can[1]=2;
       can[2]=3;
        system.debug(can);
        can.remove(1);
        system.debug(can[1]);
      //sort List
        can[3]=10;
        can[1]=45;
        system.debug(can);
        can.sort();
        system.debug(can);
      //hash code
       system.debug(can.hashcode());
      //clone and deep clone
      List<Case> conn=[select ContactEmail,CreatedDate from Case where id=:'5005i000007HKWCAA4'];      
      List<Case> clonlis=conn.deepclone(false,true,false);
        insert clonlis;
        System.debug(clonlis);
      List<Case> clon=conn.clone();
        system.debug(clon);
        //tostring
        system.debug(clonlis.tostring());
    }
}