Star[] stars = new Star[0];

boolean CheckStarPos(PVector pos)
{
  for (int i = 0; i < stars.length; i++)
  {
    float distance = sqrt(((pos.x - stars[i].pos.x) * (pos.x - stars[i].pos.x)) + ((pos.y - stars[i].pos.y) * (pos.y - stars[i].pos.y)));
    
    if (distance < stars[i].radius * 2)
    {
      return false;
    }
  }
  return true;
}

void SpawnStar(Star star)
{
    Star[] newStars = new Star[stars.length + 1];
    for (int i = 0; i < stars.length; i++)
    {
        newStars[i] = stars[i];
    }
    newStars[stars.length] = star;
    stars = newStars;
}

void setup()
{
  size(1422, 800);
  for (int i = 0; i < 400; i++)
  {
    SpawnStar(new Star());
  }
}

void draw()
{
  background(0);
  translate(width/2, height/2);
  
  for (int i = 0; i < stars.length; i++)
  {
    stars[i].Update();
    stars[i].Draw();
  }
}
