class Star
{
  PVector pos;
  PVector colour;
  float radius = 8;
  
  Star()
  {
    Init();
  }
  
  void Init()
  {
    pos = new PVector(random(-width / 2, width / 2), random(-height / 2, height / 2), random(width));
    colour = new PVector(random(255), random(255), random(255));
  }
  
  void Update()
  {
    if (pos.z <= 6)
    {
      pos.z = random(width);
      pos.x = random(-width / 2, width / 2);
      pos.y = random(-height / 2, height / 2);
    }
    if (pos.x + radius < -width)
    {
      pos.x = random(-width / 2, width / 2);
      pos.y = random(-height / 2, height / 2);
    } else if (pos.x - radius > width)
    {
      pos.x = random(-width / 2, width / 2);
      pos.y = random(-height / 2, height / 2);
    }
    pos.z -= 15;
  }
  
  void Draw()
  {
    float x = map(pos.x / pos.z, 0, 1, 0, width);
    float y = map(pos.y / pos.z, 0, 1, 0, height);
    float r = map(pos.z, 0, width, 16, 0);
    
    fill(colour.x, colour.y, colour.z);
    noStroke();
    ellipse(x, y, r, r);
  }
}
