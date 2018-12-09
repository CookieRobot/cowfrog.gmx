///editSettings(setting, value)
switch(argument0)
{
    default:
    print("attempted to set an invalid option")
    break;
    
    case "screenShake":
    global.screenShake = argument1;
    break;
    
    case "resolution":
    global.resolution = argument1;
    break;

}
