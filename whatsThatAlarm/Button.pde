class Button {
  int xSize, ySize, xPos, yPos, buttonNumber, buttonFunction;
  color bColor, tColor;

  Button(int buttonNumber_) {
    tColor = 0;    
    buttonNumber = buttonNumber_;
  } // end Button constructor

  void display(int xPos_, int yPos_, int xSize_, int ySize_, color bColor_, color tColor_) {
    xSize = xSize_;
    ySize = ySize_;
    xPos = xPos_;
    yPos = yPos_;
    bColor = bColor_;
    tColor = tColor_;
    String buttonText = texts.get(buttonNumber);

    rectMode(CENTER);
    stroke(0);
    strokeWeight(2);
    fill(bColor);
    textAlign(CENTER, CENTER);
    rect(xPos, yPos, xSize, ySize);
    fill(tColor);
    textSize(int(width/100));
    text(buttonText, xPos, yPos);
    if (mousePressed == true) {
      if (mouseX>xPos-xSize && mouseX<xPos+xSize && mouseY <yPos+ySize && mouseY > yPos-ySize) {

        println("Button Clicked"+buttonText);
      }
    }
  } //end display

  /*
  void clickCheck(int mX_, int mY_, int buttonFunction_) {
   int mX = mX_;
   int mY = mY_;
   buttonFunction = buttonFunction_;
   if (mousePressed == true) {
   if (mX>150 && mX<350 && mY <yPos+25 && mY > yPos-25) {
   executeButton(buttonFunction);
   loop();
   println("Button Clicked");
   }
   }
   }//end clickCheck   */
} //end Button class
