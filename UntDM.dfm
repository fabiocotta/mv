object DM: TDM
  OldCreateOrder = False
  Height = 250
  Width = 512
  object FDCon: TFDConnection
    Params.Strings = (
      'Database=postgres'
      'User_Name=postgres'
      'Password=admin'
      'Server=localhost'
      'DriverID=PG')
    Connected = True
    Left = 40
    Top = 24
  end
  object FDPhysPgDLinK: TFDPhysPgDriverLink
    VendorHome = 'C:\dev\mv'
    Left = 40
    Top = 80
  end
  object FDQryDepartamentos: TFDQuery
    Active = True
    Connection = FDCon
    SQL.Strings = (
      'select * from tb_departamentos')
    Left = 232
    Top = 32
    object FDQryDepartamentosid_departamento: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id_departamento'
      Origin = 'id_departamento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQryDepartamentosnm_departamento: TWideStringField
      FieldName = 'nm_departamento'
      Origin = 'nm_departamento'
      Size = 100
    end
    object FDQryDepartamentoslocal: TWideStringField
      FieldName = 'local'
      Origin = '"local"'
      Size = 100
    end
  end
  object DsDepartamentos: TDataSource
    AutoEdit = False
    DataSet = FDQryDepartamentos
    Left = 232
    Top = 88
  end
  object FDQryEmpregados: TFDQuery
    Active = True
    Connection = FDCon
    SQL.Strings = (
      'select * from tb_empregados')
    Left = 384
    Top = 32
    object FDQryEmpregadosid_empregado: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id_empregado'
      Origin = 'id_empregado'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQryEmpregadosnm_empregado: TWideStringField
      FieldName = 'nm_empregado'
      Origin = 'nm_empregado'
      Size = 100
    end
    object FDQryEmpregadosnm_funcao: TWideStringField
      FieldName = 'nm_funcao'
      Origin = 'nm_funcao'
      Size = 100
    end
    object FDQryEmpregadosdata_admissao: TDateField
      FieldName = 'data_admissao'
      Origin = 'data_admissao'
    end
    object FDQryEmpregadossalario: TFMTBCDField
      FieldName = 'salario'
      Origin = 'salario'
      currency = True
      Precision = 64
      Size = 5
    end
    object FDQryEmpregadoscomissao: TFMTBCDField
      FieldName = 'comissao'
      Origin = 'comissao'
      currency = True
      Precision = 64
      Size = 5
    end
    object FDQryEmpregadostb_departamentos_id_departamento: TIntegerField
      FieldName = 'tb_departamentos_id_departamento'
      Origin = 'tb_departamentos_id_departamento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQryEmpregadosnm_departamento: TStringField
      FieldKind = fkLookup
      FieldName = 'nm_departamento'
      LookupDataSet = FDQryDepartamentos
      LookupKeyFields = 'id_departamento'
      LookupResultField = 'nm_departamento'
      KeyFields = 'tb_departamentos_id_departamento'
      Lookup = True
    end
  end
  object DsEmpregados: TDataSource
    AutoEdit = False
    DataSet = FDQryEmpregados
    Left = 384
    Top = 96
  end
end
