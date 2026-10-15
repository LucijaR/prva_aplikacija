# Flutter Vježba 1

## Informacije o okruženju
* **Ime i prezime:** Lucija Rašić
* **Operacijski sustav:** Windows 10
* **Verzija Fluttera:**  3.47.7
* **Verzija Darta:** 3.13.5
* **Korišteni uređaj:** Windows (desktop) / Chrome


### Provjera razumijevanja 1
* **Zašto skup `oznake` sadrži dva elementa?** 
  Skup (`Set`) u Dartu ne dozvoljava dupliciranje vrijednosti. Budući da su u inicijalnom kodu definirane dvije oznake s vrijednošću `'novo'` i jedna s `'vjezba'`, duplikat se automatski uklanja te skup sadrži samo jedinstvene vrijednosti: `'novo'` i `'vjezba'` (ukupno 2 elementa).
* **Zašto dohvat za Miju u početnom primjeru daje zamjensku nulu?** 
  U početnom primjeru ključ `'Mia'` nije postojao u mapi `bodovi` (postojali su samo Ana i Ivan), pa je izraz `bodovi['Mia']` vraćao `null`. Operator `?? 0` služi za provjeru null vrijednosti te u slučaju da ključ ne postoji, vraća zamjensku vrijednost `0`.

### Provjera razumijevanja 2
* **Zašto je u konstruktoru `naslov` označen s `required`, a `zavrsen` ima zadanu vrijednost?**
  `naslov` je obavezan parametar (`required`) jer svaki zadatak mora imati svoj naziv da bi imao smisla. `zavrsen` ima zadanu (defaultnu) vrijednost `false` jer se pri stvaranju novog zadatka podrazumijeva da on još nije završen, čime se olakšava pisanje koda jer ne moramo svaki put ručno pisati `zavrsen: false`.
* **Što bi se dogodilo da zadatak stvorimo bez naslova?**
  Kod se ne bi mogao kompajlirati (Dart bi javio pogrešku) jer je ključna riječ `required` obvezna i prevoditelj traži da se taj argument obavezno proslijedi.