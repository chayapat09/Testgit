function [distorsionx,distorsiony,Xc,Yc] = RadialDistorsion(K1,K2,K3,x,y)
r = (x^2 + y^2)^0.5;
distorsion = K1 + K2*r^2 + K3*r^4;
distorsionx = distorsion*x;
distorsiony = distorsion*y;
Xc = x-distorsionx;
Yc = y-distorsiony;
end

