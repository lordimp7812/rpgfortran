program rpg
	implicit none
	integer :: a,i,p
	real :: resultado

	write(*,*) "Digite 1 para receber ajuda ou digite 2 para iniciar a aventura"
	read (*,*) a
	
	select case (a)
		case(1)
			Write(*,*) "Esse rpg e baseado em tomar decisoes" 
			Write(*,*) "escolha bem para seguir a aventura o maximo"
			Write(*,*) "boa sorte"
			write(*,*)"A aventura comeca..."
		case(2)
			write(*,*)" A ventura comeca..."
	end select
	 
	Write(*,*) "voce acorda em sua cama e sente que um tremor" 
	Write(*,*) "escolha:" 
	Write(*,*) "Digite 1 para sair da casa para ver"
	Write(*,*) "Digite 2 para voltar a dormir"
	write(*,*)  "Digite 3 para permanecer na casa"

	read (*,*) a
		selectcase(a)
		case(1)
			Write(*,*) "alguma coisa acontece"
		case(2)
			Write(*,*) "fim do jogo"
		case (3)
			write (*,*) "voce fica preso na casa"
		 
		end select

	write (*,*) "ache uma saida ou morra de fome"
	write (*,*) "sua barra de vida 20"
	Write (*,*) ""

contains 

subroutine combate (habilidade,armadura_heroi,energia,energia_boss,dano_boss,armadura_boss)
implicit none 
integer :: habilidade
integer:: armadura_heroi
integer:: energia 
integer:: p
integer:: energia_boss
integer:: dano_boss
integer:: armadura_boss
integer:: t
integer:: o
integer:: l
integer:: f
o=habilidade*dado(1)/armadura_boss
l=dano_boss/armadura_heroi
f=o-l
select case (f)
case (1:10000)
p=energia_boss-o
write(*,*) p
energia_boss=p
case (0)
t=energia-l
write(*,*) t
energia=t
write(*,*) energia
case (-10000:-1)
write  (*,*) "nada acontece"

end select



!p significa o dano aplicado a vida do boss
!t significa o dano aplicado a vida do jogador
!o significa o dano do jogador ao boss
!l significa o dano do boss ao jogador
 



 end subroutine combate 

   
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



