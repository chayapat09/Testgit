function [X,Y] = FindRealCordinate(x,y,a,b,c,d)
% a = -0.0528; b = 0.0002 ;c = 119.1172 ; d = -117.9981;
X = a*x + b*y + c;
Y = -b*x + a*y + d;
end

