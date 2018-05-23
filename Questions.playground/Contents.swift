import UIKit

//# 하샤드 수 구하기
//- 하샤드 수 : 자연수 N의 각 자릿수 숫자의 합을 구한 뒤, 그 합한 숫자로 자기 자신이 나누어 떨어지는 수
//ex) 18의 자릿수 합은 1 + 8 = 9이고, 18은 9로 나누어 떨어지므로 하샤드 수.
var sumNum = 0
func harshad(harNum:Int) -> Bool{
    var returnValue: Bool = true
    var num: Int = harNum
    while num > 0 {
        sumNum += num%10
        num = num/10
    }
    if harNum % sumNum == 0 {
        returnValue = true
    }else if harNum % sumNum != 0 {
        returnValue = false
    }
    return returnValue
}
harshad(harNum: 40)

//# 2개의 정수를 입력했을 때 그에 대한 최소공배수와 최대공약수 구하기
//ex) Input : 6, 9   ->  Output : 18, 3

/*
 파이썬 코드
 def gcdlcm(a, b):
 c, d = max(a, b), min(a, b)
 t = 1
 while t > 0:
 t = c % d
 c, d = d, t
 answer = [c, int(a*b/c)]
 
 return answer
 print(gcdlcm(12,18))
 */


var maxDivision = 0
var multi = 0
var i = 2

func gcdlcm(a:Int, b:Int) {
    let minNum = min(a, b)
    let centerNum = Int(minNum/2)
    
    while i != minNum {
        if (a % i == 0) && (b % i == 0) {
            maxDivision = i
        }
        i += 1
        if i > centerNum{
            i = minNum
        }
    }
    multi = maxDivision * Int(a/maxDivision) * Int(b/maxDivision)
    print("최소 공약수: \(maxDivision), 최대 공약수: \(multi)")
}
gcdlcm(a: 12, b: 16)
//# 선풍기를 동작시키는 과정을 추상화, 캡슐화, 상속 개념 등을 이용해 클래스로 구현해보기

class Fan {
    var isPowerOn = false
    var wind = 1
    func currentWind() -> Int {
        guard isPowerOn else {
            print("전원이 꺼져있습니다.")
            return -1
        }
        return wind
    }
    func setWind(_ wind: Int) {
        guard isPowerOn else { print("전원이 꺼져있습니다."); return }
        self.wind = wind
    }
    func operatePower(turnOn: Bool) {
        isPowerOn = turnOn
    }
}
let fan = Fan()
fan.operatePower(turnOn: true)
fan.currentWind()
fan.setWind(4)
fan.isPowerOn
