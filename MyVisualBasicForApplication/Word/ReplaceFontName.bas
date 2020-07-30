Attribute VB_Name = "模块1"
Sub marco1()
For Each i In ActiveDocument.Characters
    With i.Font
        '选择字体名称，根据字体名称找到需要替换的字体，通过select case 语句实现扩展
        Select Case .Name
            Case "仿宋_GB2312"
                .Name = "仿宋"
        End Select
    End With
Next i
End Sub
