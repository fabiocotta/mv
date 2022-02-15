object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'MV - Solu'#231#245'es v1.0'
  ClientHeight = 378
  ClientWidth = 655
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 655
    Height = 65
    Align = alTop
    TabOrder = 0
    object BtnDepartamentos: TBitBtn
      Left = 3
      Top = 4
      Width = 89
      Height = 57
      Caption = 'Departamentos'
      TabOrder = 0
      OnClick = BtnDepartamentosClick
    end
    object BtnEmpregados: TBitBtn
      Left = 98
      Top = 4
      Width = 89
      Height = 57
      Caption = 'Empregados'
      TabOrder = 1
      OnClick = BtnEmpregadosClick
    end
    object BtnSair: TBitBtn
      Left = 565
      Top = 1
      Width = 89
      Height = 63
      Align = alRight
      Caption = 'Sair'
      TabOrder = 2
      OnClick = BtnSairClick
    end
  end
end
