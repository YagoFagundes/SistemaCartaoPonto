unit Unit_consulta_func;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFormConsFunc = class(TForm)
    consultaFunc: TRadioGroup;
    txtconsulta: TLabel;
    edtconsulta: TEdit;
    btconsulta: TButton;
    DBGrid1: TDBGrid;
    procedure consultaFuncClick(Sender: TObject);
    procedure btconsultaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsFunc: TFormConsFunc;

implementation

{$R *.dfm}

uses UnitDM;

procedure TFormConsFunc.btconsultaClick(Sender: TObject);
begin
  DM.QueryConsultaFunc.Close;
  DM.QueryConsultaFunc.SQL.Clear;

  if (consultaFunc.ItemIndex = 0) then
   begin
      DM.QueryConsultaFunc.SQL.Add('SELECT * FROM cad_func WHERE nome LIKE :pconsulta');
      DM.QueryConsultaFunc.ParamByName('pconsulta').AsString := edtconsulta.Text + '%';
   end;
  if (consultaFunc.ItemIndex = 1) then
   begin
      DM.QueryConsultaFunc.SQL.Add('SELECT * FROM cad_func WHERE cidade LIKE :pconsulta');
      DM.QueryConsultaFunc.ParamByName('pconsulta').AsString := edtconsulta.text + '%';
   end;
  if (consultaFunc.ItemIndex = 2) then
   begin
      DM.QueryConsultaFunc.SQL.Add('SELECT * FROM cad_func WHERE remuneracao LIKE :pconsulta');
      DM.QueryConsultaFunc.ParamByName('pconsulta').AsString := edtconsulta.text + '%';
   end;

  DM.QueryConsultaFunc.Open;

end;

procedure TFormConsFunc.consultaFuncClick(Sender: TObject);
begin
  if consultaFunc.ItemIndex = 0 then
    begin
      txtconsulta.Caption := 'Digite o Nome';
    end;
  if consultaFunc.ItemIndex = 1 then
    begin
      txtconsulta.Caption := 'Digite a Cidade';
    end;
  if consultaFunc.ItemIndex = 2 then
    begin
      txtconsulta.Caption := 'Digite a Remuneração';
    end;
  if consultaFunc.ItemIndex = 3 then
    begin
      txtconsulta.Caption := 'Digite a Remuneração';
    end;
  if consultaFunc.ItemIndex = 4 then
    begin
      txtconsulta.Caption := 'Digite a Cidade';
    end;


end;
end.
