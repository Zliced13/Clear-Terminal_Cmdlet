<#PSScriptInfo

.VERSION 0.1

.AUTHOR Zliced13

.COMPANYNAME Zliced13

.COPYRIGHT Kris Schneider

.TAGS

.LICENSE MIT

.LICENSEURI https://github.com/Zliced13/Clear-Terminal_Cmdlet/raw/main/LICENSE

.PROJECTURI https://github.com/Zliced13/Clear-Terminal_Cmdlet

.ICONURI

.EXTERNALMODULEDEPENDENCIES

.REQUIREDSCRIPTS

.EXTERNALSCRIPTDEPENDENCIES

.RELEASENOTES
    Version 0.1: Added the Clear-Terminal_cmdlet.ps1 file. First release.
    Version 0.2: Improved the script so the aliases work better for PowerShell Core.
    Version 0.2.2: Fixed bugs that occurred with PowerShell Core.
    Version 0.2.4: Fixed bugs that occurred with PowerShell Core & Desktop.
    Version 0.2.45: Edited the about page for Clear-Terminal.
    Version 0.3: Edited and fixed the about page for Clear-Terminal.
    Version 0.3.1: Edited and fixed the about page for Clear-Terminal again.
#>

foreach ($Private:alias in @('cls', 'clear', 'clt')) {
    Set-Alias $Private:alias 'Clear-Terminal' -Force -Option 'AllScope', 'Constant', 'ReadOnly' -Scope 'Global' -Description 'Aliases for the Clear-Terminal cmdlet' | Out-Null
}

<#
.SYNOPSIS
    An improved version of the Clear-Host cmdlet.
.DESCRIPTION
    Clears everthing in the display in the host program, leaving nothing behind.
.PARAMETER Help
    Displays this message, it will not accept any values. Aliases, h.
.EXAMPLE
    Clear-Terminal <NoParameters>
.ALIASES
    'cls', 'clear', 'clt'
#>

function Clear-Terminal {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [switch][Alias('h')]$Help
    )
    process {
        if ($Help) { Get-Help 'Clear-Terminal' -Full; break }
        if (!(Get-Command 'cmd' -ErrorAction 'SilentlyContinue')) {
            Write-Host "`e[31;1mPlease run the following commands to restore 'cmd.exe' as the `e[33mClear-Terminal`e[31;1m cmdlet relies on it,`e[0m"
            Write-Host "`nDISM /Online /Cleanup-Image /ScanHealth; DISM /Online /Cleanup-Image /CheckHealth; DISM /Online /Cleanup-Image /RestoreHealth; SFC /Scannow"
            break
        }
        else {
            cmd /c 'cls'
        }
    }
}
