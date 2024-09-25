object frmConsultaCEP: TfrmConsultaCEP
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta CEP'
  ClientHeight = 252
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 21
    Height = 15
    Caption = 'CEP'
  end
  object Panel1: TPanel
    Left = 8
    Top = 56
    Width = 612
    Height = 169
    TabOrder = 2
    object Label2: TLabel
      Left = 8
      Top = 8
      Width = 62
      Height = 15
      Caption = 'Logradouro'
    end
    object lblComplemento: TLabel
      Left = 359
      Top = 8
      Width = 77
      Height = 15
      Caption = 'Complemento'
    end
    object Label3: TLabel
      Left = 8
      Top = 58
      Width = 31
      Height = 15
      Caption = 'Bairro'
    end
    object Label4: TLabel
      Left = 359
      Top = 58
      Width = 57
      Height = 15
      Caption = 'Localidade'
    end
    object Label5: TLabel
      Left = 560
      Top = 58
      Width = 14
      Height = 15
      Caption = 'UF'
    end
    object lblEstado: TLabel
      Left = 8
      Top = 108
      Width = 35
      Height = 15
      Caption = 'Estado'
    end
    object Label6: TLabel
      Left = 216
      Top = 108
      Width = 36
      Height = 15
      Caption = 'Regi'#227'o'
    end
    object Label7: TLabel
      Left = 359
      Top = 108
      Width = 24
      Height = 15
      Caption = 'IBGE'
    end
    object Label8: TLabel
      Left = 431
      Top = 108
      Width = 19
      Height = 15
      Caption = 'GIA'
    end
    object Label9: TLabel
      Left = 498
      Top = 108
      Width = 24
      Height = 15
      Caption = 'DDD'
    end
    object Label10: TLabel
      Left = 560
      Top = 108
      Width = 26
      Height = 15
      Caption = 'SIAFI'
    end
    object edtLogradouro: TEdit
      Left = 8
      Top = 29
      Width = 345
      Height = 23
      TabOrder = 0
    end
    object edtComplemento: TEdit
      Left = 359
      Top = 29
      Width = 242
      Height = 23
      TabOrder = 1
    end
    object edtBairro: TEdit
      Left = 8
      Top = 79
      Width = 345
      Height = 23
      TabOrder = 2
    end
    object edtLocalidade: TEdit
      Left = 359
      Top = 79
      Width = 195
      Height = 23
      TabOrder = 3
    end
    object edtUF: TEdit
      Left = 560
      Top = 79
      Width = 41
      Height = 23
      TabOrder = 4
    end
    object edtEstado: TEdit
      Left = 8
      Top = 129
      Width = 202
      Height = 23
      TabOrder = 5
    end
    object edtRegiao: TEdit
      Left = 216
      Top = 129
      Width = 137
      Height = 23
      TabOrder = 6
    end
    object edtIBGE: TEdit
      Left = 359
      Top = 129
      Width = 66
      Height = 23
      TabOrder = 7
    end
    object edtGIA: TEdit
      Left = 431
      Top = 129
      Width = 61
      Height = 23
      TabOrder = 8
    end
    object edtDDD: TEdit
      Left = 498
      Top = 129
      Width = 56
      Height = 23
      TabOrder = 9
    end
    object edtSIAF: TEdit
      Left = 560
      Top = 129
      Width = 41
      Height = 23
      TabOrder = 10
    end
  end
  object edtCEP: TEdit
    Left = 8
    Top = 27
    Width = 121
    Height = 23
    TabOrder = 0
    OnKeyPress = edtCEPKeyPress
  end
  object btnConsultar: TButton
    Left = 135
    Top = 25
    Width = 75
    Height = 25
    Caption = 'Consultar'
    TabOrder = 1
    OnClick = btnConsultarClick
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 233
    Width = 628
    Height = 19
    Panels = <>
    ExplicitTop = 232
    ExplicitWidth = 624
  end
end
