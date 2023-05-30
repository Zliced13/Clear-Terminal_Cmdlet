# Clear-Terminal

A simple command for PowerShell Core and 5.0 that completely clears your terminal, leaving nothing behind unlike the built-in `Clean-Host` cmdlet.

### NOTE: This is for Microsoft Windows **only**.

## How to install?

---
Click this [link](https://github.com/Zliced13/Clear-Terminal_Cmdlet/raw/main/Clear-Terminal_cmdlet.ps1) here, to download the latest version of `Clear-Terminal`.

Versions will be posted on the releases page of this repository.

After you downloaded the file, add the cmdlet to your current PowerShell session, by running:
```
. 'folder_that_you_put_the_PS1_file_in\Clear-Terminal_cmdlet.ps1'
```

Or you could also run (if you don't like downloading files.):
```
(iwr 'github.com/Zliced13/Clear-Terminal_Cmdlet/raw/main/Clear-Terminal_cmdlet.ps1').Content | iex
```
If you want to make it permanent for every PowerShell session, add one of the two commands to your `$PROFILE`.
