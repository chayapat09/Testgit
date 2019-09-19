radius = 50:50:2000;
out3Pics(1:length(radius)) = 0;
out5Pics(1:length(radius)) = 0;
out9Pics(1:length(radius)) = 0;
for i = 1:length(radius)
    out3Pics(i) = TangentDistorsion( 0.000197748     , 0.000530672      ,radius(i));
    out5Pics(i) = TangentDistorsion( 8.33756*10^(-5) , -1.69099*10^(-5) ,radius(i));
    out9Pics(i) = TangentDistorsion( 0.000202258     , -5.42169*10^(-5) ,radius(i));
end
plot(radius,out3Pics,radius,out5Pics,radius,out9Pics)
