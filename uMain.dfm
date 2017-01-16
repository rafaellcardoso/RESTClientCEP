object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 336
  ClientWidth = 357
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 69
    Height = 13
    Caption = 'Informe o CEP'
  end
  object Memo1: TMemo
    Left = 0
    Top = 61
    Width = 357
    Height = 275
    Align = alBottom
    TabOrder = 0
  end
  object Button1: TButton
    Left = 135
    Top = 30
    Width = 105
    Height = 25
    Caption = 'Consultar CEP'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 8
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object RESTClient: TRESTClient
    Params = <>
    HandleRedirects = True
    Left = 32
    Top = 208
  end
  object RESTRequest: TRESTRequest
    Client = RESTClient
    Params = <>
    Response = RESTResponse
    SynchronizedEvents = False
    Left = 240
    Top = 96
  end
  object RESTResponse: TRESTResponse
    Left = 96
    Top = 112
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 172
    Top = 117
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = RESTResponse
      FieldName = 'JSONText'
      Control = Memo1
      Track = False
    end
  end
end
