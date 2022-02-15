object FrmRelCadEmpregados: TFrmRelCadEmpregados
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FrmRelCadEmpregados'
  ClientHeight = 346
  ClientWidth = 727
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReportEmpregados: TRLReport
    Left = -3
    Top = -3
    Width = 794
    Height = 1123
    DataSource = DM.DsEmpregados
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Title = 'Relat'#243'rio de Empregados'
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 48
      BandType = btHeader
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      object RLLabel1: TRLLabel
        Left = 0
        Top = 0
        Width = 152
        Height = 16
        Align = faLeftTop
        Caption = 'www.fabiocotta.com.br'
        Transparent = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 339
        Top = 0
        Width = 40
        Height = 16
        Align = faCenterTop
        Info = itTitle
        Text = ''
        Transparent = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 590
        Top = 0
        Width = 128
        Height = 16
        Align = faRightTop
        Info = itPageNumber
        Text = 'P'#225'g.:'
        Transparent = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 86
      Width = 718
      Height = 26
      BandType = btHeader
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      object RLLabel2: TRLLabel
        Left = 0
        Top = 0
        Width = 49
        Height = 16
        Align = faTopOnly
        Caption = 'C'#243'digo'
      end
      object RLLabel3: TRLLabel
        Left = 63
        Top = 0
        Width = 41
        Height = 16
        Align = faTopOnly
        Caption = 'Nome'
      end
      object RLLabel4: TRLLabel
        Left = 432
        Top = 0
        Width = 94
        Height = 16
        Align = faTopOnly
        Caption = 'Departamento'
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 112
      Width = 718
      Height = 33
      object RLDBText1: TRLDBText
        Left = 3
        Top = 0
        Width = 85
        Height = 16
        Align = faTopOnly
        DataField = 'id_empregado'
        DataSource = DM.DsEmpregados
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 79
        Top = 0
        Width = 93
        Height = 16
        Align = faTopOnly
        DataField = 'nm_empregado'
        DataSource = DM.DsEmpregados
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 432
        Top = 0
        Width = 108
        Height = 16
        Align = faTopOnly
        DataField = 'nm_departamento'
        DataSource = DM.DsEmpregados
        Text = ''
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 145
      Width = 718
      Height = 32
      BandType = btFooter
      object RLSystemInfo3: TRLSystemInfo
        Left = 648
        Top = 0
        Width = 70
        Height = 16
        Align = faRightTop
        Text = 'Data:'
      end
      object RLSystemInfo4: TRLSystemInfo
        Left = 578
        Top = 0
        Width = 70
        Height = 16
        Align = faRightTop
        Info = itHour
        Text = 'Hora:'
      end
    end
  end
end
