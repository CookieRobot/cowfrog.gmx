var size;
var pillars=noone;
var windows=noone;
var posters=noone;
var crates =noone;

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
