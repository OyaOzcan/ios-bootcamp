import UIKit

//if yapısı
var yas = 19
var isim = "ahmet"
var yas2 = 17
var isim2 = "mehmet"

if yas  >= 18
{
        print("reşit")
}
else
{
    print ("reşit değil")
}

if yas2  >= 18
{
        print("reşit")
}
else
{
    print ("reşit değil")
}

if isim == "ahmet"{
    print("Merhaba ahmet")
}
else {
    print("merhaba x")
}

if isim2 == "ahmet"{
    print("Merhaba ahmet")
}
else {
    print("merhaba x")
}

var ka = "admin"
var s = 123456

if ka == "admin" && s == 123456 { // ture && true sadece true döner diğer türlü false mülakatta cıakr
    print("hosgeldiniz")
} else {
    print("hatalı")
}

var numara = 100
if numara == 100 || numara == 200 { // false && false sadece false döner diğer türlü true mülakatta cıakr
        print("numara 100 yada 200")
} else {
    print("baska numara")
}

//switch - when
var sonuc = 2
switch sonuc {
case 1:print("sonuc : 1")
case 2:print("sonuc : 2")
case 3:print("sonuc : 3")
default: print("sonuc yok")
}

//döngüler
for x in 1...3 {
    print("ilk döngü")
    print(x)
}

for y in stride(from: 10, through: 20, by: 5) {
    print("diğer döngü :  \(y)")
    
}

for z in stride(from: 20, through: 10, by: -5) {
    print("azalan döngü :  \(z)")
}

var sayac = 1
while sayac < 4 {
    print(sayac)
    sayac += 1
}

for x in 1...5 {
    if x == 3
    {
        break
    }
    print("döngü \(x)")
}

for x in 1...5 {
    if x == 3
    {
        continue
    }
    print("döngü \(x)")
}
