public class setandlist {

public static void Met()
{
    //creating and initializing Lists
    
//creating List
List<integer> ll=new List<integer>();
    
//nested List
//2d list
List<List<integer>> llist=new  List<List<integer>>();
    List<integer> l1=new List<integer>{1,2,3};
    List<integer> l2=new List<integer>{4,5,6};
    List<integer> l3=new List<integer>{7,8,9};
    
    llist.add(l1);
    llist.add(l2);
    llist.add(l3);
    system.debug(llist);
//another method
List<List<string>> lstring=new List<list<string>>{
      
        new List<string>{'s','a','n'},
        new List<string>{'t','h','o'},
        new List<string>{'s','h','h'}                  
    };
        system.debug(lstring);
//store in one list
List<List<integer>> llist1=new  List<List<integer>>();
    List<integer> l11=new List<integer>{10,11,12};
    llist1.add(l11);
    l11=new List<integer>{13,14,15};
    llist1.add(l11);
    l11=new List<integer>{16,17,18};
    llist1.add(l11);
    system.debug(llist1);
    system.debug(llist1[0][1]);
    
//3d List
    List<List<List<integer>>> lllist1=new List<List<List<integer>>>{
        new List<List<integer>>{new List<integer>{1,2,3},new List<integer>{4,5,6},new List<integer>{7,8,9}},
        new List<List<integer>>{new List<integer>{11,12,13},new List<integer>{14,15,16},new List<integer>{17,18,19}},
        new List<List<integer>>{new List<integer>{21,22,23},new List<integer>{24,25,26},new List<integer>{27,28,29}}
    };
        system.debug(lllist1);
        system.debug(lllist1[0][0][0]);
         system.debug(lllist1[1][0][0]);
//nested set

List<set<string>> lset=new List<set<string>>{new set<string>{'indru','netru','nalai'},new set<string>{'1','2','3'},new set<string>{'4','5','6'}};
system.debug(lset[0]); 
}
}