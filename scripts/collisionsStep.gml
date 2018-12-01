//collisions

if(place_meeting(x+xVelo,y,objSolid))
{
    while(!place_meeting(x+sign(xVelo),y,objSolid))
    {
        x+=sign(xVelo);
    }
    xVelo = 0;
}
if(place_meeting(x,y+yVelo,objSolid))
{
    while(!place_meeting(x,y+sign(yVelo),objSolid))
    {
        y+=sign(yVelo);
    }
    yVelo = 0;
}
x+=xVelo;
y+=yVelo;
grounded = place_meeting(x,y+1,objSolid)
//final collision fix
saved = false;
if (place_meeting(x,y,objSolid))
{
    
   // show_debug_message("Got stuck");
   for(m=0;m<100;m++)
   {
        if(!place_meeting(x,y-m,objSolid))
            {
                y-=m;
                saved = true;   
            }
        if (saved)
            {
                 break;
            }  
   
        if(!place_meeting(x,y+m,objSolid))
            {
                y+=m;
                saved = true;   
            }
        if (saved)
            {
                 break;
            }  
  
        if(!place_meeting(x-m,y,objSolid))
            {
                x-=m;
                saved = true;   
            }
        if (saved)
            {
                 break;
            }  
   
        if(!place_meeting(x+m,y-m,objSolid))
            {
                x+=m;
                saved = true;   
            }
        if (saved)
            {
                 break;
            }  
   }
   

}

return saved
