## Question1

/*
 - 두 개의 정수를 입력받아 두 수를 하나로 합친 결과를 출력하는 함수 (1, 5 입력 시 15 반환)
 - 문자열 두 개를 입력받아 두 문자열이 같은지 여부를 판단해주는 함수
 - 학점을 입력받아 각각의 등급을 반환해주는 함수 (4.5 = A+,  4.0 = A, 3.5 = B+ ...)
 - 여러 등급을 입력받아 그 학점의 평균을 반환해주는 함수
 - 윤년 구하기 (2월 29일이 있는 해.  매 4년 마다 윤년. 매 100년 째에는 윤년이 아님. 매 400년 째에는 윤년)
 - 세 수를 입력받아 세 수의 곱이 양수이면 true , 음수이면 false 반환하는 함수
 - 특정한 달을 숫자로 입력 받아 문자로 반환해주는 함수 (1 = "Jan" , 2 = "Feb")
 */
 
//1번 문제
func numFunc(firstNum: String,seconfNum: String){
    print(firstNum + seconfNum)    
}
numFunc(firstNum: "1", seconfNum: "5")

//2번문제
func str1(fistStr : String, seondStr : String) -> Bool{
    if(fistStr == seondStr){
        return true
    }else{
        return false
    }
}
str1(fistStr: "str1", seondStr: "str2")

//3번 문제
var level1: String = "F"
func pointLevel (point: Double) {
    switch point {
    case 4.5:
       level1 = "A+"
    case 4.0:
        level1 = "A"
    case 3.5:
        level1 = "B+"
    case 3.0:
        level1 = "B"
    case 2.5:
        level1 = "C+"
    case 2.0:
        level1 = "C"
    case 1.0:
        level1 = "D"
    default:
        level1 = "F"
    }
}
pointLevel(point: 4.0)
//4번문제
var level2:Double = 0
func pointLevel1 (point: String) {
    switch point {
    case "A+":
        level2 = 4.5
    case "A":
        level2 = 4.0
    case "B+":
        level2 = 3.5
    case "B":
        level2 = 3.0
    case "C+":
        level2 = 2.5
    case "C":
        level2 = 2.0
    case "D":
        level2 = 1.0
    default:
        level2 = 0
    }
    
}
//5번문제
func years (year1 : Int) -> Bool {
    if  year1%4 == 0 {
        return true
    }else if year1%100 != 0 {
        return false
    }else if year1%400 == 0 {
        return true
    }else{
        return false
    }
}
years(year1: 2018)

//6번문제
/*
func unsinedNumber(_ numbers: Int...) -> Bool {
    var mul = 0
    for mulNum in numbers{
        mul = mul *= numbers
    }
    if (mul > 0){
        return true
    }else {
        return false
    }
}

*/
 //7번문제
var month: String = "Jan"
func monthTo (mon: Int) {
    switch mon {
    case 1:
        month = "Jan"
    case 2:
        month = "Fed"
    case 3:
        month = "Mar"
    case 4:
        month = "Apr"
    case 5:
        month = "May"
    case 6:
        month = "Jun"
    case 7:
        month = "Jul"
    case 8:
        month = "Aug"
    case 9:
        month = "Sep"
    case 10:
        month = "Oct"
    case 11:
        month = "Nov"
    case 12:
        month = "Dec"
    default:
        print("Not month")
    }
}
monthTo(mon: 11)
