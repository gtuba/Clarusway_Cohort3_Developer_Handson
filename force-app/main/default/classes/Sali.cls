public class Sali {
    public string TekCift(integer a){
        integer sonuc=math.mod(a,2);
        if(sonuc==0){
            return 'cift';    
        }else{
            return 'tek';
        }
    }
    public void Metin(string m){
        system.debug(m);
    }
    public static void loopKontrol(){
        list<string> b= new list<string>{'Ali','Veli','Jale','Hale'};
            for(integer i=0;i<b.size();i++){
                if(b.get(i)=='Jale'){
                    continue;
                }
                system.debug(b.get(i));
            }
    }
    public void Kayit(integer n, string name,string b){
        Map<integer, string> Doktor1 = new Map <integer,string>();
        Map<integer, string> Doktor2 = new Map <integer,string>();
        if(b=='Genel Dahiliye'){
            Doktor1.put(n,name);
            system.debug('Doktor Ismail: '+Doktor1);
            
        }else if(b=='Genel Cerrahi'){
            Doktor2.put(n,name);
            system.debug('Dr. Feride: '+Doktor2);
            
        }else{
            system.debug('Hastanemizde aradiginiz birim bulunmamaktadir.');
        }
    }
}