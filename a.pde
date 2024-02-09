float a1w=10;
float a1h=70;
float a2w=10;
float a2h=50;
float a3w=10;
float a3h=40;
float a4w=20;
float a4h=1;
float a1a=1.570796327;
float a2a=1.369697497;
float a3a=1.746702095;
float a4a=0;
float a1a_1=0;
float a2a_1=0;
float a3a_1=0;
float a4a_1=0;
float i=0;
float j=0;
float k=0;
float o=0;
float move=0;

void setup() {
  size(1000, 800, P3D);
}
 
void draw() {
  background(255);
  pushMatrix(); 
  translate(width/2, height/2, 0);  //基準点を画面中央。z軸方向には-100
 
  camera(300.0, 100.0, 150.0, // 視点X, 視点Y, 視点Z
         0.0, 0.0, 100.0, // 中心点X, 中心点Y, 中心点Z
         0.0, 0.0, -1.0); // 天地X, 天地Y, 天地Z
  
  
 
  translate(80,0,45);
  box(10);
  translate(-80,0,-45);
  
//アーム1
  translate(move,0,a1h/2);
  rotateZ(a1a_1*-1);
  fill(100);
  box(a1w,a1w,a1h);
  
//アーム2  
  translate(0,0,a1h/2);
  rotateX(a2a_1*-1);
  
  
  translate(0,0,a2h/2);
  fill(140);
  box(a2w,a2w,a2h);
  
//アーム3  
  translate(0,0,a2h/2);
  rotateX(a3a_1*-1);
  
  
  translate(0,0,a3h/2);
  fill(180);
  box(a3w,a3w,a3h);
  
//アーム4  
  translate(0,0,a3h/2);
  rotateX(a4a_1);
  a4a_1=a2a_1+a3a_1;
  
  translate(0,a4w/2,0);
  fill(0);
  box(a4w,a4w,a4h);
  
  popMatrix();
  
  
