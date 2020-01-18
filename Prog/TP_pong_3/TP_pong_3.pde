int x, y;
int deplacementX, deplacementY;
int deplacementW, deplacementZ;
int w, z;

void setup()
{
size(400,400);
background(0);

x = 200;
y = 200;

deplacementX = int(random(4,8));
deplacementY = int(random(-4,-1));

w = 15;
z = 60;



}


void draw()
{
nettoyer();dessiner(); bouger(); rebondir(); 

}


void nettoyer()
{
background(0);
}


void rebondir()
{

}



void bouger()
{
x = x + deplacementX;
y = y + deplacementY;

if(keyPressed)
{
if((keyCode == DOWN || key == '8') && z+85<400) {
z+=4;
}

if((keyCode == UP || key == '5') && z>0) {
z-=4;
}
}
}

void dessiner()
{
  stroke(255);
  fill(255);
  rect(w,z,15,85);
  fill(255);
  ellipse(x,y,20,20);
  stroke(255);
  line(width/2,0,width/2,height);
}
