object Form1: TForm1
  Left = 964
  Top = 142
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #31616#26131' FTP '#26381#21153#22120
  ClientHeight = 383
  ClientWidth = 421
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #23435#20307
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 12
  object lbl1: TLabel
    Left = 5
    Top = 12
    Width = 60
    Height = 12
    Caption = #20390#21548#31471#21475#65306
  end
  object lbl3: TLabel
    Left = 5
    Top = 59
    Width = 60
    Height = 12
    Caption = #29992#25143#36134#21495#65306
  end
  object lbl4: TLabel
    Left = 5
    Top = 84
    Width = 60
    Height = 12
    Caption = #29992#25143#23494#30721#65306
  end
  object lbl2: TLabel
    Left = 5
    Top = 35
    Width = 60
    Height = 12
    Caption = #26368#22823#36830#25509#65306
  end
  object lbl5: TLabel
    Left = 5
    Top = 107
    Width = 60
    Height = 12
    Caption = #27426#36814#20449#24687#65306
  end
  object lbl6: TLabel
    Left = 5
    Top = 131
    Width = 60
    Height = 12
    Caption = #36864#20986#20449#24687#65306
  end
  object Label1: TLabel
    Left = 202
    Top = 24
    Width = 6
    Height = 27
    Color = clMenu
    Font.Charset = GB2312_CHARSET
    Font.Color = clBlue
    Font.Height = -20
    Font.Name = #24494#36719#38597#40657
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 189
    Top = 6
    Width = 114
    Height = 19
    Caption = #26381#21153#22120#26102#38388#65306
    Color = clMenu
    Font.Charset = GB2312_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = #36855#20320#31616#31070#24037
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object btn1: TButton
    Left = 327
    Top = 8
    Width = 90
    Height = 25
    Caption = #24320' '#21551' '#26381' '#21153
    TabOrder = 0
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 327
    Top = 40
    Width = 90
    Height = 25
    Caption = #20572' '#27490' '#26381' '#21153
    TabOrder = 1
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 327
    Top = 72
    Width = 90
    Height = 25
    Caption = #31243' '#24207' '#36864' '#20986
    TabOrder = 11
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 4
    Top = 151
    Width = 68
    Height = 22
    Caption = ' '#35775#38382#30446#24405#65306
    TabOrder = 12
  end
  object edt_BorrowDirectory: TEdit
    Left = 73
    Top = 152
    Width = 344
    Height = 20
    TabOrder = 2
  end
  object mmo1: TMemo
    Left = 5
    Top = 224
    Width = 412
    Height = 151
    ScrollBars = ssVertical
    TabOrder = 3
  end
  object edt_BorrowPort: TEdit
    Left = 61
    Top = 8
    Width = 88
    Height = 20
    TabOrder = 4
    Text = '21'
  end
  object edt_MaxConn: TEdit
    Left = 61
    Top = 32
    Width = 88
    Height = 20
    TabOrder = 7
    Text = '100'
  end
  object edt_UserName: TEdit
    Left = 61
    Top = 56
    Width = 88
    Height = 20
    TabOrder = 5
    Text = 'admin'
  end
  object edt_UserPassword: TEdit
    Left = 61
    Top = 80
    Width = 88
    Height = 20
    TabOrder = 6
    Text = 'admin'
  end
  object edt_WelMessage: TEdit
    Left = 61
    Top = 104
    Width = 356
    Height = 20
    TabOrder = 8
    Text = #27426#36814#36827#20837'FTP'#26381#21153#22120' !!!'
  end
  object edt_ExitMessage: TEdit
    Left = 61
    Top = 128
    Width = 356
    Height = 20
    TabOrder = 9
    Text = 'Bye !!!'
  end
  object ProgressBar1: TProgressBar
    Left = -3
    Top = 376
    Width = 428
    Height = 9
    Max = 255
    Position = 200
    TabOrder = 10
  end
  object GroupBox1: TGroupBox
    Left = 5
    Top = 180
    Width = 412
    Height = 41
    Caption = #36134#25143#26435#38480
    TabOrder = 13
    object CheckBox1: TCheckBox
      Left = 14
      Top = 16
      Width = 65
      Height = 17
      Caption = #19979#36733#25991#20214
      Checked = True
      State = cbChecked
      TabOrder = 0
    end
    object CheckBox2: TCheckBox
      Left = 94
      Top = 16
      Width = 65
      Height = 17
      Caption = #19978#20256#25991#20214
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object CheckBox3: TCheckBox
      Left = 174
      Top = 16
      Width = 65
      Height = 17
      Caption = #25991#20214#26356#21517
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object CheckBox4: TCheckBox
      Left = 254
      Top = 16
      Width = 65
      Height = 17
      Caption = #21024#38500#25991#20214
      TabOrder = 3
    end
    object CheckBox5: TCheckBox
      Left = 334
      Top = 16
      Width = 65
      Height = 17
      Caption = #21019#24314#30446#24405
      TabOrder = 4
    end
  end
  object MainMenu1: TMainMenu
    AutoHotkeys = maManual
    Left = 294
    object N1: TMenuItem
      Caption = #25991#20214
      object N2: TMenuItem
        Caption = #26085#24535
      end
      object N3: TMenuItem
        Caption = #36864#20986
        OnClick = N3Click
      end
    end
    object N4: TMenuItem
      Caption = #35774#32622
      object N5: TMenuItem
        Caption = #36319#38543#31995#32479#21551#21160
      end
      object N6: TMenuItem
        Caption = #21551#21160#21518#20390#21548
      end
      object N7: TMenuItem
        Caption = #21551#21160#21518#26368#23567#21270
      end
    end
    object N8: TMenuItem
      Caption = #24110#21161
      object N9: TMenuItem
        Caption = #20351#29992#25163#20876
      end
      object N10: TMenuItem
        Caption = #22312#32447#26356#26032
      end
      object N11: TMenuItem
        Caption = #20851' '#20110' ...'
        OnClick = N11Click
      end
    end
  end
  object dlgOpen1: TOpenDialog
    Left = 296
    Top = 32
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 296
    Top = 64
  end
end
