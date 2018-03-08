PImage img;
float grey;
color c;
int res = 5;

void setup() {
  size(1696, 954);
  img = loadImage("image.jpg");
  noStroke();
  imageMode(CENTER);
  background(255);
  noLoop();
  colorMode(RGB,1);
  fill(0);
}

void draw() {
  for(int x = 1; x <= img.width; x+=res) {
    for(int y = 1; y <= img.height; y+=res) {
      c = img.get(x, y);
      grey = (red(c)+green(c)+blue(c))/3;
      //fill(grey);
      //rect(x,y,res,res);
      float n = map(grey,0,1,0,6);
      dice(x*2,y*2,n,res*2);
    }
  }
  println("fini !");
}

void dice(int x,int y,float n, int reso) {
  int intN = floor(n)+1;
  switch(intN) {
    case 1:
      ellipse(x+reso/2,y+reso/2,reso/5,reso/5);
      break;
    case 2:
      ellipse(x+reso/4,y+reso*.75,reso/5,reso/5);
      ellipse(x+reso*.75,y+reso/4,reso/5,reso/5);
      break;
    case 3:
      ellipse(x+reso*.25,y+reso*.75,reso/5,reso/5);
      ellipse(x+reso/2,y+reso/2,reso/5,reso/5);
      ellipse(x+reso*.75,y+reso*.25,reso/5,reso/5);
      break;
    case 4:
      ellipse(x+reso*.75,y+reso*.75,reso/5,reso/5);
      ellipse(x+reso/4,y+reso/4,reso/5,reso/5);
      ellipse(x+reso/4,y+reso*.75,reso/5,reso/5);
      ellipse(x+reso*.75,y+reso/4,reso/5,reso/5);
      break;
    case 5:
      ellipse(x+reso*.75,y+reso*.75,reso/5,reso/5);
      ellipse(x+reso/4,y+reso/4,reso/5,reso/5);
      ellipse(x+reso/2,y+reso/2,reso/5,reso/5);
      ellipse(x+reso/4,y+reso*.75,reso/5,reso/5);
      ellipse(x+reso*.75,y+reso/4,reso/5,reso/5);
      break;
    case 6:
      ellipse(x+reso*.66,y+reso*.75,reso/5,reso/5);
      ellipse(x+reso*.33,y+reso/4,reso/5,reso/5);
      ellipse(x+reso*.33,y+reso/2,reso/5,reso/5);
      ellipse(x+reso*.66,y+reso/2,reso/5,reso/5);
      ellipse(x+reso*.33,y+reso*.75,reso/5,reso/5);
      ellipse(x+reso*.66,y+reso/4,reso/5,reso/5);
      break;
  }
}