$ErrorActionPreference = 'Stop'

# This is an example PowerShell script that will remotely execute a Unicorn sync using the new CHAP authentication system.

$ScriptPath = 'c:\Works\Meetup.Unicorn.Demo\build\unicorn.psm1'

Import-Module $ScriptPath

# SYNC ALL CONFIGURATIONS
Sync-Unicorn -ControlPanelUrl 'http://unicorn.demo/unicorn.aspx' -SharedSecret 'ED33748F03202A84FC175B88A5CE566942346E3249316548D23D2E3832F46044'


# Note: you may pass -Verb 'Reserialize' for remote reserialize. Usually not needed though.

# Note: If you are having authorization issues, add -DebugSecurity to your cmdlet invocation; this will display the raw signatures being used to compare to the server.