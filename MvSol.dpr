program MvSol;

uses
  Vcl.Forms,
  UntPrincipal in 'UntPrincipal.pas' {FrmPrincipal},
  UntDM in 'UntDM.pas' {DM: TDataModule},
  UntCadDepartamentos in 'UntCadDepartamentos.pas' {FrmCadDepartamento},
  UntCadEmpregados in 'UntCadEmpregados.pas' {FrmCadEmpregados},
  UntRelCadEmpregados in 'UntRelCadEmpregados.pas' {FrmRelCadEmpregados};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmRelCadEmpregados, FrmRelCadEmpregados);
  Application.Run;
end.
