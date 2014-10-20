object redstuds: Tredstuds
  Left = 0
  Top = 0
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1089#1090#1091#1076#1077#1085#1090#1072
  ClientHeight = 258
  ClientWidth = 634
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 5
    Height = 19
  end
  object Label2: TLabel
    Left = 32
    Top = 24
    Width = 5
    Height = 19
  end
  object Label3: TLabel
    Left = 24
    Top = 19
    Width = 71
    Height = 19
    Caption = #1060#1072#1084#1080#1083#1080#1103':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 24
    Top = 48
    Width = 35
    Height = 19
    Caption = #1048#1084#1103':'
  end
  object Label5: TLabel
    Left = 24
    Top = 82
    Width = 75
    Height = 19
    Caption = #1054#1090#1095#1077#1089#1090#1074#1086':'
  end
  object Label6: TLabel
    Left = 24
    Top = 128
    Width = 117
    Height = 19
    Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100':'
  end
  object Label7: TLabel
    Left = 24
    Top = 161
    Width = 57
    Height = 19
    Caption = #1043#1088#1091#1087#1087#1072':'
  end
  object Label8: TLabel
    Left = 347
    Top = 13
    Width = 137
    Height = 19
    Caption = #1058#1072#1073#1077#1083#1100#1085#1099#1081' '#1085#1086#1084#1077#1088':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object fam: TEdit
    Left = 101
    Top = 10
    Width = 209
    Height = 27
    TabOrder = 0
  end
  object imya: TEdit
    Left = 104
    Top = 43
    Width = 209
    Height = 27
    TabOrder = 1
  end
  object otch: TEdit
    Left = 104
    Top = 76
    Width = 209
    Height = 27
    TabOrder = 2
  end
  object Button1: TButton
    Left = 537
    Top = 210
    Width = 89
    Height = 29
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'System'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button1Click
  end
  object gpComboBox2: TDBLookupComboBox
    Left = 87
    Top = 153
    Width = 231
    Height = 27
    ListFieldIndex = 1
    TabOrder = 4
  end
  object spComboBox1: TDBLookupComboBox
    Left = 168
    Top = 120
    Width = 393
    Height = 27
    KeyField = 'id'
    ListField = 'name'
    ListFieldIndex = 1
    ListSource = DataModule4.sp_addDataSource
    ParentShowHint = False
    ShowHint = False
    TabOrder = 5
    OnClick = spComboBox1Click
  end
  object nomer: TEdit
    Left = 347
    Top = 38
    Width = 137
    Height = 27
    ReadOnly = True
    TabOrder = 6
  end
  object FDQuery14: TFDQuery
    Connection = DataModule4.FDConnection1
    SQL.Strings = (
      '')
    Left = 184
    Top = 192
  end
  object DataSource3: TDataSource
    DataSet = FDQuery14
    Left = 251
    Top = 193
  end
end
