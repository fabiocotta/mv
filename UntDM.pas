unit UntDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, Forms;

type
  TDM = class(TDataModule)
    FDCon: TFDConnection;
    FDPhysPgDLinK: TFDPhysPgDriverLink;
    FDQryDepartamentos: TFDQuery;
    DsDepartamentos: TDataSource;
    FDQryDepartamentosid_departamento: TIntegerField;
    FDQryDepartamentosnm_departamento: TWideStringField;
    FDQryDepartamentoslocal: TWideStringField;
    FDQryEmpregados: TFDQuery;
    DsEmpregados: TDataSource;
    FDQryEmpregadosid_empregado: TIntegerField;
    FDQryEmpregadosnm_empregado: TWideStringField;
    FDQryEmpregadosnm_funcao: TWideStringField;
    FDQryEmpregadosdata_admissao: TDateField;
    FDQryEmpregadossalario: TFMTBCDField;
    FDQryEmpregadoscomissao: TFMTBCDField;
    FDQryEmpregadostb_departamentos_id_departamento: TIntegerField;
    FDQryEmpregadosnm_departamento: TStringField;
    procedure CriaFormulario(T: TFormClass; F: TForm );
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UntCadEmpregados;

{$R *.dfm}

{ TDM }

procedure TDM.CriaFormulario(T: TFormClass; F: TForm);
begin
  try
    Application.CreateForm(T, F);
    F.showmodal;
  finally
    F.free;
  end;

end;

end.
