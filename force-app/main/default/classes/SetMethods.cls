public class SetMethods {
public static void Met()
{
//create set
Set<string> sstr=new Set<string>{'santhosh','vishnu'}; 
// add 
sstr.add('sandy');
    system.debug(sstr);
// remove
sstr.remove('sandy');
    integer siz=sstr.size();
    system.debug(siz);
//contains
system.debug(sstr.contains('sandy'));
//removeAll
    Set<string> sstr2=new Set<string>{'santhosh','birds'};
    sstr.removeAll(sstr2);
    integer siz1=sstr.size();
    integer siz2=sstr.size();
    system.assertEquals(1,siz2);
//retainall
    Set<string> sett1=new Set<string>{'lion','tiger','deer'};
    Set<string> sett2=new Set<string>{'lion','deer'};
        sett1.removeall(sett2);
    system.debug(sett1);
    sett1.remove('tiger');
    system.debug(sett1);
    sett1.add('lion');
    sett1.add('tiger');
    sett1.add('deer');
    sett1.retainall(sett2);
     system.debug(sett1);
//sobjecttype
set<string> acc=new set<string>();
    acc.addall(sett1);
    system.debug(acc);
//containsall
boolean bool=acc.containsall(sett1);
    system.debug(bool);
//isempty
    set<integer> intse=new set<integer>{1,2,3,4,5};
        boolean bool2=intse.isEmpty();
    system.assertequals(False,bool2);
//clone
    set<string> clse=new set<string>{'indru','netru','nalai'};
    set<string> clse2=clse.clone();
    system.debug(clse2);
//addall from set to list
List<string> lse=new List<string>();
    lse.addAll(acc);
    system.debug(clse);
//hash code
system.debug(clse.hashcode());
//
}   
}