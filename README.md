# Clear-Terminal

A simple cmdlet for PowerShell Core (and 5.0) that completely clears your terminal, leaving nothing behind unlike the built-in `Clean-Host` cmdlet.

___NOTE: This is for Microsoft Windows 32bit/64bit **only**.___

# How to install?

Versions will be posted on the releases page of this repository.
1. Click this [link](https://github.com/Zliced13/Clear-Terminal_Cmdlet/raw/main/Clear-Terminal_cmdlet.ps1) here, to download the latest version of `Clear-Terminal`.

    After you have downloaded the file, add the cmdlet to your current PowerShell session, by running:
    ```
    . 'folder_that_you_put_the_PS1_file_in\Clear-Terminal_cmdlet.ps1'
    ```

2. Or you could also run (if you don't like downloading files.):
    ```
    (iwr 'github.com/Zliced13/Clear-Terminal_Cmdlet/raw/main/Clear-Terminal_cmdlet.ps1').Content | iex
    ```

If you want to make the cmdlet **permanent** for every PowerShell session, add one of the two commands to your **`$PROFILE`**.
