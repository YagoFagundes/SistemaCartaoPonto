unit Unit_cad_trabalho;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask;

type
  TFormCadTrabalho = class(TForm)
    txtnome: TDBEdit;
    txtdescricao: TDBMemo;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    DBTrabalho: TDBNavigator;
    DBGrid1: TDBGrid;
    BttAlterar: TButton;
    bttNovo: TButton;
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
  FormCadTrabalho: TFormCadTrabalho;

implementation

{$R *.dfm}

uses UnitDM;

procedure TFormCadTrabalho.BttAlterarClick(Sender: TObject);
begin
  DBTrabalho.BtnClick(nbEdit);
end;

procedure TFormCadTrabalho.BttExcluirClick(Sender: TObject);
begin
  DBTrabalho.BtnClick(nbDelete);
end;

procedure TFormCadTrabalho.bttNovoClick(Sender: TObject);
begin

        DBTrabalho.BtnClick(nbInsert);
end;

procedure TFormCadTrabalho.BttSalvarClick(Sender: TObject);
begin
 if (txtnome.text = '') and (txtdescricao.Text = '')
   then
  begin
       Application.MessageBox ('Os campos Nome e Descrição precisam ser prenchidos para salvar!', 'Erro', MB_ICONERROR + MB_OK);
  end;
  if  Application.MessageBox ('Deseja Salvar','Informação',MB_ICONINFORMATION + MB_YESNO) = mrYes then
  begin
      DBTrabalho.BtnClick(nbPost);
      ShowMessage('Cadastro Salvo com Sucesso!');
  end
  else
  begin
      ShowMessage('Continue Editando!');
  end;
end;

end.
