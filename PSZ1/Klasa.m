//Plik treningowy zawierajacy implementacje klasy Klasa

//Na poczatku importujemy nasz naglowek
#import "Klasa.h"

//sama implementacja zaczyna sie dosc intuicyjnie
@implementation Klasa  

// @property NSString *jakisNapis;
// @property int liczba;

//automatycznie generujemy settery i gettery  (e.g. (void)setLiczba:(int) oraz (int)liczba)

@synthesize liczba;
@synthesize jakisNapis;

// zeby zdefiniowac metode dodajemy do naglowka nawiasy { ... } z definicja

- (void)metodaBezParametrow {
   //zeby wypisac cos na konsole mozemy uzyc funkcji do wysylania logow
   NSLog(@"Jakis komunikat w logach!");
   //przez dodanie symbolu @ obok lancuch sprawiamy ze podany lancuch znakow jest obiektem klasy NSString
}

+ (int)metodaJakbyStatycznaZwracajacaLiczbeCalkowita {
   NSLog(@"Metoda wywolana na klasie");
   return 6;
}

- (void)metodaZJednymParametrem:(NSString *)napis {
   NSLog(@"Napis: %@", napis);
   //Aby wywolac inna metode uzywamy operatora [ ] na tym samym obiekcie (self)
   // dokonujemy tego przez podanie self (obiektu) i nazwy metody
   [self metodaBezParametrow];
   //natomiat wywolanie metody z dwoma parametrami wyglada nastepujaco
   [self metodaZParmetremPierwszym:2 iParametremDrugim:3];   
   //prosze zwrocic uwage na wykorzystanie opisowych identyfikatorow 
}

- (void)metodaZParmetremPierwszym:(int)param1 iParametremDrugim:(int)param2 {
   int a=param1+param2;
   NSLog(@"wywolanie metody z dwoma parametrami");
}

//tutaj rowniez dyrektywa @end konczy implementacje
@end


//Opracowal Marcin Kozniewski na potrzeby zajec na Wydziale Informatyki Politechniki Bialostockiej
