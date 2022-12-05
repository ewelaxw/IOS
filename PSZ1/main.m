
//w Objective-C w odroznieniu od C uzywamy dyrektywy #import zaimast #include
#import <Foundation/Foundation.h>
#import "Klasa.h"

//z funkcja main jestesmy od dawna juz zaprzyjaznieni
int main (int argc, const char * argv[])
{
    NSLog (@"hello world");
    
    //wywolujemy metody alloc i init (odziedziczone po klasie NSObject)
    Klasa * obiekt= [[Klasa alloc] init];
    //metody alloc i init zwracaja obiekt klasy dla ktorej byly uruchomione
    //umozliwia to budowanie wiekszych wyrazen skladajacych sie z wiecej wywolan
    //czego raczej sie unika ze wzgledu na utrate przejrzystosci kodu

    //ustawianie wartosci pola liczba w obiekcie za pomoca wywolania nawiasami kwadratowymi
    [obiekt setLiczba:5];
    NSLog (@"Liczba w naszym obiekcie to %i", [obiekt liczba]);

    //w tym konkretnym przypadku, gdy utworzylismy domyslne funkcje dostepu do pol prywatnych klasy (settery i gettery)
    //mozna do tych pol odwolywac sie przez operator kropki
    obiekt.liczba=2;
    NSLog (@"Zmienilismy liczbe na %i", [obiekt liczba]);
	
    NSLog (@"wartoszzwrocona przez metode %i", [[Klasa class] metodaJakbyStatycznaZwracajacaLiczbeCalkowita]);
    
    [obiekt metodaZJednymParametrem:@"parametr"];
    return 0;
}

//Opracowal Marcin Kozniewski na potrzeby zajec na Wydziale Informatyki Politechniki Bialostockiej
