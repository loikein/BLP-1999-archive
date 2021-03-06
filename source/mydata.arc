proc quarter(x) ;
   local x,n,q1,q2,q3,q4 ;
   n = cols(x) ;
   if n/=12 ;
     "ERROR: WRONG NUMBER OF COLS IN PROC QUARTER " ;
     end ;
   else ;
     q1 = sumc(x[.,1:3]') ;
     q2 = sumc(x[.,4:6]') ;
     q3 = sumc(x[.,7:9]') ;
     q4 = sumc(x[.,10:12]') ;
   endif ;
   retp(q1~q2~q3~q4) ;
endp ;

proc wtave(x,w) ;
   local x,w,tot ;
   tot = sumc(x.*w) ;
   retp( tot./sumc(w) ) ;
endp ;
