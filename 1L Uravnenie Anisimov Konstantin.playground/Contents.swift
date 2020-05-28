import UIKit

var str = "Hello, playground"
var a: Float = 5
var b: Float = 10
var c: Float = 2
var x1: Float = 0
var x2: Float = 0

var D = b*b - 4*a*c

if (D<0) {
    
   print ("Уравнение не имеет решения")
    }
else if (D==0) {
    x1 = (-b+sqrt(D))/(2*a)
    print ("Уравнение иммеет 1 корень, x=", x1)
}
    else if (D>0) {
    x1 = (-b+sqrt(D))/(2*a)
    x2 = (-b-sqrt(D))/(2*a)
    print ("Уравнение иммеет 2 корня, x1=", x1, "  x2=", x2)
}


