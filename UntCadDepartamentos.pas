unit UntCadDepartamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons;

type
  TFrmCadDepartamento = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdtNomeDepartamento: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBGridCadDepartamento: TDBGrid;
    Panel2: TPanel;
    DBNavCadDepartamento: TDBNavigator;
    BitbtnNovo: TBitBtn;
    BitbtnAlterar: TBitBtn;
    BitbtnExcluir: TBitBtn;
    BitbtnConfirma: TBitBtn;
    BitbtnCancela: TBitBtn;
    BitbtnSair: TBitBtn;
    procedure BitbtnNovoClick(Sender: TObject);
    procedure BitbtnCancelaClick(Sender: TObject);
    procedure BitbtnAlterarClick(Sender: TObject);
    procedure BitbtnExcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitbtnSairClick(Sender: TObject);
    procedure BitbtnConfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadDepartamento: TFrmCadDepartamento;

implementation

{$R *.dfm}

uses UntDM;

procedure TFrmCadDepartamento.BitbtnAlterarClick(Sender: TObject);
begin
  DM.FDQryDepartamentos.Edit;
  BitbtnAlterar.Visible := true;
  BitbtnNovo.Visible := false;
  BitbtnExcluir.Visible := false;
  BitbtnConfirma.Visible := true;
  BitbtnCancela.Visible := true;

end;

procedure TFrmCadDepartamento.BitbtnCancelaClick(Sender: TObject);
begin
  DM.FDQryDepartamentos.Cancel;
  BitbtnAlterar.Visible := true;
  BitbtnNovo.Visible := true;
  BitbtnExcluir.Visible := true;
  BitbtnConfirma.Visible := false;
  BitbtnCancela.Visible := false;

end;

procedure TFrmCadDepartamento.BitbtnConfirmaClick(Sender: TObject);
begin
  DM.FDQryDepartamentos.Post;
  BitbtnAlterar.Visible := true;
  BitbtnNovo.Visible := true;
  BitbtnExcluir.Visible := true;
  BitbtnConfirma.Visible := false;
  BitbtnCancela.Visible := false;
end;

procedure TFrmCadDepartamento.BitbtnExcluirClick(Sender: TObject);
begin
  if messagedlg('Você confirma a exclusão desse registro? ' +inttostr(dm.FDQryDepartamentosid_departamento.Value),
    mtConfirmation,[mbyes, mbno], 0) = mryes then
  begin
    DM.FDQryDepartamentos.Delete;
    showmessage('Registro excluído com suesso !');
  end
  else
  DM.FDQryDepartamentos.Cancel;
end;

procedure TFrmCadDepartamento.BitbtnNovoClick(Sender: TObject);
begin
  DM.FDQryDepartamentos.Append;
  DBEdtNomeDepartamento.SetFocus;
  BitbtnConfirma.Visible := true;
  BitbtnCancela.Visible := true;
  BitbtnAlterar.Visible := false;
  BitbtnExcluir.Visible := false;
end;

procedure TFrmCadDepartamento.BitbtnSairClick(Sender: TObject);
begin
  close;
end;

procedure TFrmCadDepartamento.FormCreate(Sender: TObject);
begin
  BitbtnConfirma.Visible := false;
  BitbtnCancela.Visible := false;
end;

end.
