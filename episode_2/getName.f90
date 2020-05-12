!> Subroutine for Video 2 of VSCode for Fortran
!!
!! @author Lukas Lamm

subroutine getName(name)
    implicit none

    character(len=6), intent(out) :: name

    write(*,'(A)') "Please type your first name:"
    read(*,'(A)') name
    
end subroutine getName