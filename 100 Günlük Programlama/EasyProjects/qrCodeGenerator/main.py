import pyqrcode

url = input("enter url to generate qr code: ")

qr_code = pyqrcode.create(url)
qr_code.svg('qrcode.svg',scale=5) # farklı farklı uzantı vererek oluşturabiliriz.
# . dan sonra tab basarak deneme yanılma ile de yapabiliriz.