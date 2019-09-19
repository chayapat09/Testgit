function [distorsion] = TangentDistorsion(P1,P2,r)
x = r/(2^0.5);
y = r/(2^0.5);

distorsionx = P1*(r^2 + 2*x^2) + 2*P2*x*y;
distorsiony = 2*P1*x*y + P2*(r^2 + 2*y^2);

distorsion = (distorsionx^2 + distorsiony^2)^0.5/10000;
end

