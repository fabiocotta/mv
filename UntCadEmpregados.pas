unit UntCadEmpregados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Data.DB, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, RLReport;

type
  TFrmCadEmpregados = class(TForm)
    PanelMain: TPanel;
    Panel2: TPanel;
    BitbtnNovo: TBitBtn;
    BitbtnAlterar: TBitBtn;
    BitbtnExcluir: TBitBtn;
    BitbtnConfirma: TBitBtn;
    BitbtnCancela: TBitBtn;
    BitbtnSair: TBitBtn;
    Label2: TLabel;
    DBEdtNomeEmpregado: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBGridCadEmpregados: TDBGrid;
    DBNavCadEmpregados: TDBNavigator;
    DBLookupComboBox1: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    procedure BitbtnSairClick(Sender: TObject);
    procedure BitbtnNovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitbtnCancelaClick(Sender: TObject);
    procedure BitbtnAlterarClick(Sender: TObject);
    procedure BitbtnExcluirClick(Sender: TObject);
    procedure BitbtnConfirmaClick(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure RLReportEmpregadosBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadEmpregados: TFrmCadEmpregados;

implementation

{$R *.dfm}

uses UntDM, UntPrincipal, UntRelCadEmpregados;

procedure TFrmCadEmpregados.BitBtn1Click(Sender: TObject);
begin
  FrmRelCadEmpregados.RLReportEmpregados.Preview();
end;

procedure TFrmCadEmpregados.BitbtnAlterarClick(Sender: TObject);
begin
  DM.FDQryEmpregados.Edit;
  BitbtnAlterar.Visible := true;
  BitbtnNovo.Visible := false;
  BitbtnExcluir.Visible := false;
  BitbtnConfirma.Visible := true;
  BitbtnCancela.Visible := true;
end;

procedure TFrmCadEmpregados.BitbtnCancelaClick(Sender: TObject);
begin
  DM.FDQryEmpregados.Cancel;
  BitbtnAlterar.Visible := true;
  BitbtnNovo.Visible := true;
  BitbtnExcluir.Visible := true;
  BitbtnConfirma.Visible := false;
  BitbtnCancela.Visible := false;
end;

procedure TFrmCadEmpregados.BitbtnConfirmaClick(Sender: TObject);
begin
  DM.FDQryEmpregados.Post;
  BitbtnAlterar.Visible := true;
  BitbtnNovo.Visible := true;
  BitbtnExcluir.Visible := true;
  BitbtnConfirma.Visible := false;
  BitbtnCancela.Visible := false;
end;

procedure TFrmCadEmpregados.BitbtnExcluirClick(Sender: TObject);
begin
  if messagedlg('Você confirma a exclusão desse registro? ' +inttostr(dm.FDQryEmpregadosid_empregado.Value),
    mtConfirmation,[mbyes, mbno], 0) = mryes then
    begin
      DM.FDQryEmpregados.Delete;
      showmessage('Registro excluído com suesso !');
    end
    else
    DM.FDQryEmpregados.Cancel;
end;

procedure TFrmCadEmpregados.BitbtnNovoClick(Sender: TObject);
begin
  DM.FDQryEmpregados.Append;
  DBEdtNomeEmpregado.SetFocus;
  BitbtnConfirma.Visible := true;
  BitbtnCancela.Visible := true;
  BitbtnAlterar.Visible := false;
  BitbtnExcluir.Visible := false;
end;

procedure TFrmCadEmpregados.BitbtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCadEmpregados.DBEdit4Enter(Sender: TObject);
begin
  DM.FDQryEmpregados.FieldByName('data_admissao').EditMask := '!99/99/9999;1;_';
end;

procedure TFrmCadEmpregados.FormCreate(Sender: TObject);
begin
  BitbtnConfirma.Visible := false;
  BitbtnCancela.Visible := false;
end;

procedure TFrmCadEmpregados.RLReportEmpregadosBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  dm.FDQryEmpregados.Open;
end;

end.
