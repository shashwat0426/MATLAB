function coordinate(x,y,z)
fprintf('1.to convert cartesian to cylindrical.\n');
fprintf('2.to convert cartesian  to spherical.\n');
fprintf('3.to convert cylindrical to cartesian.\n');
fprintf('4.to convert spherical to cartesian.\n');
p=sqrt(x.^2 + y.^2);
r=sqrt(x.^2+ y.^2+ z.^2);
theta= atand(p/z);
fi= atand(y/x);

s = input('choose the option:-  ');
switch s
    case 1 
    if (0<=x) && (0<=z) && (0<=y)
 C= [x*cos(fi)+y*sin(fi) ,y*cos(fi)-x*sin(fi) ,z];
    else
       fprintf('invalid entry.\n');
    end
    case 2 
       if (0<=x) && (0<=z) && (0<=y)
 C= [x*sin(theta)*cos(fi)+ y*sin(theta)*sin(fi)+z*cos(theta), x*cos(theta)*cos(fi)+ y*cos(theta)*sin(fi)-z*sin(theta), y*cos(fi)-x*sin(fi)];
       else 
           fprintf('invalid entry.\n');
       end
       
           case 3
           if (O<p) && (0<=fi) && (fi<2*pi)
              C =[x*cos(fi)-y*sin(fi) , x*sin(fi)+y*cos(fi), z];
                else 
           fprintf('invalid entry.\n');
           end
           
               case 4 
                   if (O<=r) && (0<=theta) && (theta<=pi) && (0<=fi) && (fi<2*pi) 
                      C=[sin(theta)*cos(fi)*x+ cos(theta)*cos(fi)*y-sin(fi)*z , sin(theta)*sin(fi)*x+cos(theta)*sin(fi)*y+cos(fi)*z , cos(theta)*x-sin(theta*y)];
                        else 
           fprintf('invalid entry.\n');
                   end
end
end


           
           