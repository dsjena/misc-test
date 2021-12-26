c
c	main program
c	don't do anything with this program
c	Last modified 16th Apr'06
c	At HRI
c	This is satyajit jena
c
c
      program main_ino
      include 'define.f'
      write(*,*)''
      write(*,*)''
      include 'Logo.f'
      include 'vdismon.sj'
c     include 'lo.f'
c      write(*,*)'        Take a tour'
c
c     ********************* Menu ************************
c
      write(*,*)'       Please Enter the Bracketed Number'
1001  write(*,*)' '
      write(*,*)'        (1) --> For Terminal Display'
      write(*,*)'        (2) --> For Efficiency Comparison'
      write(*,*)'        (3) --> Noise Rate Calculation'
      write(*,*)'        (4) --> Efficient Hits Histogram'
      write(*,*)'        (5) --> For Total Hits'
c      write(*,*)'        (6) --> I donot know'
c      write(*,*)'        (7) --> I donot know'
c      write(*,*)'        (8) --> I donot know'
      write(*,*)'        (0) --> To Exit'
      read(*,*)itake
c
c     *********************  shell Display ********************************
c
      if(itake.eq.1)then
         include 'inoterm.f'
         goto 1002
      else
c
c     **************************** efficiency Histogram ********************
c
         if(itake.eq.2)then
            include 'rdevt.sj'
	write(*,*)'    Wait a moment.......'
         if (GraceOpenf(2048) .EQ. -1)then
            write(*,*)'Can not run grace.'
            call exit (1)
         endif
         include 'xd4eff.sj'
            include 'eff_hit.f'
            goto 1002
         else
c
c     **********************************************************************
c
            if(itake.eq.3)then
         include 'rdmon.sj'
c	write(*,*)'    Wait a moment.......'
         if (GraceOpenf(2048) .EQ. -1)then
            write(*,*)'Can not run grace.'
            call exit (1)
         endif
         include 'xd4m.sj'
         include 'mon.f'
         goto 1002
               else
c
c     ******************* efficient hits Histogram ************************
c
                  if(itake.eq.4)then
            include 'rdevt.sj'
	write(*,*)'    Wait a moment.......'
            if (GraceOpenf(2048) .EQ. -1)then
               write(*,*)'Can not run grace.'
               call exit (1)
            endif
            include 'xd4chm.sj'
            include 'chmon.f'
            goto 1002
               else
c     *******************  Total Hits ************************************
                  if(itake.eq.5)then
                     include 'rdevt.sj'
	write(*,*)'    Wait a moment.......'
                     if (GraceOpenf(2048) .EQ. -1)then
                        write(*,*)'Can not run grace.'
                        call exit (1)
                     endif
                     include 'xd4hit.sj'
                     include 'hit_no.f'
                     goto 1002
                 else
c     *********************************************************************
                    if(itake.eq.6)then
                        write(*,*)'Wait a minute I am not ready'
                     else
                           if(itake.eq.7)then
                              write(*,*)'Wait a minute I am not ready'
         else
            if(itake.eq.8)then
               write(*,*)'If U donot Know Why U entered this no'
            else
c     
c     **************** Invalid Input Parameter  ***************************
               if(itake.gt.8)then
                  write(*,*)'Not Valid operation, Try again....'
            write(*,*)''
               goto 1001
            else
            if(itake.lt.0)then
               write(*,*)'Not Valid Option, Try again...'
               write(*,*)''
               goto 1001
            else
               if(itake.eq.0)then
                  goto 1000
                  else
               endif
c      *******************************************************************
            endif
         endif
      endif
      endif
      endif
      endif
      endif
      endif
      endif
      endif
 1002 write(*,*)''
c     do i=1,40
c        write(*,*)''
c     enddo
      write(*,*)'       Please Use the Bracketed Number'      
      goto 1001
1000  stop
      end
      
