object FrmCadDepartamento: TFrmCadDepartamento
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'MV - Solu'#231#245'es v1.0 - Tela de Cadastro de Departamentos'
  ClientHeight = 444
  ClientWidth = 662
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 662
    Height = 444
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 16
      Top = 64
      Width = 31
      Height = 13
      Caption = 'Nome:'
      FocusControl = DBEdtNomeDepartamento
    end
    object Label3: TLabel
      Left = 16
      Top = 110
      Width = 28
      Height = 13
      Caption = 'Local:'
      FocusControl = DBEdit3
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 40
      Width = 82
      Height = 21
      DataField = 'id_departamento'
      DataSource = DM.DsDepartamentos
      TabOrder = 0
    end
    object DBEdtNomeDepartamento: TDBEdit
      Left = 16
      Top = 83
      Width = 616
      Height = 21
      DataField = 'nm_departamento'
      DataSource = DM.DsDepartamentos
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 16
      Top = 129
      Width = 616
      Height = 21
      DataField = 'local'
      DataSource = DM.DsDepartamentos
      TabOrder = 2
    end
    object DBGridCadDepartamento: TDBGrid
      Left = 16
      Top = 184
      Width = 616
      Height = 145
      DataSource = DM.DsDepartamentos
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'id_departamento'
          Title.Caption = 'C'#243'digo'
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_departamento'
          Title.Caption = 'Nome'
          Width = 502
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'local'
          Title.Caption = 'Local'
          Width = 73
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 1
      Top = 400
      Width = 660
      Height = 43
      Align = alBottom
      TabOrder = 4
      object BitbtnNovo: TBitBtn
        Left = 15
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Novo'
        TabOrder = 0
        OnClick = BitbtnNovoClick
      end
      object BitbtnAlterar: TBitBtn
        Left = 96
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Alterar'
        TabOrder = 1
        OnClick = BitbtnAlterarClick
      end
      object BitbtnExcluir: TBitBtn
        Left = 177
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Excluir'
        TabOrder = 2
        OnClick = BitbtnExcluirClick
      end
      object BitbtnConfirma: TBitBtn
        Left = 281
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Confirma'
        TabOrder = 3
        OnClick = BitbtnConfirmaClick
      end
      object BitbtnCancela: TBitBtn
        Left = 362
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Cancela'
        TabOrder = 4
        OnClick = BitbtnCancelaClick
      end
      object BitbtnSair: TBitBtn
        Left = 556
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Sair'
        TabOrder = 5
        OnClick = BitbtnSairClick
      end
    end
    object DBNavCadDepartamento: TDBNavigator
      Left = 16
      Top = 335
      Width = 616
      Height = 25
      DataSource = DM.DsDepartamentos
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 5
    end
  end
end
