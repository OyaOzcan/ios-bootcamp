import UIKit

//OPTİONAL - NULLABLE - NULL SAFETY

var mesaj:String?// ? koyunca null olabilir anlamına geliyor
mesaj = "hello"
if(mesaj != nil){
    print(mesaj!) // optional unwrap - var olan ifadeyi dısarı cıkarır mülakatta cıkabilir
} else{
    print("mesaj bos")
}

//aktarım kontrol edersek optional unwrap yapmama gerek kalmaz normale dönüşürüz bu optional binding oluyor 
if let temp = mesaj{
    print(temp)
} else { 
    print("mesaj yok")
}
