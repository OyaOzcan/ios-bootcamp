import UIKit

var ogrenciAdi = "Oya Selmin"
var ogrenciYas = 23
var ogrenciBoy = 1.78
var ogrenciBasharf = "A"
var ogrenciDevamDurumu = true

print("ogrenci ad       : \(ogrenciAdi)")
print("ogrenci yaşı     : \(ogrenciYas)")
print("boyu             : \(ogrenciBoy)")
print("ogrenci bas harfi: \(ogrenciBasharf)")
print("devam durumu     : \(ogrenciDevamDurumu)")

//SABİTLER - Constant
var sayi = 100
print(sayi)
sayi = 300
print(sayi)
// var yazarsam değeri değişebilir

let number = 50
print(number)
//number = 20 vermek istersem değeri atayamayız cunku sabit değer ataması yaptık, değiştirelemez , sadece numarayı kullanacaksam bunu kullanırım , performansa katkısı var sayı değişebilen değer esnek değer atarsak işlem gücünü attırır, numarayı sabitlersek ayrılacak olan belli o yüzden performans arttırıyor

// TÜR DÖNÜŞÜMÜ - TYPE CASTİNG
// sayisal -> sayisal
var i = 42
var d = 37.93
print("ilk i: \(i)")
print("ilk d: \(d)")
var sonuc1 = Double(i)
var sonuc2 = Int(d)
print("son i: \(sonuc1)")
print("son d: \(sonuc2)")


// sayisal -> metin
var sonuc3 = String(d)  //"37.93"
print(sonuc3)

// metin -> sayisal
var text = "57" // kullanıcı yanlıs girerse hata veriyor orn "57t"
if let sonuc4 = Int(text){
    print(sonuc4)
}
else
{
    print("dönüşümde hata")
}

//TUPLES
var kisi = ("ahmet", "aksoy",30, false)
print(kisi.0)
print(kisi.1)
print(kisi.2)
print(kisi.3)



