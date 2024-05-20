ssh student@10.50.X.X -X (enter ips for X.X)
ssh student@10.50.32.21 -X (Windows)
ssh student@10.50.38.145 -X (Linux Use terminator command to open weird cmd)
Terminator

http://10.50.24.190/challenges
LCplElliott
passwd: Carmel69420!
xfreerdp /u:student /v:10.50.32.21 -dynamic-resolution +glyph-cache +clipboard


-----------------------------------------------------------------------------DAY 1--------------------------------------------------------------
>> $false and $true
important variables
>> $_ (pipeline var)
>> $Mathces
>> $Input
!TYPECASTING
([string]$false + 'hello world')
[int]
[float]
[array]




$true + 'hello world'


METHODS:
>> .GetType()
>> .Name (doesnt print table just prints type USEFUL!!!)
>> | get-member 



Single quotes are literal
Double quotes are the value

example '$var1' will print $var1
example "$var1" will print the actual content of $var1
