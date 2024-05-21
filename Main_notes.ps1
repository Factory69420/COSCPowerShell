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





>&$varname - will run  the code stored in the variable


` is the escape character for powershell it will allow us to have things on more than one line (wrapping words) 
Sort-object will sort



-------------------------------------------------------------------------------DAY 2-----------------------------------------------------------------------


$nums = 1,2,3,4,5
$nums.GetType()
$nums | ForEach-Object{$_ * 2}
foreach($I in $nums){$i * 2}
-----------------------------------------------------------------------------------------------------------------------------------------------------------
$BB = "Mr. Krabs", "Sandy", "spOnGe bOb", "Patrick", "Larry the Lobster", "Plankton"
foreach($fish in $BB)
{
if($fish -like 'SPONGE*'){
    "$fish is the best fry cook"

    }
    elseif($fish -match '^L.*r$'){
        "$fish has the most gains"
    }
    else{
     "$fish is a fine citizen"
    }
}

--------------------------------------------------------------------------------------------------------------------------------------------------------------
$num = 0



while($num -lt 5){
    $num
    $num++
}
---------------------------------------------------------------------------------------------------------------------------------------------------------------



>'cat','dog' -join " "
output: cat dog



