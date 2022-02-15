object FrmCadEmpregados: TFrmCadEmpregados
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'MV - Solu'#231#245'es v1.0 - Tela de Cadastro de Empregados'
  ClientHeight = 485
  ClientWidth = 649
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
  object PanelMain: TPanel
    Left = 0
    Top = 0
    Width = 649
    Height = 485
    Align = alClient
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 16
      Width = 31
      Height = 13
      Caption = 'Nome:'
      FocusControl = DBEdtNomeEmpregado
    end
    object Label3: TLabel
      Left = 16
      Top = 62
      Width = 39
      Height = 13
      Caption = 'Fun'#231#227'o:'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 259
      Top = 112
      Width = 90
      Height = 13
      Caption = 'Data de Admiss'#227'o:'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 16
      Top = 112
      Width = 36
      Height = 13
      Caption = 'Sal'#225'rio:'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 134
      Top = 112
      Width = 44
      Height = 13
      Caption = 'Comis'#227'o:'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 415
      Top = 62
      Width = 73
      Height = 13
      Caption = 'Departamento:'
    end
    object Panel2: TPanel
      Left = 1
      Top = 441
      Width = 647
      Height = 43
      Align = alBottom
      TabOrder = 0
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
      object BitBtn1: TBitBtn
        Left = 464
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Imprimir'
        TabOrder = 6
        OnClick = BitBtn1Click
      end
    end
    object DBEdtNomeEmpregado: TDBEdit
      Left = 16
      Top = 35
      Width = 616
      Height = 21
      DataField = 'nm_empregado'
      DataSource = DM.DsEmpregados
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 16
      Top = 81
      Width = 393
      Height = 21
      DataField = 'nm_funcao'
      DataSource = DM.DsEmpregados
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 259
      Top = 131
      Width = 134
      Height = 21
      DataField = 'data_admissao'
      DataSource = DM.DsEmpregados
      TabOrder = 3
      OnEnter = DBEdit4Enter
    end
    object DBEdit5: TDBEdit
      Left = 16
      Top = 131
      Width = 112
      Height = 21
      DataField = 'salario'
      DataSource = DM.DsEmpregados
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 134
      Top = 131
      Width = 119
      Height = 21
      DataField = 'comissao'
      DataSource = DM.DsEmpregados
      TabOrder = 5
    end
    object DBGridCadEmpregados: TDBGrid
      Left = 16
      Top = 176
      Width = 616
      Height = 233
      DataSource = DM.DsEmpregados
      TabOrder = 6
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'id_empregado'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_empregado'
          Title.Caption = 'Nome'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_funcao'
          Title.Caption = 'Fun'#231#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'data_admissao'
          Title.Caption = 'Data Admiss'#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'salario'
          Title.Caption = 'Sal'#225'rio'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'comissao'
          Title.Caption = 'Comiss'#227'o'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tb_departamentos_id_departamento'
          Title.Caption = 'Departamento'
          Visible = True
        end>
    end
    object DBNavCadEmpregados: TDBNavigator
      Left = 16
      Top = 415
      Width = 616
      Height = 25
      DataSource = DM.DsEmpregados
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 7
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 415
      Top = 81
      Width = 217
      Height = 21
      DataField = 'tb_departamentos_id_departamento'
      DataSource = DM.DsEmpregados
      KeyField = 'id_departamento'
      ListField = 'nm_departamento'
      ListSource = DM.DsDepartamentos
      TabOrder = 8
    end
  end
end
