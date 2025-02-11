from pdf2docx import Converter
# pdf i word e çeviriyor.

pdf_path = "sample.pdf"
docx_file = "sample.docx" #docx word dosyasının uzantısı

cv = Converter(pdf_file=pdf_path) # pdf_file converter methoduna girilmesi gereken değer adı 'pdf_file=pdf_path' bu şekilde belirterek
#pdf_file değerinin pdf path olduğunu belirtiyoruz okunması için pozitif etkisi var. Converter(pdf_path) yazsak da sıkıntı olmayacaktı.
# ama diyelim birden fazla değer girmemiz lazım. methodda değer sırası olarak değerleri sırayla girmemiz lazım
# ama Converter(pdf_file=pdf_path) şeklinde yaparsak birden fazla değer girsek bile (birbirinden farklı değerlere atanmak koşuluyla)
# belirtiğimiz sürece sıraya önem vermemize gerek yok.
cv.convert(docx_filename=docx_file)
cv.close()