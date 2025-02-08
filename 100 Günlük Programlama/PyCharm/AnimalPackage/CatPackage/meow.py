def speak_direct():
    print("meow directed")

def speak_imported():
    print("meow imported")

def test():
    print("test test")

if __name__ == '__main__':# eğer mainde isek speakı yap
# main de ana dosyanın kendisi (çağırıldıği yer)
    speak_direct() #sadece mainde çalıştılacak kod yazılmasını istediğimizde
#bunu koyup sadece mainde çalıştırabiliriz
else: #import edildiğinde bir şey yapmak istiyor isek if __name__ == '__main__': else: kısmına yazmalıyız yapmayı istediğimiz şeyi
    speak_imported()