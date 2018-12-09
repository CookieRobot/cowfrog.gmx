//This script checks if a pair of values is a valid option in a 2D arrays
//0 = 2d array
//1 = height
//2 = length
//all negative numbers are invalid
if(argument1<0||argument2<0)
{
return false;
}

if(argument1 >= array_height_2d(argument0))
{
return false;
}

if argument2>= array_length_2d(argument0,argument1)
{
return false;
}
return true;
