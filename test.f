	dimension aa(200000),bb(200000),cc(200000),dd(200000),
     1  ee(20000),ff(20000)
	open(12,file='test.dat')
	open(13,file='ss.out')
	do 15 i=1,12432
	read(12,*)a,b,c,d,e
	aa(i)=a
	bb(i)=b
	cc(i)=c
	dd(i)=e
	if((aa(i-1).eq.aa(i)).and.((bb(i-1).eq.bb(i))).and.((cc(i-1).
     3  eq.cc(i))))then
	ee(i)=dd(i-1)+dd(i)
	ff(i)=ee(i-2)+ee(i-1)+ee(i)
	else
c	endif
c	else
	endif 
	write(*,*)aa(i),bb(i),cc(i),dd(i),ee(i),ff(i)
15	continue
	stop
	end
