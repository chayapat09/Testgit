A = [2442.80 2171.36 ;
     4282.31 393.82  ;
     1249.28 1631.86 ;
     376.19  844.27  ;
     1680.80 2787.16 ;
     859.00  3616.29 ;
     2589.99 2439.53 ;
     3617.77 3001.40]; % OpenEV cordinates
 A(:,2) = -A(:,2); % Change y to negative cordinates
 XY(1:length(A),1:2) = 0;
 R(1:length(A)) = 0;
 distorsion(1:length(A),1:2) = 0;%Distortion Value from lens
 XcYc(1:length(A),1:2) = 0;%Value after Corrected Radial lens distortion
 [a,b,c,d] = FindCalibratedFunction();%Find a,b,c,d from Regression
 for i = 1:length(A)
     [x,y] = FindRealCordinate(A(i,1),A(i,2),a,b,c,d);
     XY(i,1) = x; XY(i,2) = y;
     R(i) = (x^2+y^2)^0.5;
     
     %Corrected Radial lens distortion
     [del_x,del_y,Xc,Yc] = RadialDistorsion( 0.7334 , -326.9 , -13130 ,x,y);
     distorsion(i,1) = del_x ; distorsion(i,2) = del_y;
     XcYc(i,1) = Xc          ; XcYc(i,2) = Yc;
     
     %Corrected Decentering lens distortion
     
 end
 