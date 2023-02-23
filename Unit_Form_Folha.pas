unit Unit_Form_Folha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  Tformfolha = class(TForm)
    btnCadFunc: TBitBtn;
    btnGeraHoler: TBitBtn;
    btnCargo: TBitBtn;
    btnCadTrab: TBitBtn;
    Pcad_Func: TPanel;
    Image1: TImage;
    procedure btnCadTrabClick(Sender: TObject);
    procedure btnCadFuncClick(Sender: TObject);
    procedure btnCargoClick(Sender: TObject);
    procedure btnGeraHolerClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formfolha: Tformfolha;

implementation

{$R *.dfm}

uses Unit_cad_func, Unit_cad_trabalho, Unit_cad_cargo, Unit_holerite;

procedure Tformfolha.btnCadFuncClick(Sender: TObject);
begin
  FormCadFunc.ShowModal;
end;

procedure Tformfolha.btnCadTrabClick(Sender: TObject);
begin
  FormCadTrabalho.ShowModal;
end;

procedure Tformfolha.btnCargoClick(Sender: TObject);
begin
  FormCadCargo.ShowModal;
end;

procedure Tformfolha.btnGeraHolerClick(Sender: TObject);
begin
  FormHolerite.ShowModal;
end;

end.
