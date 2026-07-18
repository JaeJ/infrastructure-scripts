Describe "Test-DnsResolution Script" {

    It "Script file exists" {

        $ScriptPath = Join-Path $PSScriptRoot "..\scripts\Test-DnsResolution.ps1"

        Test-Path $ScriptPath | Should -BeTrue

    }

}