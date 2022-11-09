Param(
    [string]$Status = "NotSigned",
    [string]$OutputFilePath = "C:\temp\"
)


$sys32 = Get-ChildItem "C:\Windows\system32\*.exe"
$sys64 = Get-ChildItem "C:\Windows\SysWOW64\*.exe"
$sys32dll = Get-ChildItem "C:\Windows\system32\*.dll"
$sys64dll = Get-ChildItem "C:\Windows\SysWOW64\*.dll"

$SystemDirectories = @($sys32, $sys64, $sys32dll, $sys64dll)

function StatusProgram($EXEorDLLReview, $SignResult)
{
    $md5 = Get-FileHash -Algorithm MD5 $EXEorDLLReview.FullName
    $sha256 = Get-FileHash -Algorithm SHA256 $EXEorDLLReview.FullName
    $HashResult = $SignResult | Select-Object *, @{n="FileHashMd5"; e={$md5.Hash}}, @{n="FileHashSha256"; e={$sha256.Hash}}
    $JSONResult = $HashResult | ConvertTo-Json -Depth 4
    $JSONResult | Out-File -Append $OutputFilePath"\Status.json"
}

function SignScheck($Directorio)
{
    ForEach($EXEorDLLReview in $Directorio)
    {
        if ((Get-Item $EXEorDLLReview.Fullname) -is [System.IO.DirectoryInfo]){
            continue
        }else{
            $SignResult = Get-AuthenticodeSignature $EXEorDLLReview.FullName -ErrorAction SilentlyContinue | Select *
            if ("All" -in $Status){
                StatusProgram $EXEorDLLReview $SignResult
            } elseif ($Status -in $SignResult.Status) {
                StatusProgram $EXEorDLLReview $SignResult
            }
        }
    }    
}

function main()
{
    ForEach($Directorio in $SystemDirectories){
        SignScheck($Directorio)
    }
}

main

Get-Content -Path c:\temp\Status.json

