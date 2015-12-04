"Loading Daniel's PowerShell customizations..."

function help($targetCommand)
{
    <#
    .SYNOPSIS
    Runs the Get-Help command, and sends the output to less.
    
    .DESCRIPTION
    'help' provides a nicer way to call Get-Help. Get-Help doesn't output its results to a pager, resulting in large help files scrolling for a long time, annoyingly. This was partially fixed by 'help', written by Microsoft (? I think?). The other version of help does this: Get-Help $targetCommand | more.

    The problem is that 'more' isn't as useful as 'less' - no arrow key scrolling, no page-up/page-down'ing.

    So basically, this 'help' does this instead: Get-Help $targetCommand | less

    .PARAMETER targetCommand
    The command that help should be retrieved for.

    .EXAMPLE
    help Install-Module
    #>
    Get-Help $targetCommand | less
}

"...Daniel's PowerShell customizations have been loaded."