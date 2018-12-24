//getHouse
size= noone;
pillars=noone;
windows=noone;
posters=noone;
crates =noone;

h1 = ds_map_find_value(global.map,argument0)
//getSize
type = "Size"
print(type)
s = ds_map_find_value(h1,type)
size = readList(s);
print(size)
//getPillars
type = "Pillars"
print(type)
s = ds_map_find_value(h1,type)
a = readList(s);
for (i = 0; i<array_length_1d(a)&&readList(a[i]) != noone;i++)
{

    pillars[i] = readList(a[i])
}
print(pillars)
//getWindows
type = "Windows"
print(type)
s = ds_map_find_value(h1,type)
a = readList(s);
for (i = 0; i<array_length_1d(a)&&readList(a[i]) != noone;i++)
{
    windows[i] = readList(a[i])
}
print(windows)
//getPosters
type = "Posters"
print(type)
s = ds_map_find_value(h1,type)
a = readList(s);
for (i = 0; i<array_length_1d(a)&&readList(a[i]) != noone;i++)
{
    posters[i] = readList(a[i])
}
print(posters)
//getCrates
type = "Crates"
print(type)
s = ds_map_find_value(h1,type)
a = readList(s);
for (i = 0; i<array_length_1d(a)&&readList(a[i]) != noone;i++)
{
    crates[i] = readList(a[i])
}
print (crates)


pillarCount=0;
windowCount=0;
posterCount=0;
crateCount =0;

if (pillars!=noone)
{
pillarCount = array_length_1d(pillars);
}
if (windows!=noone)
{
windowCount = array_length_1d(windows);
}
if (posters!=noone)
{
posterCount = array_length_1d(posters);
}
if (crates!=noone)
{
crateCount = array_length_1d(crates);
}
//pillarChoice=0;
windowChoice[0]=0;
posterChoice[0]=0;
crateChoice[0] =0;
for (i = 0; i< windowCount;i++)
{
windowChoice[i] = irandom_range(0,sprite_get_number(window)-1);
}
for (i = 0; i< posterCount;i++)
{
posterChoice[i] = irandom_range(0,sprite_get_number(Posters)-1);
}
for (i = 0; i< crateCount;i++)
{
crateChoice[i] = irandom_range(0,sprite_get_number(Crates)-1);
}

