!> Main Program for Video 2 of VSCode for Fortran
!!
!! @author Lukas Lamm

program helloVSCode

    implicit none

    character(len=*), parameter :: format = '(/, A, A, A, /, A, /)'
    character(len=6) :: name = 'Lukas'

    !call get_name(name)

    write(*,format) "Hello ", name, " my friend!", & 
    "Welcome to the wonderful world of coding modern fortran applications in Visual Studio Code."

end program helloVSCode
