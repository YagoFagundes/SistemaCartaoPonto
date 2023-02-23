unit Unit_holerite;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.ComCtrls, Vcl.Grids;

type
  TFormHolerite = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    dbnHoler: TDBNavigator;
    bttNovo: TButton;
    BttAlterar: TButton;
    BttExcluir: TButton;
    Button1: TButton;
    cartaoponto: TPageControl;
    Informações: TTabSheet;
    lblcargo: TLabel;
    lblnome: TLabel;
    lbltrabalho: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBComboBoxNome: TDBLookupComboBox;
    dbeditCargo: TDBEdit;
    dbeditTrab: TDBEdit;
    dbeditRemu: TDBEdit;
    dbAno: TDBEdit;
    dbcomboMes: TDBComboBox;
    dbVale: TDBEdit;
    dbHoraExtra: TDBEdit;
    dbDia: TDBEdit;
    dbInss: TDBEdit;
    dbFgts: TDBEdit;
    dbDesconto: TDBEdit;
    dbVencimento: TDBEdit;
    dbtotalHora: TDBEdit;
    gridmes: TStringGrid;
    bttGerarHora: TButton;
    procedure bttgerarClick(Sender: TObject);
    procedure dbeditTrabChange(Sender: TObject);
    procedure bttNovoClick(Sender: TObject);
    procedure BttAlterarClick(Sender: TObject);
    procedure BttExcluirClick(Sender: TObject);
    procedure dbcomboMesChange(Sender: TObject);
  private
  procedure carregaGrid;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormHolerite: TFormHolerite;

implementation

{$R *.dfm}

uses UnitDM;

procedure TFormHolerite.BttAlterarClick(Sender: TObject);
begin
  dbnHoler.BtnClick(nbEdit);
end;

procedure TFormHolerite.BttExcluirClick(Sender: TObject);
begin
  dbnHoler.BtnClick(nbDelete);
end;

procedure TFormHolerite.bttgerarClick(Sender: TObject);
var
  a,remu,dia,horaext,total,vale,inss,fgts,totaldesc : real;
begin
  if (dbAno.text = '') and (dbcomboMes.text = '') and (DBComboBoxNome.Text = '')
   then
  begin
       Application.MessageBox ('Os campos Ano, Mês e Nome, precisam ser prenchidos para salvar', 'Erro', MB_ICONERROR + MB_OK);
  end;

  if  Application.MessageBox ('Deseja Gerar o Holerite','Informação',MB_ICONINFORMATION + MB_YESNO) = mrYes then
  begin
  if dbeditTrab.Text = 'DIA'  then
    begin

    end;
  if dbeditTrab.Text = 'HORA' then
    begin

    end;
   if dbeditTrab.Text = 'MÊS' then
    begin

    end;
    remu := StrToFloat(dbeditRemu.Text);
    dia := StrToFloat(dbDia.Text);
    horaext := StrToFloat(dbHoraExtra.Text);
    vale := StrToFloat(dbVale.Text);

    total := remu * dia + horaext;
    fgts := (total /100)*8;
    inss := (1800/100)*8;
    totaldesc := vale + fgts + inss;

    dbInss.Text := FloatToStr(inss);
    dbFgts.Text := FloatToStr(fgts);
    dbVencimento.Text := FloatToStr(total);
    dbDesconto.Text := FloatToStr(totaldesc);


      dbnHoler.BtnClick(nbPost);
      ShowMessage('Holerite gerado com Sucesso!');
  end
  else
  begin
      ShowMessage('Continue Editando!');
  end;


end;

procedure TFormHolerite.carregaGrid;
var
  I,vQtdeDias    : Integer;
  vData,
  vDataInicial,
  vDataFinal   : TDateTime;
begin
  gridmes.Cells[1,0] := 'Entrada';
  gridmes.Cells[2,0] := 'Saída Almoço';
  gridmes.Cells[3,0] := 'Entrada Almoço';
  gridmes.Cells[4,0] := 'Saída';

  vQtdeDias := 0;
  for i := 1 to 31 do
  gridmes.Cells [0,i] :=IntToStr(i)+'/'+dbcomboMes.Text+'/'+dbAno.Text;
  vQtdeDias := vQtdeDias + 1;
 end;

procedure TFormHolerite.bttNovoClick(Sender: TObject);
begin
  dbnHoler.BtnClick(nbInsert);
end;


procedure TFormHolerite.dbcomboMesChange(Sender: TObject);
begin
   carregaGrid;
end;

procedure TFormHolerite.dbeditTrabChange(Sender: TObject);
begin
    if dbeditTrab.Text = 'DIA' then
    BEGIN
      dbDia.Visible := true;
      Label44.Visible := true;

    END
    else
    begin
      dbdia.Visible := False;
      Label44.Visible := false;

    end;
end;

end.
