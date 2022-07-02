//Recursion
/*
 Because a recursive function calls itself. it is easy to write a function that ends up in an infinite loop.
 example:function that print countdown
*/

func countdown(_ i:Int){
    print(i)
    countdown(i-1)
}
//countdown(3) //infinite loop

//recursive function with the base case
func countdownWithBaseCase(_ i:Int){
    print(i)
    if(i<=0){
        return
    }else{
        countdownWithBaseCase(i-1)
    }
}
//countdownWithBaseCase(3) //output: 3 2 1 0


//The call stack with recursion
//factorial function

func factorial(_ num:Int) -> Int{
    if num == 1 {
        return 1
    }else{
        return num * factorial(num-1)
    }
}

factorial(3) //output will be 6 -> 3*2*1
