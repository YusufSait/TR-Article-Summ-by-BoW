 # t r s t o p w o r d . t x t 
 s n a m e   < -   f i l e . p a t h ( " D : " ,   " y u s u f / U N I / 5 . 1 / T e x t   M i n i n g / s u m m a r i z a t i o n / t r s t o p w o r d . t x t " ) 
 c o n = f i l e ( s n a m e , o p e n = " r " ) 
 l i n e = r e a d L i n e s ( c o n ) 
 E n c o d i n g ( l i n e ) < - " U T F - 8 " 
 s w t r < -   s t r s p l i t ( l i n e ,   "   " )   # T O D O 
 
 l i b r a r y ( s t r i n g r ) 
 c n a m e   < -   f i l e . p a t h ( " D : " ,   " y u s u f / U N I / 5 . 1 / T e x t   M i n i n g / s u m m a r i z a t i o n / d a t a / h a b e r 3 . t x t " ) 
 c o n = f i l e ( c n a m e , o p e n = " r " ) 
 l i n e = r e a d L i n e s ( c o n ) 
 E n c o d i n g ( l i n e ) < - " U T F - 8 " 
 l i n e   < -   l i n e [ s a p p l y ( l i n e ,   n c h a r )   >   0 ]   # R e m o v e   b l a n k   p h a r a g r a p h s 
 s e n t e n c e s   < -   l i n e   % > %   g s u b ( "   + " ,   "   " ,   . )   % > %   s t r s p l i t ( s p l i t   =   " [ \ \ . ? ! ]   " )   # G e t   t e x t   a s   s e n t e n c e s   g r o u p e d   a c c o r d i n g   t o   p h a r a g r a p s 
 
 s e n t < - s e n t e n c e s [ [ 1 ] ] 
 c < - 0 
 f o r   ( p   i n   2 : l e n g t h ( s e n t e n c e s ) )   { 
     i f ( ! i s . n u l l ( s e n t e n c e s ) )   { 
           i f   ( l e n g t h ( s e n t e n c e s [ [ p ] ] ) ! = 0 ) { 
                 s e n t < - c ( s e n t , s e n t e n c e s [ [ p ] ] ) 
           } 
     } 
 } 
 l i b r a r y ( t m ) 
 l i b r a r y ( M a t r i x ) 
 s e n t . l i s t   < -   c ( s e n t ) 
 s e n t . c o r p u s < - C o r p u s (   V e c t o r S o u r c e (   s e n t . l i s t   )   ) 
 # s w t r C   < -   C o r p u s ( V e c t o r S o u r c e ( a s . v e c t o r ( s w t r ) ) ) 
 
 # C o n v e r t   a l l   l e t t e r s   t o   l o w e r   c a s e . 
 s e n t . c o r p u s   < -   t m _ m a p ( s e n t . c o r p u s ,   t o l o w e r ) 
 # R e m o v e   p u n c t u a t i o n s . 
 s e n t . c o r p u s   < -   t m _ m a p ( s e n t . c o r p u s ,   r e m o v e P u n c t u a t i o n ) 
 # R e m o v e   l i s t   o f   s t o p   w o r d s   i n   T u r k i s h ,   f r o m   c o r p u s . 
 s e n t . c o r p u s   < -   t m _ m a p ( s e n t . c o r p u s ,   r e m o v e W o r d s ,   s w t r [ [ 1 ] ] ) 
 # E r a s e   c o n s e q u e n t i a l   m u l t i p l e   s p a c e s . 
 s e n t . c o r p u s   < -   t m _ m a p ( s e n t . c o r p u s ,   s t r i p W h i t e s p a c e ) 
 # R e m o v e   s t e m   w o r d s . 
 s e n t . c o r p u s   < -   t m _ m a p ( s e n t . c o r p u s ,   s t e m D o c u m e n t ) 
 # R e m o v e   n u m e r i c   n u m b e r   s i n c e   t h e y   w o n ' t   b e   m e a n i n g f u l l   f o r   o u r   m i n i n g   p r o c e s s . 
 s e n t . c o r p u s   < -   t m _ m a p ( s e n t . c o r p u s ,   r e m o v e N u m b e r s ) 
 
 # C o n v e r t   t o   p l a i n   t e x t   d o c u m e n t 
 s e n t . c o r p u s   < -   t m _ m a p ( s e n t . c o r p u s ,   P l a i n T e x t D o c u m e n t ) 
 # s e n t . d t m   < -   D o c u m e n t T e r m M a t r i x (   s e n t . c o r p u s ,   c o n t r o l   =   l i s t ( w e i g h t i n g   =   w e i g h t T f ,   n o r m a l i z e   =   T R U E ) ) 
 s e n t . d t m   < -   D o c u m e n t T e r m M a t r i x (   s e n t . c o r p u s ,   c o n t r o l   =   l i s t ( w e i g h t i n g   =   w e i g h t T f ,   n o r m a l i z e   =   T R U E )   ) 
 r o w n a m e s ( s e n t . d t m )   =   1 : n r o w ( s e n t . d t m ) 
 s e n t . t d m   < -   T e r m D o c u m e n t M a t r i x (   s e n t . c o r p u s   ) 
 c o l n a m e s ( s e n t . t d m )   =   1 : n c o l ( s e n t . t d m ) 
 
 i f ( l e n g t h ( s e n t ) < 1 ) { 
     n C l u s t e r < - 0 
 } e l s e { 
     n C l u s t e r < - s q r t ( l e n g t h ( s e n t ) ) # 
 } 
 
 
 # 2 ) s u m m a r i t a z i t o n   b y   h i e r a r h i c   c l u s t e r i n g   - - - - - - - - - - - - - - - - - - - - - - - - 
 y   < -   s p a r s e M a t r i x (   i = s e n t . t d m $ i ,   j = s e n t . t d m $ j ,   x = s e n t . t d m $ v ,   d i m n a m e s   =   d i m n a m e s ( s e n t . t d m )   )     
 # c o l n a m e s ( y )   < -   1 : n c o l ( y ) 
 h t r e e = h c l u s t ( d i s t ( t ( y ) ) ) 
 p l o t (   h t r e e   ) 
 
 #   C o m p a r e   t h e   2   a n d   4   g r o u p i n g : 
 g 2 5   < -   c u t r e e ( h t r e e ,   k   =   c ( 2 , 5 ) )   # k = 2 : 5 
 s t r ( s e n t . h c l u s t e r ) 
 t a b l e ( g r p 2   =   g 2 5 [ , " 2 " ] ,   g r p 5   =   g 2 5 [ , " 5 " ] ) 
 # - - : 
 s e n t . h c l u s t e r   < -   c u t r e e ( h t r e e ,   k   =   n C l u s t e r )   # n C l u s t e r < - c ( 2 , 3 ) 
 
 # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 2 ) 
 
 # 3 ) s u m m a r i t a z i t o n   b y   k   m e a n s   c l u s t e r i n g   - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 # # #   k - m e a n s   ( t h i s   u s e s   e u c l i d e a n   d i s t a n c e ) 
 s e n t . d t m m a t   < -   a s . m a t r i x ( s e n t . d t m ) 
 
 # # #   N o r m a l i z e 
 # m < - s e n t . d t m m a t 
 # n o r m _ e u c l   < -   f u n c t i o n ( m )   m / a p p l y ( m ,   M A R G I N = 1 ,   F U N = f u n c t i o n ( x )   s u m ( x ^ 2 ) ^ . 5 ) 
 # m _ n o r m   < -   n o r m _ e u c l ( m ) 
 
 # # #   c l u s t e r   i n t o   i n t   c l u s t e r s 
 s e n t . k m e a n s   < -   k m e a n s ( s e n t . d t m m a t ,   n C l u s t e r ) 
 t a b l e ( s e n t . k m e a n s $ c l u s t e r ) 
 # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 3 ) 
 
 # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - f i n d   c e n t e r s   o f   c l u s t e r s 
 s t r ( s e n t . k m e a n s $ c l u s t e r ) 
 s t r ( s e n t . h c l u s t e r ) 
 s e n t [ 2 ] 
 s e n t . k m e a n s $ c l u s t e r 
 
 f i n d C e n t e r   < -   f u n c t i o n ( c l u s t e r ) { 
     c l c < - l i s t ( ) 
     f o r   ( i   i n   1 : l e n g t h ( c l u s t e r ) ) { 
         t m p   < -   t r y (   c l c [ [ c l u s t e r [ i ] ] ] < - c ( c l c [ [ c l u s t e r [ i ] ] ] ,   i )   ) 
         i f ( c l a s s ( t m p ) = = " t r y - e r r o r " ) { 
             c l c [ [ c l u s t e r [ i ] ] ] < - l i s t ( ) ; 
             c l c [ [ c l u s t e r [ i ] ] ] < - c ( c l c [ [ c l u s t e r [ i ] ] ] ,   i ) 
         } 
     } 
     r e t u r n   ( c l c ) 
 } 
 r e s c < - f i n d C e n t e r ( s e n t . k m e a n s $ c l u s t e r )   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #   s e n t . k m e a n s $ c l u s t e r   -   s e n t . h c l u s t e r 
 # r e s c [ [ 3 ] ]   # a r r a y   o f   i n d e x   o f   d o c .   i n   c l u s t e r   3 
 
 g e t A v g < - f u n c t i o n ( i n d ) {   # u s e s   s e n t . d t m m a t 
     a v g d o c < - s e n t . d t m m a t [ 1 , ]   # t e r m   l i s t 
     c e n t e r s < - r e p . i n t ( 0 ,   l e n g t h ( i n d )   )   
     
     f o r ( i   i n   1 : l e n g t h ( i n d ) ) {     # f o r   e a c h   c l u s t e r 
         
         f o r ( k   i n   1 : l e n g t h ( a v g d o c ) ) {   # i n i t i a l i z e   a v e r a g e   t e r m s   l i s t 
             a v g d o c [ k ] < - 0 
         } 
         f o r ( j   i n   1 : l e n g t h ( i n d [ [ i ] ] )   ) {   # f o r   e a c h   d o c u m e n t   i n   c l u s t e r 
             # r e s c [ [ i ] ] [ j ]   # e a c h   d o c u m e n t 
             f o r ( t   i n   1 : l e n g t h ( a v g d o c ) ) {   # f o r   e a c h   t e r m 
                 a v g d o c [ t ]   < -   a v g d o c [ t ]   +   s e n t . d t m m a t [   a s . n u m e r i c ( i n d [ [ i ] ] [ j ] )   ,   t ] 
             } 
         } 
         # C a l c u l a t e   r a n k s 
         r a n k d < - 0 
         r a n k d < - r e p . i n t ( 0 ,   l e n g t h ( i n d [ [ i ] ] ) )     # k e e p s   d o c u m e n t   r a n k 
         f o r ( j   i n   1 : l e n g t h ( i n d [ [ i ] ] )   ) {   # f o r   e a c h   d o c u m e n t   i n   c l u s t e r 
             # r e s c [ [ i ] ] [ j ]   # e a c h   d o c u m e n t 
             t m p R a n k < - 0 
             f o r ( t   i n   1 : l e n g t h ( a v g d o c ) ) {   # f o r   e a c h   t e r m 
                 t m p R a n k < - ( s e n t . d t m m a t [   a s . n u m e r i c ( i n d [ [ i ] ] [ j ] )   ,   t ] * s e n t . d t m m a t [   a s . n u m e r i c ( i n d [ [ i ] ] [ j ] )   ,   t ]   )   +   ( a v g d o c [ t ] * a v g d o c [ t ] ) 
                 # r a n k d [ j ]   < -   r a n k d [ j ]   +   (   s e n t . d t m m a t [   a s . n u m e r i c ( i n d [ [ i ] ] [ j ] )   ,   t ] * a v g d o c [ t ]   ) 
             } 
             i f ( t m p R a n k ! = 0 ) { 
                 r a n k d [ j ] < -   s q r t (   t m p R a n k   ) 
             } e l s e { 
                 r a n k d [ j ] < -   0 
             } 
                 
         } 
         # f i n d   h i g h e s t   r a n k e d   d o c u m e n t ' s   i n d e x 
         # c e n t e r s [ i ] < -   i n d [ [ i ] ] [   w h i c h . m a x ( r a n k d )   ] 
         c e n t e r s [ i ] < -   i n d [ [ i ] ] [   w h i c h . m i n ( r a n k d )   ] 
         
     } 
     r e t u r n   ( c e n t e r s ) 
 } 
 
 c e n t e r s < - g e t A v g ( r e s c ) 
 
 s u m m < - r e p . i n t ( 0 , l e n g t h ( c e n t e r s ) ) 
 f o r ( i   i n   0 : l e n g t h ( c e n t e r s ) ) { 
     s u m m [ i ]   < -   s e n t [ a s . n u m e r i c ( c e n t e r s [ i ] ) ] 
 } 
 s u m m 
 # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - f i n d   c e n t e r s   o f   c l u s t e r s 
