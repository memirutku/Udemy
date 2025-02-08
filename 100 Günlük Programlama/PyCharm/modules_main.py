import modules_import as mod_imp # as onu o ad ile kullanmamızı sağlar.
# bu şekilde yazar isek de modulun içinde ki tüm fonksiyonları kullanabiliriz
mod_imp.example_func()

#direkt modulu import edebiliriz ya da modul içinden fonksiyon import edebiliriz
from modules_import import example_func

example_func() # fonksiyonu import edersek direkt o fonksiyonu adı ile çalıştırabiliriz.
# modulun içinde başka fonksiyon olsaydı onu çalıştıramazdık

#pypi.org dan bakabilirsin.