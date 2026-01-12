MODULE math_funcs
    IMPLICIT NONE
CONTAINS
    ! 求和函数：返回两个实数的和
    REAL FUNCTION add(a, b)
        IMPLICIT NONE
        REAL, INTENT(IN) :: a, b  ! 输入参数，只读
        add = a + b  ! 结果赋值给函数名（返回值）
    END FUNCTION add

    ! 带RESULT的乘积函数（自定义返回值变量名）
    REAL FUNCTION multiply(x, y) RESULT(prod)
        IMPLICIT NONE
        REAL, INTENT(IN) :: x, y
        prod = x * y  ! 结果赋值给RESULT指定的prod
    END FUNCTION multiply
END MODULE math_funcs

PROGRAM main
    USE math_funcs  ! 引用模块
    IMPLICIT NONE
    REAL :: num1=3.5, num2=2.5, sum_val, prod_val

    sum_val = add(num1, num2)    ! 调用求和函数
    prod_val = multiply(num1, num2)  ! 调用乘积函数

    PRINT *, "3.5 + 2.5 = ", sum_val  ! 输出：6.0000000
    PRINT *, "3.5 * 2.5 = ", prod_val ! 输出：8.7500000
    stop
END PROGRAM main