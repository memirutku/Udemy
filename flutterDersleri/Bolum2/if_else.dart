void main(List<String> args) {
  int sayi1 = 24;
  num sayi2 = 3;
  if (sayi1 > sayi2) {
    //if eğer demek direkt.
    print("$sayi1 $sayi2'den büyüktür.");
  } else if (sayi1 < sayi2) {
    print(" $sayi1 $sayi2'den küçüktür.");
  } else {
    print("$sayi1 $sayi2'ye eşittir.");
  }


//if else if ve else yapısı, koşullu ifadeleri kontrol etmek için kullanılır.
// Burada sayi1 ve sayi2 değişkenlerini karşılaştırıyoruz ve uygun mesajı yazdırıyoruz.
// Eğer sayi1 sayi2'den büyükse, ilk blok çalışır.
// Eğer sayi1 sayi2'den küçükse, ikinci blok çalışır.
// Eğer sayi1 ve sayi2 eşitse, son blok çalışır.

// burada && ve || operatörlerini kullanıyoruz
    // && operatörü, her iki koşulun da doğru olması gerektiğini belirtir
    // || operatörü, en az bir koşulun doğru olması gerektiğini belirtir
    //küçük eşittir <=
    //büyük eşittir >=
    //ilk önce küçük ve büyük operatörlerini kullanıyoruz
    //büyük >
    //küçük <
    //eşittir ==
    //eşit değildir !=
    //if içinde if de kullanılabiliyor.
if(sayi1 > 20 && sayi2 < 5) {
    print("Sayi1 20'den büyük ve Sayi2 5'ten küçüktür.");
  } else if (sayi1 < 20 || sayi2 > 5) {
    print("Sayi1 20'den küçük veya Sayi2 5'ten büyüktür.");
  } else {
    print("Hiçbir koşul sağlanmadı.");
  }
}
