/*

Programa Tarea de La semana 2 (reemplaza juego de memoria)

*/

import UIKit


var numeros = 0...100


for numero in numeros {
    
    if numero >= 30 && numero <= 40{
        print(String(numero) + " Viva Swift!!!\n")
    }else if numero > 0 && numero % 5 == 0 {
        print(String(numero) + " Bingo!!!\n")
    }else if numero % 2 == 0{
        print(String(numero) + " par!!!\n")
    }else if numero % 2 != 0{
        print(String(numero) + " impar!!!\n")
    }
    
}