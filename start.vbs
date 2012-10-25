Set WshShell = CreateObject("WScript.Shell")
cmds = WshShell.RUN("C:\www\local-pypi\start.cmd", 0, True)
Set WshShell = Nothing
