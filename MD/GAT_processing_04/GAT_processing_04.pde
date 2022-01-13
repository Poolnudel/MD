ArrayList<ParticleSystem> systems;
PImage bg;
PImage img;

void setup() {
  //----small
  size(640,400);
  bg = loadImage("bg_small.png");
  //----big
  //size(1920,1200);
  //bg = loadImage("bg.png");
  img = loadImage("leaf.png");
  systems = new ArrayList<ParticleSystem>();
}

void draw() {
  background(bg);
  for (ParticleSystem ps : systems) {
    ps.run();
    ps.addParticle();
  }
  if (systems.isEmpty()) {
    fill(255);
    textAlign(CENTER);
    text("click mouse to add particle systems", width/2, height/2);
  }
}

void mousePressed() {
  systems.add(new ParticleSystem(1, new PVector(mouseX, mouseY)));
}
