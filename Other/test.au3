$appDir        = "D:\PortableApps\FreeMind\App"
$javaClassPath = $appDir & "\lib\freemind.jar;" & $appDir & "\lib\commons-lang-2.0.jar;" & $appDir & "\lib\forms-1.0.5.jar;" & $appDir & "\lib\jibx\jibx-run.jar;" & $appDir & "\lib\jibx\xpp3.jar;" & $appDir & "\lib\bindings.jar"

ShellExecute("D:\PortableApps\Java\bin\javaw.exe", "-Xmx256M -Xss8M -Duser.home=D:\PortableApps\FreeMind\Settings -jar " & $appDir & "\lib\freemind.jar")
;ShellExecute("D:\PortableApps\Java\bin\javaw.exe", "-jar D:\PortableApps\FreeMind\App\lib\freemind.jar %*", "D:\PortableApps\FreeMind\App")