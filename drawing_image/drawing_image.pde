////Background Image Example
//Reivew issues of overlapping colour and opacity
//
//Global Variables
int appWidth, appHeight;
float imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight;
PImage pic;
//
size(500, 100); //Landscape
//Copy Display Orientation
appWidth = width;
appHeight = height;
//
//Population
pic = loadImage("../images Used/file:///F:/My%20Documents/GitHub/drawing-an-image-20221-104-p2/images%20used/4cbe8d_f1ed2800a49649848102c68fc5a66e53mv2%20(1).webp ");
imageBackgroundX = appWidth*0;
imageBackgroundY = appHeight*0;
imageBackgroundWidth = appWidth-1;
imageBackgroundHeight = appHeight-1;
//
//Rectangle Layout and Image drawing to CANVAS
rect( imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight);
//
image( pic, imageBackgroundX, imageBackgroundY, imageBackgroundWidth, imageBackgroundHeight);
