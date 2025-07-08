//1

var ad = "Mustafa";
var soyad = "Emir";
var yas = 24;

var kenar1 = 3;
var kenar2 = 4;
var kenar3 = 5;
void main(List<String> args) {
  print(
    "Benim adım $ad $soyad ve yaşım $yas ve tüm ismimdeki karakter sayısı ${ad.length + soyad.length}",
  ); // burada ad ve soyad değişkenlerinin uzunluklarını topluyoruz

  print(
    "Benim adım $ad $soyad ve yaşım $yas ve tüm ismimdeki karakter sayısı ${(ad + soyad).length}",
  ); // burada birleştirme işlemi yapıyoruz ve sonra length ile karakter sayısını alıyoruz

  print(
    "Birinci kenar $kenar1, İkinci kenar $kenar2 ve Üçüncü kenar $kenar3 olan üçgenin çevresi ${kenar1 + kenar2 + kenar3} birimdir.",
  );
}
