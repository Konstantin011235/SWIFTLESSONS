import UIKit

var str = "Hello, playground"
var mon :Float = 10000
let yearPercent :Float = 13.9
let timePeriod :Int = 5
var profit :Float = 0
var i: Int = 1


while i<timePeriod {
    i = i+1
    profit = (mon*yearPercent)/100
    mon = profit + mon;
    print ("Ваш вклад за ", i,"-й год составит ", mon, " рублей")
}
