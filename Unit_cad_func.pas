unit Unit_cad_func;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ComCtrls, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFormCadFunc = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    txtData: TDBText;
    txtNome: TDBEdit;
    txtCpf: TDBEdit;
    txtRg: TDBEdit;
    txtTelefone1: TDBEdit;
    txtTelefone2: TDBEdit;
    txtEndereco: TDBEdit;
    txtCidade: TDBEdit;
    txtEstado: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Panel1: TPanel;
    Label1: TLabel;
    txtRemuneracao: TDBEdit;
    Label12: TLabel;
    DbnFunc: TDBNavigator;
    Label15: TLabel;
    DBGrid1: TDBGrid;
    DbComboCargo: TDBLookupComboBox;
//  DbComboTrabalho: TDBLookupComboBox;
    txtBuscar: TEdit;
    BttSalvar: TButton;
    BttAlterar: TButton;
    BttExcluir: TButton;
    bttNovo: TButton;
    dbcomboTrab: TDBComboBox;
    procedure txtBuscarChange(Sender: TObject);
    procedure BttSalvarClick(Sender: TObject);
    procedure bttNovoClick(Sender: TObject);
    procedure BttExcluirClick(Sender: TObject);
    procedure BttAlterarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadFunc: TFormCadFunc;

implementation

{$R *.dfm}

uses UnitDM;

procedure TFormCadFunc.BttAlterarClick(Sender: TObject);
begin
  dbnFunc.BtnClick(nbEdit);
end;

procedure TFormCadFunc.BttExcluirClick(Sender: TObject);
begin
  dbnFunc.BtnClick(nbDelete);
end;

procedure TFormCadFunc.bttNovoClick(Sender: TObject);
begin
     dbnFunc.BtnClick(nbInsert);
end;

procedure TFormCadFunc.BttSalvarClick(Sender: TObject);
begin

  if (txtNome.text = '') and (txtRemuneracao.text = '') and (txtTelefone1.Text = '') and (dbcomboTrab.Text = '')
   then
  begin
       Application.MessageBox ('Os campos Cargo, Trabalho, Nome e Remuneração,precisa ser prenchidos para salvar o Funcionario', 'Erro', MB_ICONERROR + MB_OK);
  end;

  if  Application.MessageBox ('Deseja Salvar','Informação',MB_ICONINFORMATION + MB_YESNO) = mrYes then
  begin
      DbnFunc.BtnClick(nbPost);
      ShowMessage('Cadastro Salvo com Sucesso!');
  end
  else
  begin
      ShowMessage('Continue Editando!');
  end;

end;

procedure TFormCadFunc.txtBuscarChange(Sender: TObject);
begin
  DM.tbCad_func.Locate('nome',txtBuscar.Text,[loPartialKey]);
end;
end.
