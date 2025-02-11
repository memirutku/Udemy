import pytube

url = input("enter video url: ")

path = "" # ("") dosyayı nereye çalıştırıyorsam oraya kaydeder.

pytube.YouTube(url).streams.get_highest_resolution().download(path)

# . lardan sonra tab a basarsan method isimleriyle ekstra şeyler ekleyebilirsin
# dökümantasyonu okumak önemli