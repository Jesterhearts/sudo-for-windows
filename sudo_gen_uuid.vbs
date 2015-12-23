set obj = CreateObject("Scriptlet.TypeLib")
WScript.StdOut.WriteLine Replace(Replace(Replace(obj.GUID,"{",""),"}",""),"-","_")
