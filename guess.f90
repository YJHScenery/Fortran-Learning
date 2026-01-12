program guess
    implicit none
    integer :: random, input
    real :: rdm
    integer :: i, n, clock
    integer, dimension(:), allocatable :: seed
    call random_seed(size = n)
    allocate(seed(n))
    call system_clock(count=clock)
    seed = clock + 37 * [(i - 1, i = 1, n)]
    call random_seed(put=seed)
    deallocate(seed)
    call random_number(rdm)
    random = rdm * 50
    do while (input /= random)
        print *, "请输入你猜的数字: "
        read *, input
        if (random > input) then
            print *, "太小了"
        else if (random < input) then
            print *, "太大了"
        end if
    end do
    print *, "猜对了"
    stop
end program guess