import UIKit

//array, set, dictionary
//mülakatta sorulur set , array farkı sette ilk eklediğiniz sırayla eklemiyor array da eklediğimiz sırayla ekler
//sette aynı seyden iki tane eklenmez arrayda eklenir
//sette değerler karıstırılır quiz uyguaması yada spotifydaki gibi şarkılrı karıştırma için
//dictionary arrayde yer değiştiremediğimiz ve int dısı bişey kullanamadıgımız icin key value
//mülakatta gelir dictionary webdeki json benzer

var sayilar = [Int()]
var meyveler = [String()]
meyveler.append("elma")
meyveler.append("kiraz")
meyveler.append("muz")
meyveler.append("vişne")
print(meyveler)
print(meyveler[2])
meyveler[0] = "armut"
print(meyveler)
meyveler.insert("portakal", at: 3) // istediğimiz yere ekler ve diğerini silme sadece kaydırma yapar
print(meyveler)
print(meyveler.count)
print(meyveler.contains("elma"))
meyveler.reverse()
print(meyveler)
meyveler.sort()
print(meyveler)
//nesne tabanlı
class Yemekler{
    var id:Int?
    var ad:String?
    var fiyat:Int?
    
    init(id:Int, ad:String, fiyat:Int) {
        self.id = id
        self.ad = ad
        self.fiyat = fiyat
    }
}
let y1 = Yemekler(id: 1, ad: "makarna", fiyat: 200)
let y2 = Yemekler(id: 2, ad: "pilav", fiyat: 60)
let y3 = Yemekler(id: 3, ad: "kavurma", fiyat: 300)

var yemeklerListesi =  [Yemekler]()
yemeklerListesi.append(y1)
yemeklerListesi.append(y2)
yemeklerListesi.append(y3)

for yemek in yemeklerListesi {
    print("-------------")
    print("Id: \(yemek.id)")
    print("ad: \(yemek.ad)")
    print("fiyat: \(yemek.fiyat)")
}

//sıralama - sort
print("fiyata göre artan")
let siralama1 =  yemeklerListesi.sorted(by: { $0.fiyat! > $1.fiyat!})
for yemek in siralama1 {
    print("--------------")
    print("id: \(yemek.id!)")
    print("id: \(yemek.ad!)")
    print("id: \(yemek.fiyat!)")
}
print("fiyata göre azalan")
let siralama2 =  yemeklerListesi.sorted(by: { $0.fiyat! < $1.fiyat!})
for yemek in siralama2 {
    print("--------------")
    print("id: \(yemek.id!)")
    print("id: \(yemek.ad!)")
    print("id: \(yemek.fiyat!)")
}

//filtreleme
let filtreleme1 = yemeklerListesi.filter({$0.fiyat! > 100 && $0.fiyat! < 250})
print("filtrele")
for yemek in filtreleme1 {
    print("--------------")
    print("id: \(yemek.id!)")
    print("id: \(yemek.ad!)")
    print("id: \(yemek.fiyat!)")
}

let filtreleme2 = yemeklerListesi.filter({$0.ad!.contains("avu") })
print("filtrele")
for yemek in filtreleme2 {
    print("--------------")
    print("id: \(yemek.id!)")
    print("id: \(yemek.ad!)")
    print("id: \(yemek.fiyat!)")
}

// set - hashset
var sayilar2 = Set<Int>()

var meyveler2 = Set<String>()
meyveler2.insert("kiraz")
meyveler2.insert("elma")
meyveler2.insert("muz")
meyveler2.insert("portakal")
meyveler2.insert("kivi")
print(meyveler2)
meyveler2.insert("kivi") // bi kere eklediğimiz için bir daha ekleyemeyiz
print(meyveler2.count)
for (index,meyve) in meyveler2.enumerated(){
    print(meyve, index)
}
//dictionary - map - hashmap

var d1 =  [Int:String]()
var d2 = ["ad" : "Ahmet", "soyad" : "Aksoy"]
// web servisle calısırken veriyi gönderirken kullnıyoruz genellikle, firebase firestoreda da
var iller = [Int: String]()

iller[16] = "BURSA"
iller[34] = "İSTANBUL"
iller[6] = "ANKARA"
print(iller) // key tabanlı oldugu için sıralama random görülebilir

for (anahtar, deger) in iller {
    print(anahtar, deger)
}
 
// GUARD - if tersi, false durumunda calısan bir yapı
func Selamla1(ad:String){
    if ad == "Ahmet" {
        print("merhaba ahmet")
    } else {
        print("tanınmayan kişi")
    }
}
func Selamla2(ad:String){
    guard ad == "Ahmet" else {
        print("tanınmayan kişi")
        return
    }
}
Selamla1(ad: "Ahmet")
Selamla2(ad: "mehmet")
func buyukHarf(yazi:String?){
    if let temp = yazi {
        print("sonuc: \(temp.uppercased())")
    }
    else {
        print("içerik boş")
    }
}
func buyukHarf2(yazi:String?){
    guard let temp = yazi
    else {
        print("içerik boş")
        return
    }
    print("sonuc: \(temp.uppercased())")
}
buyukHarf(yazi: "oya")
buyukHarf2(yazi: nil)

// try - catch
//mülakatta cıkabilir
// compile error - yazım hataları
//let x = 10
//x = 20 dersek hata alırız genelde syntax hataları
//runtime error ( exception)
// let s1 = 10
// let s2 = 0
//print(s1 / s2) bu durumda hata verir 0'a böldüğümüzde sonsuz değer cıkacagı icin
enum Hata : Error {
    case sifiraBolunme
}

func Bolme(s1:Int, s2:Int) throws -> Int {
    if s2 == 0 {
        throw Hata.sifiraBolunme
    }
    return s1 / s2
}

let s1 = 10
let s2 = 0
do{
    let sonuc = try Bolme(s1: 10, s2: 0)
    print(sonuc)
} catch {
    print("sıfıra bölünme hatası ")
    
}

let sonuc2 = try? Bolme(s1: 10, s2: 5)
print(sonuc2!)
