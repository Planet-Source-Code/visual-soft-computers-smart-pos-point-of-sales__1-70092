VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "COMCTL32.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form report1 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Gjenerimi i Raporteve Manuale [Arka 1]"
   ClientHeight    =   9795
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   10545
   Icon            =   "frmManual_report.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9795
   ScaleWidth      =   10545
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox txtdata 
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   960
      TabIndex        =   15
      Top             =   8520
      Width           =   2415
   End
   Begin ComctlLib.ListView lst 
      Height          =   4455
      Left            =   120
      TabIndex        =   3
      Top             =   3960
      Width           =   10335
      _ExtentX        =   18230
      _ExtentY        =   7858
      View            =   3
      MultiSelect     =   -1  'True
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      _Version        =   327682
      Icons           =   "ImageList2"
      SmallIcons      =   "ImageList2"
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      Appearance      =   1
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      NumItems        =   4
      BeginProperty ColumnHeader(1) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Pershkrimi"
         Object.Width           =   6175
      EndProperty
      BeginProperty ColumnHeader(2) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   1
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Qmimi"
         Object.Width           =   1765
      EndProperty
      BeginProperty ColumnHeader(3) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   2
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Sasia"
         Object.Width           =   1765
      EndProperty
      BeginProperty ColumnHeader(4) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   3
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "TOTAL"
         Object.Width           =   1765
      EndProperty
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Shtyp Raportin"
      Height          =   450
      Left            =   3600
      TabIndex        =   14
      Top             =   9240
      Width           =   2535
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Anuloje"
      Height          =   450
      Left            =   120
      TabIndex        =   8
      Top             =   9240
      Width           =   1695
   End
   Begin VB.CommandButton cmdexit 
      Caption         =   "Dalja"
      Height          =   450
      Left            =   8760
      TabIndex        =   7
      Top             =   9240
      Width           =   1695
   End
   Begin VB.CommandButton cmdremove 
      Caption         =   "Largoje"
      Height          =   450
      Left            =   1920
      TabIndex        =   6
      Top             =   9240
      Width           =   1575
   End
   Begin VB.TextBox txt 
      Height          =   495
      Index           =   1
      Left            =   2040
      TabIndex        =   2
      Text            =   "Text1"
      Top             =   12000
      Width           =   1575
   End
   Begin VB.TextBox txttotal 
      BackColor       =   &H00808080&
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   8280
      TabIndex        =   1
      Top             =   8520
      Width           =   2175
   End
   Begin VB.TextBox txtbar 
      Height          =   285
      Left            =   6240
      TabIndex        =   0
      Text            =   "Text1"
      Top             =   11640
      Width           =   1095
   End
   Begin SmartMarket.ctrlLiner ctrlLiner1 
      Height          =   30
      Left            =   120
      TabIndex        =   4
      Top             =   9120
      Width           =   10335
      _ExtentX        =   18230
      _ExtentY        =   53
   End
   Begin MSComctlLib.ProgressBar pbar 
      Height          =   375
      Left            =   120
      TabIndex        =   5
      Top             =   12600
      Width           =   10215
      _ExtentX        =   18018
      _ExtentY        =   661
      _Version        =   393216
      BorderStyle     =   1
      Appearance      =   1
   End
   Begin ComctlLib.ListView ListView1 
      Height          =   3495
      Left            =   120
      TabIndex        =   17
      Top             =   360
      Width           =   10335
      _ExtentX        =   18230
      _ExtentY        =   6165
      View            =   3
      MultiSelect     =   -1  'True
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      _Version        =   327682
      Icons           =   "ImageList2"
      SmallIcons      =   "ImageList2"
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      Appearance      =   1
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      NumItems        =   2
      BeginProperty ColumnHeader(1) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Pershkrimi"
         Object.Width           =   9701
      EndProperty
      BeginProperty ColumnHeader(2) {0713E8C7-850A-101B-AFC0-4210102A8DA7} 
         SubItemIndex    =   1
         Key             =   ""
         Object.Tag             =   ""
         Text            =   "Qmimi"
         Object.Width           =   3528
      EndProperty
   End
   Begin VB.Label Label2 
      Caption         =   "Label2"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3720
      TabIndex        =   18
      Top             =   8520
      Width           =   2175
   End
   Begin VB.Label Label5 
      Caption         =   "Data:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   16
      Top             =   8520
      Width           =   1335
   End
   Begin VB.Label Label1 
      BackColor       =   &H00808080&
      Caption         =   "  Informacionet e Artikujve"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00E0E0E0&
      Height          =   255
      Index           =   1
      Left            =   0
      TabIndex        =   13
      Top             =   0
      Width           =   13695
   End
   Begin VB.Label lblsup 
      Caption         =   "Label3"
      Height          =   255
      Left            =   -240
      TabIndex        =   12
      Top             =   11160
      Visible         =   0   'False
      Width           =   1335
   End
   Begin VB.Label labelid 
      Caption         =   "1"
      Height          =   495
      Left            =   3480
      TabIndex        =   11
      Top             =   12120
      Width           =   2295
   End
   Begin ComctlLib.ImageList ImageList2 
      Left            =   8520
      Top             =   11640
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   12632256
      _Version        =   327682
      BeginProperty Images {0713E8C2-850A-101B-AFC0-4210102A8DA7} 
         NumListImages   =   1
         BeginProperty ListImage1 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "frmManual_report.frx":0CCC
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.Label Label4 
      BackColor       =   &H00C0C0FF&
      BackStyle       =   0  'Transparent
      Caption         =   "TOTALI:"
      BeginProperty Font 
         Name            =   "Arial Narrow"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   375
      Left            =   6960
      TabIndex        =   10
      Top             =   8520
      Width           =   1215
   End
   Begin VB.Label lbldata 
      Caption         =   "Label7"
      Height          =   375
      Left            =   7080
      TabIndex        =   9
      Top             =   9360
      Visible         =   0   'False
      Width           =   615
   End
End
Attribute VB_Name = "report1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim id As String

Private Sub cboart_Click()
Call dbshitja
With ar
criteria = "Select *From saledetails Where longdesc='" & cboArt & "'"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
If .RecordCount >= 1 Then
txtbar.Text = !upc
txt(1) = !longdesc
txt(2) = Format(!unitprice, "###,###,##0.00")
txt(4).SetFocus
txt(4) = !quantity
Else
MsgBox "Ky artikull nuk ekziston në bazë.", vbCritical, "Gabim!"
SendKeys "{end}+{home}"
Exit Sub
End If
.Close
End With
lst.ListItems.Add , , txt(1), , 1
lst.ListItems(lst.ListItems.Count).SubItems(1) = txt(2)
lst.ListItems(lst.ListItems.Count).SubItems(2) = txt(4)
lst.ListItems(lst.ListItems.Count).SubItems(3) = Format(CCur(txt(2) * txt(4)), "###,###,##0.00")
txt(2) = ""
txt(1) = ""
txt(4) = ""
cboArt.SetFocus
cmdremove.Enabled = True
int1 = lst.ListItems(lst.ListItems.Count).SubItems(3)
txttotal.Text = Val(txttotal) + int1
If KeyAscii = 8 Or KeyAscii = 46 Then
Exit Sub
End If
If Not IsNumeric(Chr(KeyAscii)) Then
KeyAscii = 0
End If
End Sub

Private Sub cbox_Click()
On Error Resume Next
    Call dbconek
    
    ar.Open "Select *From tblfurnizuesit Where furnizuesi='" & cbox & "'", strConek, adOpenStatic, adLockOptimistic
        lblsup = ar!fur_id
    ar.Close
    txt(3).SetFocus
End Sub

Private Sub cbox_KeyPress(KeyAscii As Integer)
    If KeyAscii = vbKeyDown Or KeyAscii = vbKeyUp Then
        Exit Sub
    End If
    
    KeyAscii = 0
End Sub

Private Sub cmdExit_Click()
    Unload Me
End Sub

Private Sub cmdlookup_Click()
    cboArt.SetFocus
    itemflag = 2
    LoadForm ItemSearch
End Sub

Private Sub cmdnew_Click()
On Error Resume Next
Dim aa
Call dbconek
Dim lastid As String
With ar
criteria = "Select *From purchaseorder"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
.MoveLast
lastid = Mid(!poid, 5, Len(!poid))
lastid = Val(lastid) + 1
Me.Caption = "Porosia NR: " & labelid.Caption
.Close
End With
id = Mid(Me.Caption, 18, 15)
        cboArt.Enabled = True
        cbox.Enabled = True
        txt(0).Enabled = True
        txt(3).Enabled = True
        txt(4).Enabled = True
        Command1.Enabled = True
        cmdSave.Enabled = True
        cmdLookup.Enabled = True
        cmdNew.Enabled = False
        For aa = 0 To 4
            txt(aa) = ""
        Next
        cbox = ""
        cbox.SetFocus
End Sub

Private Sub cmdremove_Click()
If lst.ListItems.Count = 0 Then
Exit Sub
End If
lst.ListItems.Remove (lst.SelectedItem.Index)
'===================Totali
'int1 = lst.SelectedItem(lst.ListItems.Count).SubItems(3)
int1 = Label2.Caption
txttotal.Text = Format(Val(txttotal.Text) - int1, "###,###,##0.00")
If KeyAscii = 8 Or KeyAscii = 46 Then
Exit Sub
End If
If Not IsNumeric(Chr(KeyAscii)) Then
KeyAscii = 0
End If
End Sub

Private Sub cmdsave_Click()
Dim recitem As Integer
Dim I, ii As Integer
Dim a
On Error Resume Next
On Error Resume Next
INTOTAL = 0
'*****************************************************
'Update the Item Master File
Set ac = New ADODB.Connection
Set ar = New ADODB.Recordset
Call artdb
ac.Open strConek
With ar
criteria = "Select *From tblArtikujt Where longdesc='" & lst.ListItems(recitem).Text & "'"
.Open criteria, strConek, adOpenStatic, adLockOptimistic
!stock = Val(!stock) + Val(lst.ListItems(recitem).SubItems(3))
.Update
.Close
End With
'End
    If lst.ListItems.Count = 0 Then
        MsgBox "Nuk ka asgjë për tu ruajtur.", vbInformation, "Gabim!"
        Exit Sub
    End If
    
    'Save to parent table 1 to many relatonship
Call dbconek
With ar
        .Open "Select *From purchaseorder", strConek, adOpenStatic, adLockOptimistic
            .AddNew
                !poid = labelid.Caption
                !podate = Format(Date, "dd/mm/yyyy")
                !supplierid = lblsup
                !supplierdesc = cbox.Text
                !purchaseby = currentemmsuser
                !Memo = txt(3)
                !printed = "JO"
                !fat_nr = txtfat.Text
                !furnizuesi = cbox.Text
                !paguar = txtpaguar.Text
                !borxh = txtborxh.Text
                !totali = txttotal.Text
                !dateserved = lbldata.Caption
            .Update
        .Close
    End With
    pbar.Min = 0
    pbar.Max = 100
    pbar.Value = 0
    
    Call dbconek
    For I = 1 To lst.ListItems.Count
        With ar
            .Open "Select *From podetails", strConek, adOpenStatic, adLockOptimistic
                .AddNew
                    !poid = txtfat.Text
                    !upc = lst.ListItems(I).Text
                    !Description = lst.ListItems(I).SubItems(1)
                    !unitcost = lst.ListItems(I).SubItems(2)
                    !orderedquantity = lst.ListItems(I).SubItems(3)
                    !totalcost = lst.ListItems(I).SubItems(4)
                    !supplierid = lblsup
                    !Status = "PA-PRANUAR"
                    !dateserved = lbldata.Caption
                .Update
            .Close
        End With
        If pbar.Value + (100 / lst.ListItems.Count) >= 100 Then
            pbar.Value = 100
        Else
            pbar.Value = pbar.Value + (100 / lst.ListItems.Count)
        End If
    Next
Open App.Path & "\blerja.txt" For Append As #1
            Print #1, " "
            Print #1, "POROSIA NUMËR: " & labelid.Caption
            Print #1, "FURNIZUESI ID: " & lblsup
            Print #1, "FURNIZUESI: " & cbox.Text
            Print #1, "DATA: " & Format(Date, "dd/mm/yyyy")
            Print #1, " "
            Print #1, "BARKODI" & Space(15 - Len("BARKODI")) & "PERSHKRIMI" & Space(40 - Len("PERSHKRIMI")) & "ÇMIMI" & Space(15 - Len("ÇMIMI")) & "SASIA" & Space(15 - Len("SASIA")) & "TOTAL"
            Print #1, "----------------------------------------------------------------------------------------------------"
            For ii = 1 To lst.ListItems.Count
                Print #1, lst.ListItems(ii).Text & Space(15 - Len(lst.ListItems(ii).Text)) & lst.ListItems(ii).SubItems(1) & Space(40 - Len(lst.ListItems(ii).SubItems(1))) & Format(CCur(lst.ListItems(ii).SubItems(2)), "###,###,##0.00") & Space(15 - Len(Format(CCur(lst.ListItems(ii).SubItems(2)), "###,###,##0.00"))) & Format(CCur(lst.ListItems(ii).SubItems(3)), "###,###,##0.00") & Space(15 - Len(Format(CCur(lst.ListItems(ii).SubItems(3)), "###,###,##0.00"))) & Format(CCur(lst.ListItems(ii).SubItems(4)), "###,###,##0.00")
            Next
            Print #1, "----------------------------------------------------------------------------------------------------"
            Print #1, " "
            Print #1, "POROSITUR NGA: " & currentemmsuser
            Print #1, "NOTES: "
            Print #1, "      " & txt(3)
        Close #1
        Call Command1_Click
End Sub

Private Sub Command1_Click()
Unload Me
End Sub

Private Sub Command2_Click()
On Error Resume Next
Kill App.Path & "\manual.txt"
Open App.Path & "\manual.txt" For Append As #1
Print #1,
Print #1, "Raporti i Shitjes"
Print #1,
Print #1, "Data: " & txtdata.Text
Print #1,
Print #1,
Print #1, "Pershkrimi" & Space(50 - Len("Pershkrimi")) & "Qmimi" & Space(15 - Len("Qmimi")) & "Sasia" & Space(10 - Len("Sasia")) & "Total"
Print #1,
For ii = 1 To lst.ListItems.Count
Print #1, lst.ListItems(ii).Text & Space(50 - Len(lst.ListItems(ii).Text)) & lst.ListItems(ii).SubItems(1) & Space(15 - Len(lst.ListItems(ii).SubItems(1))) & lst.ListItems(ii).SubItems(2) & Space(10 - Len(lst.ListItems(ii).SubItems(2))) & lst.ListItems(ii).SubItems(2) * lst.ListItems(ii).SubItems(1)
Next
Print #1,
Print #1,
rtotal = txttotal.Text
Print #1, Space(85 - Len("TOTAL : " & Format(CCur(rtotal), "###,###,##0.00"))) & ("TOTAL : " & Format(CCur(rtotal), "###,###,##0.00"))
Print #1,
Print #1, "Nenshkrimi:_______________________________"
Close #1
frmReportsManual.Show
Unload Me
End Sub

Private Sub Form_Load()
Call ListView_FullRowSelect(ListView1)
Call ListView_FullRowSelect(lst)
lbldata.Caption = Format(Now, "dd/mm/yyyy")
On Error Resume Next
Call dbconek
ar.Open "Select *From tblFurnizuesit", strConek, adOpenStatic, adLockOptimistic
ar.MoveFirst
Do While Not ar.EOF
cbox.AddItem ar!emri
ar.MoveNext
Loop
ar.Close
'=============
Call artdb
ar.Open "Select *From tblArtikujt", strConek, adOpenStatic, adLockOptimistic
ar.MoveFirst
Do While Not ar.EOF
ListView1.ListItems.Add , , ar!pershkrimi, , 1
ListView1.ListItems(ListView1.ListItems.Count).SubItems(1) = ar!qmimi_shitjes
ar.MoveNext
Loop
ar.Close
'=============
End Sub

Private Sub Text2_Change()

End Sub

Private Sub ListView1_DblClick()
lst.ListItems.Add , , ListView1.ListItems(ListView1.SelectedItem.Index).Text, , 1
lst.ListItems(lst.ListItems.Count).SubItems(1) = ListView1.ListItems(ListView1.SelectedItem.Index).SubItems(1)
lst.ListItems(lst.ListItems.Count).SubItems(2) = "1"
lst.ListItems(lst.ListItems.Count).SubItems(3) = ListView1.ListItems(ListView1.SelectedItem.Index).SubItems(1)
'===================Totali==============================
int1 = txttotal.Text
int2 = lst.ListItems(lst.ListItems.Count).SubItems(3)
'txttotal.Text = Val(int1) + Val(int2)
txttotal.Text = Format(Val(int1) + Val(int2), "###,###,##0.00")
End Sub

Private Sub lst_Click()
Label2.Caption = lst.SelectedItem.SubItems(1)
End Sub

Private Sub txt_GotFocus(Index As Integer)
    SendKeys "{end}+{home}"
End Sub

Private Sub txt_KeyPress(Index As Integer, KeyAscii As Integer)
Select Case Index
    Case 0
        If KeyAscii = 13 Then
Call artdb
            With ar
                criteria = "Select *From tblArtikujt Where upc='" & txt(0) & "'"
                .Open criteria, strConek, adOpenStatic, adLockOptimistic
                    If .RecordCount >= 1 Then
                            txt(1) = !longdesc
                            txt(2) = Format(!unitcost, "###,###,##0.00")
                            txt(4).SetFocus
                        
                    Else
                        MsgBox "Ky artikull nuk ekziston në bazë.", vbCritical, "Gabim!"
                        txt(0).SetFocus
                        SendKeys "{end}+{home}"
                        Exit Sub
                    End If
                .Close
            End With
        End If
    Case 3
        KeyAscii = Asc(UCase(Chr(KeyAscii)))
    Case 4
        If KeyAscii = 13 Then
            lst.ListItems.Add , , txt(1), , 1
            lst.ListItems(lst.ListItems.Count).SubItems(1) = txt(2)
            lst.ListItems(lst.ListItems.Count).SubItems(2) = txt(4)
            'lst.ListItems(lst.ListItems.Count).SubItems(3) = txt(4)
            lst.ListItems(lst.ListItems.Count).SubItems(3) = Format(CCur(txt(2) * txt(4)), "###,###,##0.00")
        txt(2) = ""
        txt(1) = ""

        txt(4) = ""
        cboArt.SetFocus
        cmdremove.Enabled = True
int1 = lst.ListItems(lst.ListItems.Count).SubItems(1)
int2 = lst.ListItems(lst.ListItems.Count).SubItems(3)
'txttotal.Text = Val(txttotal.Text) + Val(int2)
txttotal.Text = Val(txttotal) + int2

        End If
        If KeyAscii = 8 Or KeyAscii = 46 Then
            Exit Sub
        End If
        If Not IsNumeric(Chr(KeyAscii)) Then
            KeyAscii = 0
        End If
'=====================

End Select
End Sub

Private Sub txtpaguar_Change()
On Error Resume Next
txtborxh.Text = txttotal.Text - txtpaguar.Text
End Sub


