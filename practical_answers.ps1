function q1($var1,$var2,$var3,$var4) {
    <# Return the product of the arguments #>
    $prod = $var1 * $var2 * $var3 * $var4
    return $prod
    #can do this as well: return $var1 * $var2 * $var3 * $var4 
}
----------------------------------------------------------------------------------------------------------------------------------------
function q2($arr,$rows,$cols,$key) {
    <# Search the 2 dimensional array for the first occurance of key at column index 0
       and return the value at column index 9 of the same row.
       Return -1 if the key is not found.
    #>
    for ($i = 0; $i -lt $rows; $i++) {
        if ($arr[$i][0] -eq $key) {
            return $arr[$i][9]
        }
    }
    return -1
}

OR
----------------------------------------------------------------------------------------------------------------------------------------
function q2($arr,$rows,$cols,$key) {




foreach($I in $arr ){
    if($i[0] -eq $key){
        return $i[9]
      }
}
return -1
}


----------------------------------------------------------------------------------------------------------------------------------------

function q3 {
    <# In a loop, prompt the user to enter positive integers one at time.
       Stop when the user enters a -1. Return the maximum positive
       value that was entered."
	#>


    $maxValue = $null

    while ($true) {
        $input = Read-Host "Enter a positive integer (or -1 to stop)"
        
        if ($input -eq '-1') {
            break
        }
        
        
        $number = [int]::TryParse($input, [ref]$null)
        if ($number -and $input -gt 0) {
            if ($maxValue -eq $null -or $input -gt $maxValue) {
                $maxValue = $input
            }
        } else {
            Write-Host "Invalid input. Please enter a positive integer."
        }
    }

    return $maxValue
----------------------------------------------------------------------------------------------------------------------------------------

OR

function q3 {
$val = 0
do{
  $val2 = Read-Host
  if ($val2 -gt $val){$val = $val2}
  }until($val2 -eq -1)
  return $val
  }




  ----------------------------------------------------------------------------------------------------------------------------------------
function q4($filename,$whichline) {
    <# Return the line of text from the file given by the `$filename
	   argument that corresponds to the line number given by `$whichline.
	   The first line in the file corresponds to line number 0."
	#>



  
  if (-not (Test-Path $filename)) {
    Write-Error "File '$filename' does not exist."
    return
  }

  
  if ($whichline -lt 0 -or $whichline -ge (Get-Content $filename).Count) {
    Write-Error "Invalid line number: $whichline"
    return
  }

  Get-Content $filename | Select-Object -Index $whichline
}
function q5($path) {
    <# Return the child items from the given path sorted
       ascending by their Name
	#>



  if (-not (Test-Path $path -PathType Container)) {
    Write-Error "Path '$path' is invalid or not a directory."
    return
  }
  Get-ChildItem $path | Sort-Object Name
}

OR

  ----------------------------------------------------------------------------------------------------------------------------------------


function q4($filename,$whichline) {
    <# Return the line of text from the file given by the `$filename
	   argument that corresponds to the line number given by `$whichline.
	   The first line in the file corresponds to line number 0."
	#>

return (Get-Content $filename)[$whichline]


  
}

  ----------------------------------------------------------------------------------------------------------------------------------------



function q5($path) {
    <# Return the child items from the given path sorted
       ascending by their Name
	#>



  if (-not (Test-Path $path -PathType Container)) {
    Write-Error "Path '$path' is invalid or not a directory."
    return
  }
  Get-ChildItem $path | Sort-Object Name
}













OR
  ----------------------------------------------------------------------------------------------------------------------------------------


function q5($path) {
return Get-ChildItem -Path $path | Sort-Object -Property name



}
  ----------------------------------------------------------------------------------------------------------------------------------------

function q6 {
    <# Return the sum of all elements provided on the pipeline
	#>

    $sum = 0
    foreach($num in $input){$sum += $num}
    return $sum
 
    
}

  ----------------------------------------------------------------------------------------------------------------------------------------

function q6 {
    <# Return the sum of all elements provided on the pipeline
	#>

    Begin{$sum = 0}
    Process{$sum += $PSitem}
    END{return $sum}
 
    
}

  ----------------------------------------------------------------------------------------------------------------------------------------



function q7 {
	<# Return only those commands whose noun is process #>




    
    $commands = Get-Command -CommandType Cmdlet | Where-Object { $_.Noun -eq 'Process' }
    return $commands
















}
OR
  ----------------------------------------------------------------------------------------------------------------------------------------

function q7 {
	<# Return only those commands whose noun is process #>
    
return Get-Command -noun process


}
  

  ----------------------------------------------------------------------------------------------------------------------------------------

function q8($adjective) {
    <# Return the string 'PowerShell is ' followed by the adjective given
	   by the `$adjective argument
	#>    
    return "Powershell is $adjective"
}

  ----------------------------------------------------------------------------------------------------------------------------------------



function q9($addr) {
	<# Return `$true when the given argument is a valid IPv4 address,
	   otherwise return `$false. For the purpose of this function, regard
	   addresses where all octets are in the range 0-255 inclusive to
	   be valid.
	#>

  $ipv4Pattern = '^(([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])$'
    if ($addr -match $ipv4Pattern) {
        return $true
    } else {
        return $false
    }


}
OR
  ----------------------------------------------------------------------------------------------------------------------------------------

function q9($addr) {

foreach($octect in $addr.split("."){
  if[int]$octet -lt 0 -or [int]$octet -gt 255){
  return $false

  }
}
return $true
----------------------------------------------------------------------------------------------------------------------------------------
function q10($filepath, $lasthash) {
  <# Return `$true if the contents of the file given in the
      `$filepath argument have changed since `$lasthash was
      computed. `$lasthash is the previously computed SHA256#>

  
  if (-not (Test-Path $filepath)) {
    Write-Error "File '$filepath' does not exist."
    return $false
  }

  
  $currentHash = Get-FileHash $lasthash
  
  if ($currentHash -eq $lasthash) {
    return $true  
  } else {
    return $false 
  }

  
   
  



}
OR
---------------------------------------------------------------------------------
function q10($filepath, $lasthash) {
  <# Return `$true if the contents of the file given in the
      `$filepath argument have changed since `$lasthash was
      computed. `$lasthash is the previously computed SHA256#>
      $hash = Get-FileHash -Algorithm SHA256 $filepath
      return $hash.hash -ne $lasthash
   }
