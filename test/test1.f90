program test1

  use precision

  call announce ('Testing types ')

  call ok

1 format(A,I2)

  write(*,1) '    default integer = ',i_kind
  write(*,1) 'default single real = ',rs_kind
  write(*,1) 'default double real = ',rd_kind

  write(*,1) '             real 4 = ',r4_kind
  write(*,1) '             real 8 = ',r8_kind

  write(*,1) '              int 1 = ',i1_kind
  write(*,1) '              int 2 = ',i2_kind
  write(*,1) '              int 4 = ',i4_kind
  write(*,1) '              int 8 = ',i8_kind

  ! Tests finished

contains 
  
  subroutine announce(text)
    character(len=*) :: text
    write (*,'(A)',advance='no') text
  end subroutine announce
  
  subroutine ok
    print *,' ........... ok'
  end subroutine ok

  subroutine failed
    print *,' ........... FAILED!'
  end subroutine failed
  
end program test1
