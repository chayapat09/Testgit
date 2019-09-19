radius = 50:50:1000;
out3Pics(1:length(radius)) = 0;
out5Pics(1:length(radius)) = 0;
out9Pics(1:length(radius)) = 0;
for i = 1:length(radius)
    out3Pics(i) = RadialDistorsion( 0.0395156 , 0.064605  ,-0.538265 , 0.404399 ,radius(i));
    out5Pics(i) = RadialDistorsion( 0.0360316 , 0.0840329 ,-0.644153 , 0.627352 ,radius(i));
    out9Pics(i) = RadialDistorsion( 0.0300994 , 0.108463  ,-0.699281 , 0.669147 ,radius(i));
end
plot(radius,out3Pics,radius,out5Pics,radius,out9Pics)
