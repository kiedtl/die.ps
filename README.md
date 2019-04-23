# die.ps
'die' functionality for PowerShell.

### Usage
**Syntax**: `die [-m message] [-c exitcode]`

Dot-source the file into your scripts:
```powershell
. "$psscriptroot/lib/die.ps1"
```
Then call the `die` function:
```powershell
if ($error) {
    die 'oops' -c 1
}
```
