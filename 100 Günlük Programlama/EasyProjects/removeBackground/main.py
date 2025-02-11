from rembg import remove
#cv2.cvtColor ye de bakılabilir özellikle görsel işleme konusunda
input_path = "image.jpeg" #başka yerde olursa tam konumunu yazmak lazım
output_path = "output.png" #dökümantasyona baktığımızda çıktıyı png olarak verin demiş
#uzantısını png yaptık o yüzden

with open(input_path, 'rb') as i: # 'rb' read binary olarak açıyor demek 0,1 gibi şeyleri okuyarak dosya olarak açıyor
    with open(output_path, 'wb') as o: # 'wb' write binary olarak yazıyor demek 0,1 gibi şeyleri okuyarak dosya olarak yazıyor
        input = i.read()
        output = remove(input) # rembg nin methodu
        o.write(output)