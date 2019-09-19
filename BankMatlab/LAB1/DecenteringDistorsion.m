function [distorsionx,distorsiony,Xc,Yc] = DecenteringDistorsion(P1,P2,x,y)
r = (x^2 + y^2)^0.5;
distorsionx = P1*(r^2 + 2*x^2) + 2*P2*x*y;
distorsiony = 2*P1*x*y + P2*(r^2 + 2*y^2);
Xc = x - distorsionx;
Yc = y - distorsiony;
end

