import three;
unitsize(3cm);
currentprojection=orthographic(5,2,1.5);
currentprojection=orthographic(-1,2,-0.5);

triple Z=(0,0,0), a=(2,0,0), b=(0,3,0), c=(0,0,2), d=a-b+c;
label("$(1,0,0)$",1.3*(1,0,0));
label("$(0,1,0)$",1.3*(0,1,0));
label("$(0,0,1)$",1.1*(0,0,1));

draw ((1,0,0)--Z--(0,1,0)^^(0,0,1)--Z);

path3 g=a--b--c--d--cycle;
draw(g);
dot(g,red+linewidth(2));
draw(surface(g),green+opacity(0.85),nolight);


