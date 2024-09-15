import UIKit

class Urunler {
    var id:Int?
    var ad:String?
    var fiyat:Int?
     
     
     init (){
       print("nesne olusturuldu")
    } 
     //consturctor -- mülakatta cıkar
    
    init(id:Int, ad:String, fiyat:Int){
        self.id = id
        self.ad = ad
        self.fiyat = fiyat
        //shadowing denir mülakatta cıkar, bunu this.fiyat şeklinde de yapabiliriz
    }
    func bilgiAl(){
        print("----------------------")
        print("id : \(id!)")
        print("esya : \(ad!)")
        print("fiyat : \(fiyat!)₺")
    }
    
    func guncelle(miktar:Int){ // side effect deniyor fonk kullanıyoruz fonk değişkenin içeriğini değiştiriyor
        fiyat = miktar
    }
    }
//self  : bulundugu sınıfı temsil eder
//super : kalıtım varsa üst sınıfı temsil eder
let urun1 = Urunler()
// nesne olusturma
urun1.id = 1
urun1.ad = "Televizyon"
urun1.fiyat = 12000
urun1.guncelle(miktar: 20000)
print("----------------------")
print("id : \(urun1.id!)")
print("esya : \(urun1.ad!)")
print("fiyat : \(urun1.fiyat!)₺")

let urun2 = Urunler()
urun2.id = 2
urun2.ad = "saat"
urun2.fiyat = 5000
urun2.bilgiAl()

let urun3 = Urunler(id:3, ad: "BİLGİSAYAR", fiyat :20000)
urun3.bilgiAl()


//fonksiyonlar
//void : geri dönüş değeri olmayan
//return : geri dönüş değeri olan
class Fonksiyonlar {
    func selamla1(){
        print("Merhabaaaaaaaaaa Ahmetttttttttttttttttt")
    }
    
    
    func selamla2() -> String {
        let sonuc = "merhabaaa"
        return sonuc
    }
    func topla(sayi1:Int, sayi2:Int){
        var sonuc = sayi1 + sayi2
        print("toplam: \(sonuc)")
    }
    func topla(sayi1:Double, sayi2:Double){
        var sonuc = sayi1 + sayi2
        print("toplam: \(sonuc)")
    }
    func topla(sayi1:Int, sayi2:Int, isim:String){
        var sonuc = sayi1 + sayi2
        print("toplam: \(sonuc) - İşlem Yapan : \(isim)")
    }
}



let f = Fonksiyonlar()
f.selamla1()
print(f.selamla2())
let gelenSonuc = f.selamla2()
print(gelenSonuc)
f.topla(sayi1: 10, sayi2: 20)
f.topla(sayi1: 25, sayi2: 25, isim: "oya")

//static kullanımı = kotlin de companion object olarak geçer
/*
class ClassA {
    static var x = 10
    
    static func metod()
    {
            
    }
}
let a = ClassA()

//sanal nesne, virtual object, nameless



*/

enum Boyut {
        case kucuk
        case orta
        case buyuk
}

func ucret(adet:Int,boyut:Boyut){
    switch boyut {
    case .kucuk: print("ücret: \(adet*456)")
    case .orta: print("ücret: \(adet*679)")
    case .buyuk: print("ücret: \(adet*987)")
    }
    
}

ucret(adet: 200, boyut: .orta)


//KALITIM - INHERİTANCE - MİRAS
//kalıtımda genelde fonksiyon aktarımı olur

class Ev{
    var pencereSayisi:Int?
    init(pencereSayisi: Int) {
        self.pencereSayisi = pencereSayisi
    }
}
class Saray:Ev{
    init(kuleSayisi: Int, pencereSayisi:Int) {
        self.kuleSayisi = kuleSayisi
        super.init(pencereSayisi: pencereSayisi)
    }
    var kuleSayisi:Int?
}
class Villa:Ev{
    init(garajVarMi: Bool, pencereSayisi:Int) {
        self.garajVarMi = garajVarMi
        super.init(pencereSayisi: pencereSayisi)
    }
    var garajVarMi:Bool?
}

//override

class Hayvan{
    func sesCikar(){
        print("sesim yok")
    }
    
}
class Memeli: Hayvan{
    
}
class Kedi: Memeli{
    override func sesCikar() {
        print("miyavvvvv")
    }
}
//hayvan memeliye özellik aktarır memeli kedi ve köpeğe, memeli o özelliği kullanamsa dahi erişebilir
class Kopek:Memeli{
    override func sesCikar() {
        print("hav haavvv")
    }
}

let hayvan = Hayvan()
let memeli = Memeli()
let kedi = Kedi()
let kopek = Kopek()

hayvan.sesCikar() // kalıtım yok kendi methoduna erişiyor
memeli.sesCikar() //kendisinde yoksa üst classa erişiyor , kalıtım var
kedi.sesCikar()  // kalıtım var, kendi methoduna erişiyor
kopek.sesCikar() // kalıtım var, kendi methoduna erişiyor
//DOWNCASTİNG - UPCASTİNG
//as? ile dönüşüm yaparsak nullable tanımlamalıyız ama nullsa çökmez as! koyarsak null olursa çöker ve unwrap yapmıs oluruz


//PROTOCOL - interface
//birden fazla eklenebilir, hem class hem structure da olabilir, özellik aktarma yada 2 class arasında iletişim
//İnterface de method ve değişkenleri eklemek zorundayız, değişkene değer atamazsak nullable tanımlamalıyız

protocol MyProtocol{
    var degisken:Int {get set} // set değişkene değer atma , get değer okuma
    
    func metod()
    func metod2() -> String
}

class MyClass: MyProtocol{
    var degisken: Int = 10
    func metod() {
        print("metod")
    }
    func metod2() -> String {
        return "method2"
    }
}



//CLOSURE
let ifade =  {
    print("merhaba")
}

ifade()
