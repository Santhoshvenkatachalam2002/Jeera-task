public class mapownmethods {

    public static void Met(List<Account> met)
    {
       list<map<integer,String>> Check = new list<map<integer,String>>();  
        Map<String, List<Account>> mainmap = new Map<String, List<Account>>();
        for(Account accc:met)
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
        Map<integer,String> clonemap=map12.clone();
        if(!(clonemap.isempty()))
        Check.add(clonemap);
        System.debug(Check);
        system.debug(clonemap.keyset());
        system.debug(clonemap.values());
        }
    }