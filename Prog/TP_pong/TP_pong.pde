int deplacementX, deplacementY;
int x, y;

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

noStroke();
fill(255);

}


void draw()
{
nettoyer(); bouger(); rebondir(); dessiner();

}


void nettoyer()
{
background(0);
}


void rebondir()
{

// si on est trop à droite ET le déplacement horizontal est positif
if (x > width-10 && deplacementX > 0)
{
deplacementX = -deplacementX; // inverser la valeur
}

// si on est trop bas et le déplacement vertical est positif
if (y > width-10 && deplacementY > 0)
{
deplacementY = -deplacementY; // inverser la valeur
}

// si on est trop haut et le déplacement vertical est negatif
if (y < 10 && deplacementY < 10)
{
deplacementY = -deplacementY; // inverser la valeur
}

if (x<w+25 && x>w+10 && y+10>z && y-10<z+85)
{
deplacementX = abs(deplacementX); // rendre positive cette valeur
}

if (x < -12)
{
deplacementX = 0;
deplacementY = 0;
fill(255,0,0);
textSize(28);
text("GAMEOVER",130,150);
textSize(18);
text("appuyer sur ' r ' pour rejouer",100,180);

if(keyPressed)
{
if(key == 'r')
{
x = 200;
y = 200;
deplacementX = int(random(4,8));
deplacementY = int(random(-4,-1));
}
}
}
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

