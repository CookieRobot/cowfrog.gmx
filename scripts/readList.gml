listLength = ds_list_size(argument0)
var listContents = noone;
listIterate = 0
while listIterate < listLength
{

listContents[listIterate] = ds_list_find_value(argument0,listIterate);
listIterate+=1;
}

//print(listContents)
return listContents;
