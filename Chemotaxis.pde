Pig pigSpawn = new Pig();
Pig[] pigNum;
int arrayNum = 3;
void setup()   
{
  size(900, 750); 
  pigNum = new Pig[arrayNum];
  for (int i = 0; i < pigNum.length; i++)
  {
    pigNum[i] = new Pig();
  }
}   
void draw()   
{  
  background(#4B2626);
  for (int i = 0; i < pigNum.length; i++)
  {
    pigNum[i].show();
    pigNum[i].walk();
  }
  pigSpawn.show();
  pigSpawn.walk();
}  
class Pig   
{  
  int pigX;
  int pigY;
  Pig()
  {
    pigX=pigY=100;
  }
  void walk()
  {
    if (mouseX > pigX + 135)
    {
      pigX = pigX + (int)(Math.random()*5);
    } 
    else
    {
      pigX = pigX - (int)(Math.random()*5);
    }
    if (mouseY > pigY + 110)
    {
      pigY = pigY + (int)(Math.random()*5);
    } 
    else
    {
      pigY = pigY - (int)(Math.random()*5);
    }
  }
  void show()
  {
    //piggies
    fill(#E367C6);
    //left foot
    ellipse(pigX+120, pigY+160, 10, 10);
    //right foot
    ellipse(pigX+160, pigY+160, 10, 10);
    //body
    ellipse(pigX+140, pigY+120, 100, 80);
    //left ear
    ellipse(pigX+85, pigY+65, 30, 30);
    //right ear
    ellipse(pigX+130, pigY+65, 30, 30);
    //main head
    ellipse(pigX+108, pigY+88, 70, 70);
    //perimeter of nose
    ellipse(pigX+108, pigY+100, 45, 25);
    //left nostril
    ellipse(pigX+100, pigY+100, 10, 10);
    //right nostril
    ellipse(pigX+115, pigY+100, 10, 10);
    //left eye
    fill(0);
    ellipse(pigX+97, pigY+75, 10, 10);
    //right eye
    ellipse(pigX+120, pigY+75, 10, 10);

    //big daddy
    //left foot
    fill(#E367C6);
    ellipse(mouseX-20, mouseY+45, 30, 30);
    //right foot
    ellipse(mouseX+25, mouseY+45, 30, 30);
    //body
    ellipse(mouseX, mouseY, 120, 100);
    //left ear
    ellipse(mouseX-70, mouseY-80, 30, 30);
    //right ear
    ellipse(mouseX-10, mouseY-80, 30, 30);
    //main head
    ellipse(mouseX-40, mouseY-40, 90, 90);
    //perimeter of nose
    ellipse(mouseX-40, mouseY-25, 55, 35);
    //left nostril
    ellipse(mouseX-50, mouseY-25, 15, 15);
    //right nostril
    ellipse(mouseX-30, mouseY-25, 15, 15);
    //left eye
    fill(0);
    ellipse(mouseX-50, mouseY-55, 10, 10);
    //right eye
    ellipse(mouseX-30, mouseY-55, 10, 10);
    
    //bodies of water
    fill(#151AE8);
    rect(30,30,100,690);
    rect(770,30,100,690);
    fill(#087621);
    rect(325,250,250,250);
  }
}  