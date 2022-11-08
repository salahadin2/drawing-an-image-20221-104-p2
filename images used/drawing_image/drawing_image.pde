//Global Variables
int appWidth, appHeight;
float smallerDimension, largerDimension;
Boolean widthLarger=false, heightLarger=false;

float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage pic;
Boolean nightMode=true;

//
size(800,600); //Landscape
//Copy Display Algorithm
appWidth = width;
appHeight = height;
//
// Aspect Ratio calculations
//Obi-wan-star-wars-jedi-23864621-800-600.jpg
int picwidth=800;
int picHeight=600;
//image orientation:Landscap,portrait,square
if (picwidth>=picHeight)
 { //True if Landscape or Square
  largerDimension = picWidth;
  smallerDimension = picHeight;
  widthLarger = true;
} else { //False if Portrait
  largerDimension = picHeight;
  smallerDimension = picWidth;
  heightLarger = true;
}
//
 if ( widthLarger == true ) imageWidthRatio = largerDimension / largerDimension;
if ( widthLarger == true ) imageHeightRatio = smallerDimension / largerDimension;
if ( heightLarger == true ) imageWidthRatio = smallerDimension / largerDimension;
if ( heightLarger == true ) imageHeightRatio = largerDimension / largerDimension;
//
picWidthAdjusted = picWidth * imageWidthRatio;
picHeightAdjusted = picHeight = imageHeightRatio;


//
//Population
pic = loadImage("Obi-wan-star-wars-jedi-23864621-800-600.jpg");
backgroundImageX = appWidth*0;
backgroundImageY = appHeight*0;
backgroundImageWidth = appWidth-1;
backgroundImageHeight = appHeight-1;
//
//Rectangular Layout and Image Drawing to CANVAS
rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
//

if(nightMode==false)       tint (255, 0); //Gray Scale: use 1/2 tint value for white (i.e. 128/256=1/2)
if (nightMode==true)      tint(64, 64, 40); //RGB: Night Mode
image( pic, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
