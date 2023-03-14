Description: This script allows you to dump the Kernel part of the ram without using any external tool.
Category: LiveResponse
Author: Pedro Sanchez Cordero (conexioninversa)
Version: 1.0
Id: adc74c31-6617-4ae3-b3b3-962b8a5c7cc1
BinaryUrl: https://raw.githubusercontent.com/conexioninversa/Forensics/master/KernelDump.ps1
ExportFormat: FileSystem
Processors:
    -
        Executable: C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe
        CommandLine: -ep bypass -Command %kapedirectory%\Modules\bin\KernelDump.ps1 %destinationDirectory%
        ExportFormat: FileSystem

# Documentation
# Where the Microsoft Storage namespace is available (known not to be available in Win7), PowerShell can be used to invoke a native live memory dump
# The result generates a "Kernel.dmp" file
## Special thanks to Grzegorz Tworek - 0gtweet.
