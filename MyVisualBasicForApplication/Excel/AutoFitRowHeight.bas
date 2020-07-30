Attribute VB_Name = "模块1"
Sub 调整行高()
'在编辑Excel的时候发现一个问题，采用编辑视图看表的时候，行距满足要求，但切换到打印视图的时候，行距就不满足要求了。
'因此，需要对行距进行简单的调整与放大。
'这里采用对两侧增加部分边距进行放大的方法。
Dim i As Integer, ra As Range

For Each ws In ThisWorkbook.Worksheets
' 设置需要调整的区域
    Set ra = ws.Cells(2, 1).End(xlDown)
    Set ra = ws.Range(ws.Cells(2, 1), ra)
' 设置计数器，对于cells.end方法来说，有可能选中表格最后一行，因此设置计数器
    i = 0
    ra.Rows.AutoFit
    For Each ce In ra.Cells
'对于计数器的要求，如果计数器超过某个限值，那么就跳出循环
        If i > 63 Then Exit For
        i = i + 1
' 按公式将行距拉大，注意里面用的是整除，其中参数可调
        ce.RowHeight = ce.RowHeight + 2) \ 10) * 10 + 6

    Next ce

Next ws
End Sub
