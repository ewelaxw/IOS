//Plik treningowy zawierajacy interfejs klasy Klasa

//Tak wyglada komentarz

//Na poczatku musimy dodac import naszego pliku - wiemy wtedy, ze definiujemy interfejs klasy
#import "Klasa.h"
#import <Foundation/Foundation.h>

//Zacznijmy definicje naszego interfejsu klasy
//pierwsza linia zawiera dyrektywe @interface 
//potem nazwe klasy 
//i po dwukropku nazwe klasy po ktorej dziedziczy
@interface Klasa : NSObject {

//dodajemy jako jedno z pol uchwyt do napisu (NSString)
@private NSString *jakisNapis;
//oraz liczbe calkowita
@private  int liczba;


} //UWAGA! Ten nawias nie konczy definicji interfejsu! Konczy natomiast definiowanie pol

//teraz deklarujemy dla ktorych pol w naszej klasie bedziemy chcieli wygenerowac gettery i settery
@property(assign) int liczba; //parametr assign uzywamy w przypadku typów podstawowych
@property(retain) NSString * jakisNapis; //parametr retain uzywamy w przypadku obiektow Objective-C
//parametry przekazywane do @property wymagaja dokladniejszego przestudiowania
//na ta chwile wystarczy to co powyzej


//po zdefiniowaniu pol (properties) mozemy dodac jakies metody

// najpierw stawiamy minus jesli chcemy, zeby metoda byla wykonywalna tylko na obiekcie definiowanej klasy
// nastepnie podajemy w nawiasie zwracany typ (w tym wypadku void - nic)
// podajemy nazwe metody i ewentualne parametry (tutaj mamy do czynienia z metoda bezparametrow)
- (void)metodaBezParametrow;

//jesli na poczatku jest + znaczy ze mamy metode, ktora da sie wywolac na obiekcie klasy 
// Tak! W Objective-C klasa tez jest obiektem
+ (int)metodaJakbyStatycznaZwracajacaLiczbeCalkowita;

//metoda z parametrem
//parametr podajemy po dwukropku
//najpierw w nawiasie typ (w tym przypadku uchwyt do napisu)
//i nazwa parametru
- (void)metodaZJednymParametrem:(NSString *)napis;

//jesli chcemy dodac kolejne parametry to zaczyna byc ciekawie
//Objective-C pozwala na dodanie do kazdego nastepnego parametru dodatkowego opisu niezaleznie od nazwy parametru
//przy wywolywaniu takiej metody mozemy otrzymac skladnie, ktora jest blizsza jezykowi naturalnemu
//przekonamy sie o tym gdy zajrzymy do implementacji klasy
- (void)metodaZParmetremPierwszym:(int)param1 iParametremDrugim:(int)param2;

//na poczatek tyle metod powinno wystarczyc

//dopiero dyrektywa @end konczy definicje interfejsu
@end


//Opracowal Marcin Kozniewski na potrzeby zajec na Wydziale Informatyki Politechniki Bialostockiej
