function distorsion = RadialDistorsion(K1,K2,K3,K4,r)
distorsion = K1*r + K2*r^3 + K3*r^5 + K4*r^7;
distorsion = distorsion/(10^20);
end

