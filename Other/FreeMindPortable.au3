; =====================================================
; FreeMind 0.9.0 Portable Launcher
;
; @author Janne Cederberg <janne.cederberg@gmail.com>
; @date Jan. 2, 2013
; @version 0.1
; @license GPL
; =====================================================

$appRoot       = @ScriptDir & "\App"
$javaExe       = @ScriptDir & "\..\Java\bin\javaw.exe"
$userdata      = @ScriptDir & "\Settings"
$javaParams    = "-Xmx256M -Xss8M"
$iniFile       = "FreeMindPortable.ini"

; Komentoriviparametrien handlaus
$fileParams = ''
$fileParamsLen = $CmdLine[0]
If ( $fileParamsLen > 0 ) Then
	For $i = 1 To $fileParamsLen
		$fileParams &= ' "' & $CmdLine[$i] & '"'
	Next
EndIf

If FileExists($iniFile) Then
	$appPath = IniRead($iniFile, "FreeMindPortable", "ApplicationRoot", $appRoot)
	$javaExe = IniRead($iniFile, "FreeMindPortable", "PathToJavaExe", $javaExe)
	$userdata = IniRead($iniFile, "FreeMindPortable", "UserData", $userdata)
	$javaParams = IniRead($iniFile, "FreeMindPortable", "ExtraJavaParams", $javaParams)
EndIf

If FileExists($javaExe) Then
	If Not FileExists($userdata) Then
		DirCreate($userdata)
		Sleep(100)
	EndIf
	ShellExecute($javaExe, " " & $javaParams & " -Duser.home=" & $userdata & " -jar " & $appRoot & "\lib\freemind.jar" & $fileParams)
Else
	MsgBox(16, "Error", "Java Runtime Environment not found! See FreeMindPortable.ini")
EndIf