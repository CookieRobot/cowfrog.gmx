///findMenu(name)
//only use this one if you know the menu exists
//it only returns menu no attach

var i;
print("looking for "+argument0);
for (i = 0; i < instance_number(menuManager); i += 1)
   {
        menu = instance_find(menuManager,i)
       
        if (menu.name == argument0)
        {
            print("found for "+argument0);
            return menu
        }
   }

print("no menu found")
return noone

