
program hello_world

    implicit none

    integer:: a, b, result, i, j, sum
    
    a = 114

    b = 514

    result = a + b

    if (result /= 1919810) then

        print *, "哈基米哦南北绿豆"
    
    end if

    print *, "a + b =", result

    print *, "Hello, Fortran on Windows!"

    ! call system("pause")
    print *, "这是 Fortran，我也不知道为啥要学这玩意"

    select case (a)
        case (1)
            print *, "a 是 1"
        case (114)
            print *, "a 是 114, 114514!"
        case default
            print *, "哈哈，啥也不是"

    end select

    do i = 0, 10, 1
        print *, "哈哈哈我开始循环了啊哈哈"
    end do

    j = 0
    sum = 0
    do while (j < 10)
        print *, "哈哈哈我又开始循环啦哈哈哈"
        sum = sum + j
        j = j + 1
    end do

    print *, "你看看我对你多好，顺便帮你把 sum 算出来了：", sum

    call system("pause")

    stop

end program hello_world