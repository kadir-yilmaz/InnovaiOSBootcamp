import UIKit

// soru 1

func icAciToplami(kenarSayisi: Int) -> Int {
    return (kenarSayisi - 2) * 180
}

let sonuc = icAciToplami(kenarSayisi: 4)
print(sonuc)

// soru 2

func maasHesapla(gunSayisi: Int) -> Int {
    var toplamSaat = 8 * gunSayisi
    var maas = 0
    if toplamSaat <= 160 {
        maas = toplamSaat * 10
    }
    else {
        maas = (toplamSaat - 160) * 20 + 1600
    }
    return maas
}

let sonuc2 = maasHesapla(gunSayisi: 21)
print(sonuc2)

// soru 3

func internetUcretiHesapla(harcananGB: Int) -> Int {
    if harcananGB > 50 {
        return 100 + (harcananGB - 50) * 4
    }
    else {
        return 100
    }
    
}

let sonuc3 = internetUcretiHesapla(harcananGB: 55)
print(sonuc3)

// soru 4

func fahrenhietConverter(celcius: Double) -> Double {
    return (celcius * 1.8) + 32
}

let sonuc4 = fahrenhietConverter(celcius: -55)
print(sonuc4)

// soru 5

func dikdortgenCevreHesapla(kisaKenarUzunluk: Int, uzunKenarUzunluk: Int) {
    print(kisaKenarUzunluk * 2 + uzunKenarUzunluk * 2)
}

dikdortgenCevreHesapla(kisaKenarUzunluk: 10, uzunKenarUzunluk: 20)

// soru 6

func factorial(_ n: Int) -> Int {
    guard n >= 0 else {
        print("Negatif sayılar için faktöriyel tanımlı değildir.")
        return -1
    }
    
    if n == 0 {
        return 1
    } else {
        return n * factorial(n - 1)
    }
}

let sonuc6 = factorial(4)
print(sonuc6)

// soru 7

func harfSay(text: String) -> Int {
    var count = 0
    for char in text.lowercased() {
        if char == "a" {
            count += 1
        }
    }
    return count
}

let sonuc7 = harfSay(text: "Adana")
print("A harfi sayısı: \(sonuc7)")


