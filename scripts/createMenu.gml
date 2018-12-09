///findMenu(menuType, name, cancel, xMenuPos, yMenuPos)

var i;

for (i = 0; i < instance_number(argument0); i += 1)
   {
        a = instance_find(argument0,i)
       
        if (a.name == argument1)
        {
            //attach to master and return master object
            a.menuOptions[argument3,argument4] = self;
            manager = a;
            return a
        }
   }
   
print("no menu found creating a new one called " +argument1)
a = instance_create(0,0,argument0);
a.name = argument1;
a.cancel = argument2;
a.menuOptions[argument3,argument4] = self;
manager = a;
return a

