

void main(List<String> args) {
List<int> sayilar = [1, 2, 3, 4, 5];

//Sabit uzunluklu listelerde çalışmaz.
print(sayilar.first);// Listenin ilk elemanını alır

print(sayilar.last);// Listenin son elemanını alır

print(sayilar.length);// Liste uzunluğu

print(sayilar.isEmpty);// Liste boş mu?

print(sayilar.isNotEmpty);// Liste boş mu değil mi?

print(sayilar.reversed.toList());// Listeyi ters çevirir ve listeye atar

print(sayilar.reversed);// Listeyi ters çevirir ama listeye atamaz

print(sayilar.indexOf(3)); // 3 elemanının indexini alır

print(sayilar.indexOf(6)); // 6 elemanı listede yoksa -1 döner

print(sayilar.indexWhere((eleman) => eleman > 3)); // 3'ten büyük ilk elemanın indexini alır

print(sayilar.contains(3)); // Liste 3 elemanını içeriyor mu?

print(sayilar.elementAt(2)); // 2. indexteki elemanı alır

print(sayilar.sublist(1, 4)); // 1. indexten 4. indexe kadar olan elemanları alır (4. index dahil değil)

print(sayilar.sublist(1)); // 1. indexten sonuna kadar olan elemanları alır

print(sayilar.getRange(1, 4).toList()); // 1. indexten 4. indexe kadar olan elemanları alır (4. index dahil değil) ve listeye atar

print(sayilar.getRange(1, 4)); // 1. indexten 4. indexe kadar olan elemanları alır (4. index dahil değil) ama listeye atamaz

sayilar.add(6); // Listeye 6 elemanını ekler
sayilar.addAll([7, 8, 9]); // Listeye birden fazla eleman ekler
print(sayilar); // [1, 2, 3, 4, 5, 6, 7, 8, 9]

sayilar.insert(0, 0); // 0 elemanını listenin başına ekler
print(sayilar); // [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

sayilar.insertAll(5, [10, 11]); // 5. indexe 10 ve 11 elemanlarını ekler
print(sayilar); // [0, 1, 2, 3, 4, 10, 11, 5, 6, 7, 8, 9]

sayilar.remove(3); // 3 elemanını listeden siler ilk bulduğunu siler hepsini değil
print(sayilar); // [0, 1, 2, 4, 10, 11, 5, 6, 7, 8, 9]

sayilar.removeAt(0); // 0. indexteki elemanı siler
print(sayilar); // [1, 2, 4, 10, 11, 5, 6, 7, 8, 9]

sayilar.removeWhere((eleman) => eleman > 5); // 5'ten büyük elemanları siler
print(sayilar); // [1, 2, 4, 5]

sayilar.clear(); // Listeyi temizler
print(sayilar); // []

sayilar.shuffle(); // Listeyi karıştırır
print(sayilar); // [4, 2, 1, 5] (örnek çıktı)

//sayilar. yazdıktan sor intellisense ile tüm metotları görebilirsiniz.
}