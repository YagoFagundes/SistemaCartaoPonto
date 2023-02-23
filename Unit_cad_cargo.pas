unit Unit_cad_cargo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCGrids, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TFormCadCargo = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBCargo: TDBNavigator;
    Label2: TLabel;
    Label3: TLabel;
    txtnome: TDBEdit;
    DBGrid1: TDBGrid;
    txtdescricao: TDBMemo;
    bttNovo: TButton;
    BttAlterar: TButton;
    BttSalvar: TButton;
    BttExcluir: TButton;
    procedure bttNovoClick(Sender: TObject);
    procedure BttAlterarClick(Sender: TObject);
    procedure BttSalvarClick(Sender: TObject);
    procedure BttExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadCargo: TFormCadCargo;

implementation

{$R *.dfm}

uses UnitDM;

procedure TFormCadCargo.BttAlterarClick(Sender: TObject);
begin
  DBCargo.BtnClick(nbEdit);
end;

procedure TFormCadCargo.BttExcluirClick(Sender: TObject);
begin
  DBCargo.BtnClick(nbDelete);
end;

procedure TFormCadCargo.bttNovoClick(Sender: TObject);
begin
  DBCargo.BtnClick(nbInsert);
end;

procedure TFormCadCargo.BttSalvarClick(Sender: TObject);

begin

  if (txtnome.text = '') and (txtdescricao.Text = '')
   then
 begin
       Application.MessageBox ('Os campos Nome e Descrição precisam ser prenchidos para salvar o Funcionario', 'Erro', MB_ICONERROR + MB_OK);
  end;

  if  Application.MessageBox ('Deseja Salvar','Informação',MB_ICONINFORMATION + MB_YESNO) = mrYes then
  begin
      DBCargo.BtnClick(nbPost);
      ShowMessage('Cadastro Salvo com Sucesso!');
  end
  else
  begin
      ShowMessage('Continue Editando!');
  end;

end;

end.
