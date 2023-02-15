public class MapMethods {

    public static void Met()
    {
        //create Map
        Map<integer,string> mm=new Map<integer,string>();
        
        //create Map with sobjects
        List<Contact> acc=[select id,Name from Contact];
        Map<id,Contact> macc=new Map<id,Contact>(acc);
        system.debug(macc.get('0035i000004oUbbAAE'));
        
        //List<Account> ccc=[select id,Name from Account];
        //Map<string,id> ulta=new Map<Account,id>(ccc);
        //system.debug(ulta.get('gomathi'));
         
        // put
        mm.put(1,'santhosh');
        mm.put(2,'anjali');
        
        // get
        system.debug(mm.get(2));
        system.debug(mm.get(1));
        
        //clear
        //it clears a whole Map
        Map<integer,string> map2=new Map<integer,string>();
        mm.clear();
        
        //isempty
        system.debug(mm.isempty());
        
        //equal
        Map<integer,string> mm2=new Map<integer,string>();
        mm2.put(1,'santhosh');
        mm2.put(2,'anjali');
        mm.put(1,'santhosh');
        mm.put(2,'anjali');
        
        system.debug(mm.equals(mm2));
        
        //contains key
        
        system.debug(mm.containskey(1));
        
        //getsobjecttype
        
        Map<id,Account> aaa=new Map<id,Account>();
        system.debug(aaa.getSObjectType());
        
        //clone
        List<Account> lac=[select id,Name from Account];
        Map<Id,Account> clacc=new Map<Id,Account>(lac);
        Map<id,Account> clone1=clacc.clone();
        system.debug(clone1) ;
        
        //putall
        Map<integer,string> nnmap=new Map<integer,string>();
         nnmap.put(1,'daddy');
         nnmap.put(2,'mom');
        Map<integer,string> nnmap2=new Map<integer,string>();
        nnmap2.putAll(nnmap);
        system.debug(nnmap2);
        
        //remove
        //it removes certain key value
        List<Account> nn=[select id,Name from Account];
        Map<id,Account> bb=new Map<id,Account>(nn);
        system.debug(bb.size());
        bb.remove('0015i000004S4dPAAS');
        system.debug(bb.size());
        
        //get values
        Map<integer,string> nnn=new Map<integer,string>();
        nnn.put(1,'s');
        nnn.put(2,'a');
        nnn.put(3,'n');
        system.debug(nnn.values());
        
        //keyset
        //returns all the keys
        system.debug(nnn.keyset());
       
        //tostring
        Map<integer,string> cc=new Map<integer,string>();
        cc.put(1,'s');
        cc.put(2,'i');
        cc.put(3,'v');
        cc.put(4,'a');
        cc.put(5,'n');
        system.debug(cc.toString());
        
        //deepclone
        List<Account> acclist=[select id,Name from Account];
        Map<id,Account> mmap=new Map<id,Account>(acclist);
        Map<id,Account> mm3=mmap.deepclone();
        system.debug(mm3);
        
        //hashcode
        system.debug(mmap.hashcode());
        
    }
}