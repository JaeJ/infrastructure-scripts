Describe "Test-NetworkConnectivity Script" {

    It "Script file exists" {

        $ScriptPath = Join-Path $PSScriptRoot "..\scripts\Test-NetworkConnectivity.ps1"

        Test-Path $ScriptPath | Should -BeTrue

    }

}