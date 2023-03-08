public class MathC {
    public static integer KareAlan(integer a){ //1.soru
    return a*a;
       
}//2. soru
    public static void Denklem(integer x){
        integer y= 2*x+5;
        system.debug('sonuc' +y);/*voidde sonuc gormek icin buraya system.debug yaziyoruz.
                                    yazmasak da kod calisiyor ama gormek icin yziyoruz.*/
    }
    

    public static integer Bul(integer f){//3.soru
        integer faktoriyel =1;
        for(integer i= 1; i<=f; i++){
			faktoriyel= faktoriyel*i;
        }//for bitis
        return faktoriyel;
    }
    public static void Metin(string c){//4. soru
        system.debug('Hello' + ' '+ c);
           
    }
    public static void UcgenAlan(decimal t, decimal h){//5.soru
        decimal alan= (t*h)/2;
        system.debug(alan);
        
    }
    public static integer MinBul(integer b,integer k, integer d){
        if(b<k && b<d){
            return b;
        }else if(k<b && k<d){
            return k;
        }else{
            return d;
        }
    }

}