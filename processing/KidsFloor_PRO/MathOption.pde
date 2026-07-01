class MathOption {

  float x;
  float y;

  float size;

  int value;

  MathOption(float x,float y,float size){

    this.x=x;
    this.y=y;
    this.size=size;

  }

  boolean contains(float px,float py){

    return dist(px,py,x,y)<size/2;

  }

  void render(){

    fill(50,150,255);

    stroke(255);

    strokeWeight(4);

    ellipse(x,y,size,size);

    fill(255);

    textAlign(CENTER,CENTER);

    textSize(40);

    text(value,x,y);

  }

}
