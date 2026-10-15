class Zadatak{

  final String naslov;
  final bool zavrsen;
 
  const Zadatak({
    required this.naslov,
    this.zavrsen = false,
  });  

  Zadatak kopiraj({String? naslov, bool? zavrsen}) =>
    Zadatak(naslov:naslov ?? this.naslov, zavrsen: zavrsen ?? this.zavrsen);

}
void main(){
  final zadaci = <Zadatak>[
  const Zadatak(naslov: 'Instalacija'),
  const Zadatak(naslov: 'Git', zavrsen: true),
  const Zadatak(naslov: 'Dart'),
];

final otvoreniZadaci = zadaci.where((z) => !z.zavrsen).toList();

otvoreniZadaci.forEach((z) => print(z.naslov));

final gotov = zadaci.first.kopiraj(zavrsen: true);
print('${gotov.naslov}: ${gotov.zavrsen}');
print('${zadaci.first.zavrsen}');



}