///editSettings(setting, value)
switch(argument0)
{
    default:
    print("attempted to set an invalid option")
    break;
    
    case "screenShake":
    print("changing screenShake")
    global.screenShake = argument1;
    
    
    if (global.screenShake == 4)
    {
        global.rida = 1;
    }
    else
    {
        global.rida = 0;
    }
    
    break;
    
    case "resolution":
    global.resolution = argument1;
    break;

}
