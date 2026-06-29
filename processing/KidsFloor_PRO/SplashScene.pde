class SplashScene {

  ParticleSystem particles;

  PImage logo;

  float alpha = 0;

  float logoScale = 0.75;

  SplashScene() {

    particles = new ParticleSystem();

    logo = loadImage("images/logo.png");

  }

  void update() {

    particles.update();

    alpha = min(alpha + 1.4,255);

    logoScale = lerp(logoScale,1.0,0.02);

  }

  void render() {

    background(5,8,18);

    particles.render();

    pushMatrix();

    imageMode(CENTER);

    tint(255,alpha);

    translate(width/2,height/2);

    scale(logoScale);

    image(logo,0,0);

    popMatrix();

    fill(255,alpha);

    textAlign(CENTER);

    textSize(22);

    text("Pise em qualquer lugar para começar",width/2,height-80);

  }

}
