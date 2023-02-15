public class NestedMap {

    public static void Main()
    {
       
        //map inside map
        
        Map<integer,Map<integer,string>>  map1=new  Map<integer,Map<integer,string>>();
        
        Map<integer,string> insidemap=new Map<integer,string>();
        insidemap.put(1,'santhosh');
        insidemap.put(2,'yogesh');
        insidemap.put(3,'kkn');
        insidemap.put(4,'svmhss');
        map1.put(1,insidemap);
        system.debug(map1);
        
        //map-map-map
        
        Map<integer,Map<integer,Map<integer,string>>> map2=new Map<integer,Map<integer,Map<integer,string>>>();
        Map<integer,Map<integer,string>> inside1=new  Map<integer,Map<integer,string>>();
        Map<integer,string> inside2=new Map<integer,string>();
        
        //third Map
        inside2.put(1,'suvisesh');
        inside2.put(2,'sharmila');
        inside2.put(3,'shanthanu');
        
        //second Map
        inside1.put(1,inside2);
        inside1.put(2,inside2);
        map2.put(1,inside1);
        map2.put(2,inside1);
        system.debug(map2);
        
        //List inside Maps
        
        
        Map<integer,List<Account>> Maplist=new Map<integer,List<Account>>();
        List<Account> acc=[select id,Name from Account];
        Maplist.put(1,acc);
        Maplist.put(2,acc);
        system.debug(Maplist);
        
        //Map-Map-list
        
        Map<integer,Map<integer,Map<integer,List<Account>>>> nn=new  Map<integer,Map<integer,Map<integer,List<Account>>>>();
        List<Account> list1=[select id,Name from Account];
        Map<integer,List<Account>> in3=new  Map<integer,List<Account>>();
        in3.put(1,list1);
        Map<integer,Map<integer,List<Account>>> in2=new Map<integer,Map<integer,List<Account>>>();
        in2.put(1,in3);
        nn.put(1,in2);
        system.debug(nn);
        
        //Methods
        
        Map<id,List<Account>> maplist2=new Map<id,List<Account>>();
        List<Account> aclist=[select id,Name from Account];
        for(Account accc:aclist)
        {
            maplist2.put(accc.id,aclist);
            system.debug(maplist2);//List<Account>{accc}
        }
        for(Account a:aclist)
        {
            system.debug(maplist2.get(a.id));
        }
        
        list<map<integer,String>> Check = new list<map<integer,String>>();
       
        Map<String, List<Account>> mainmap = new Map<String, List<Account>>();
    
        List<Account> listAccount = [select Id,Name from Account];
        for(Account accc:listAccount)
        {
                if(!mainmap.containsKey(accc.Name))
                {
                    mainmap.put(accc.Name,new list<Account>{accc});
                }
                else
                {
                     list<Account> aacc = mainmap.get(accc.Name);
                     aacc.add(accc);
                     mainmap.put(accc.Name,aacc);
                }
               
        }
        system.debug(mainmap);
        Map<integer, String> map12 = new Map<integer, String>();
        map12.put(5,'santhosh');
        map12.put(10,'yogesh');
        map12.put(15,'venkat');
        map12.put(20,'chandhru');
        Check.add(map12);
        System.debug(Check);
        }
    }