unit UntPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.DBCtrls, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.PG, FireDAC.Phys.PGDef,
  FireDAC.VCLUI.Wait;

type
  TFrmPrincipal = class(TForm)
    Panel1: TPanel;
    BtnDepartamentos: TBitBtn;
    BtnEmpregados: TBitBtn;
    BtnSair: TBitBtn;
    procedure BtnSairClick(Sender: TObject);
    procedure BtnDepartamentosClick(Sender: TObject);
    procedure BtnEmpregadosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses UntDM, UntCadDepartamentos, UntCadEmpregados;

procedure TFrmPrincipal.BtnDepartamentosClick(Sender: TObject);
begin
  dm.CriaFormulario(TFrmCadDepartamento, FrmCadDepartamento);
end;

procedure TFrmPrincipal.BtnEmpregadosClick(Sender: TObject);
begin
  dm.CriaFormulario(TFrmCadEmpregados, FrmCadEmpregados);
end;

procedure TFrmPrincipal.BtnSairClick(Sender: TObject);
begin
  close;
end;

end.
