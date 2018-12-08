//bullet is off screen left
a = (x < view_xview[0])

//bullet is off screen right
b = (x > view_xview[0]+view_wview[0])

if (a||b )
{
instance_destroy(self);
print("Object is off screen and will be destroyed")
}

