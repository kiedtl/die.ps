#!/usr/bin/env pwsh

function die {
    param (
        [alias('m')][string]$diemsg,
        [alias('c')][int]$exitcode = 0
    )
    if ($diemsg) {
        if ($host.UI.SupportsVirtualTerminal) { 
            write-output ("{0}[1;38;2;355;0;0m{1}{0}[0m" -f ([char]0x1B),$diemsg)
        } else {
            write-output $diemsg
        }
    }
    exit $exitcode
}
