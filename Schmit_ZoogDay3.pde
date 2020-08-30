float speed;
int rZoog;
int bZoog;
int gHead;

void setup(){
size(500,500);
//20 Frames/Second
frameRate(20);
background(255);
}

void draw(){
//Calculates how fast mouse is moving
speed = sqrt(abs(mouseX-pmouseX)^2+abs(mouseY-pmouseY)^2);
//draws Zoog
zoog();
//Declare colors based on mouse location
rZoog = mouseX/2;
bZoog = mouseY/2;
//Will make g value green when 'speed' is more than 10
gHead = int(speed/10)*255;
}

void mouseMoved(){
//Only if mouse is moving and not pressed
background(255);
}

void mouseDragged(){
//Only if mouse is pressed and moving
zoog();
}

void zoog(){
//Draw a white background 
background(255);


//set shapes to Center Mode
ellipseMode(CENTER);
rectMode(CENTER);

//Body
stroke(0);
fill(rZoog,0,bZoog);
rect(mouseX,mouseY,20,100);

//Head
stroke(0);
fill(0,gHead,0);
circle(pmouseX,pmouseY-30,60);

//Eyes
fill(rZoog,0,bZoog);
ellipse(pmouseX+20,pmouseY-30,16,32);
ellipse(pmouseX-20,pmouseY-30,16,32);

//Legs
stroke(0);
line(pmouseX-10,pmouseY+50,pmouseX-10,pmouseY+70);
line(pmouseX+10,pmouseY+50,pmouseX+10,pmouseY+70);

//Arms
stroke(0);
line(pmouseX-10,pmouseY,pmouseX-20,pmouseY+20);
line(pmouseX+10,pmouseY,pmouseX+20,pmouseY+20);
}
