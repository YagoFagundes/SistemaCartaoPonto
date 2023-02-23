unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Menus, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.Buttons;

type
  TFormPrincipal = class(TForm)
    Pcad_Func: TPanel;
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    Usuario1: TMenuItem;
    Configurao1: TMenuItem;
    Cadastro1: TMenuItem;
    Funcionario1: TMenuItem;
    Cargo1: TMenuItem;
    trabalho1: TMenuItem;
    Consulta1: TMenuItem;
    consultaFunc1: TMenuItem;
    consultaHolerite1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    CadastrarUsuario1: TMenuItem;
    PesquisarUsuario1: TMenuItem;
    Sair2: TMenuItem;
    btnFormFolha: TBitBtn;
    Image1: TImage;
    gerarHolerite1: TMenuItem;
    procedure Sair2Click(Sender: TObject);
    procedure Funcionario1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure consultaHolerite1Click(Sender: TObject);
    procedure consultaFunc1Click(Sender: TObject);
    procedure btnFormFolhaClick(Sender: TObject);
    procedure Cargo1Click(Sender: TObject);
    procedure trabalho1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

uses UnitDM, Unit_cad_func, Unit_cad_cargo, Unit_cad_trabalho,
  Unit_consulta_holer, Unit_holerite, Unit_consulta_func, Unit_Form_Folha;

procedure TFormPrincipal.btnFormFolhaClick(Sender: TObject);
begin
   formfolha.ShowModal;
end;

procedure TFormPrincipal.Cargo1Click(Sender: TObject);
begin
  FormCadCargo.ShowModal;
end;

procedure TFormPrincipal.Funcionario1Click(Sender: TObject);
begin
  FormCadFunc.ShowModal;
end;

procedure TFormPrincipal.consultaFunc1Click(Sender: TObject);
begin
  FormConsFunc.ShowModal;
end;

procedure TFormPrincipal.consultaHolerite1Click(Sender: TObject);
begin
  FormConsHoler.ShowModal;
end;

procedure TFormPrincipal.N1Click(Sender: TObject);
begin
  FormHolerite.ShowModal;
end;

procedure TFormPrincipal.Sair2Click(Sender: TObject);
begin
  application.Terminate;
end;

procedure TFormPrincipal.trabalho1Click(Sender: TObject);
begin
  FormCadTrabalho.ShowModal;
end;

end.
