









program rpg
   implicit none
   integer :: a,i,p
 real :: resultado



contains 

  
   INTEGER FUNCTION dado(numero)
	implicit none
	integer :: i,p, numero
	real :: resultado
do i=1,numero 
call random_number(resultado)
p=int(1 + (6*resultado))

end do
dado=p


end FUNCTION dado


end program rpg



