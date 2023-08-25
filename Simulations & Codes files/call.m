function call(u)

coder.extrinsic('pause')

if ~ishandle(1)
     figure(1);
end

clf

PlotS2A(u);
pause(0.02)
end


function h = circle2(x,y,r)
d = r*2;
px = x-r;
py = y-r;
h = rectangle('Position',[px py d d],'Curvature',[1,1],'FaceColor',[0.4 0.5 0.7]);
daspect([1,1,1])
end

function PlotS2A(u)
x = u(1);
y = u(2);
z=u(3);
rectangle('Position',[x-0.25 0 0.5 0.5],...
 'FaceColor',[0.4 0.5 0.7]);
a = 3*sin(y);
b= 3*cos(y);
line([x;a+x],[0.5;b+0.5],  'LineWidth',2,   'Color',[1 0.4 0.1]);
a2 = 3*sin(z);
b2 = 3*cos(z);
line([a+x;a2+x+a],[b+0.5;b2+0.5+b],  'LineWidth',2,   'Color',[1 0.4 0.1]);
circle2(a+x,b+0.5,0.2)
circle2(a2+x+a,b2+0.5+b,0.2)

axis([-5 5 -8 8]);

end