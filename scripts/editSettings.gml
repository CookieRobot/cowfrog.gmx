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
        
        control = instance_find(controller,0);
        if (control == noone)
        {
            print("Persistence is a fuck")
            break;
        }
        switch(argument1)
            {
            case 0:
                window_set_fullscreen(false);
                window_set_size(240,160);
                control.alarm[0] =1;
            break; 
            case 1:
                window_set_fullscreen(false);
                window_set_size(240*2,160*2);
                control.alarm[0] =1;
            break;
            case 2:
                window_set_fullscreen(false);
                window_set_size(240*3,160*3);
                control.alarm[0] =1;
            break;
            case 3:
                window_set_fullscreen(true);
            break;
        }
    break;

}
