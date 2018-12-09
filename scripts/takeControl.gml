print("A new object has taken the controller")
control = instance_find(controller,0);
if control == noone
{
control = instance_create(0,0,controller);
}
control.target = self;
return control;
