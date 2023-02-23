unit UnitDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDM = class(TDataModule)
    conexao: TFDConnection;
    tbCad_func: TFDTable;
    dsCad_func: TDataSource;
    tbCargo: TFDTable;
    tbForm_trab: TFDTable;
    dsCargo: TDataSource;
    dsForm_trab: TDataSource;
    QueryConsultaFunc: TFDQuery;
    dsConsulta_func: TDataSource;
    tbCargoid: TFDAutoIncField;
    tbCargonome: TStringField;
    tbCargodescricao: TMemoField;
    tbForm_trabid: TFDAutoIncField;
    tbForm_trabnome: TStringField;
    tbForm_trabdescricao: TMemoField;
    tbHolerite: TFDTable;
    dsHolerite: TDataSource;
    tbCad_funcid: TFDAutoIncField;
    tbCad_funcnome: TStringField;
    tbCad_funccpf: TStringField;
    tbCad_funcrg: TStringField;
    tbCad_functelefone1: TStringField;
    tbCad_functelefone2: TStringField;
    tbCad_funcendereco: TStringField;
    tbCad_funccidade: TStringField;
    tbCad_funcestado: TStringField;
    tbCad_funcremuneracao: TStringField;
    tbCad_funcdataCadastro: TDateTimeField;
    tbCad_funcinativo: TBooleanField;
    tbCad_funcid_cargo: TIntegerField;
    tbCad_funcformTrab: TStringField;
    tbcartaoPonto: TFDTable;
    dscartaoPonto: TDataSource;
    tbHoleriteid: TFDAutoIncField;
    tbHoleriteid_cad_func: TIntegerField;
    tbHoleritevale: TStringField;
    tbHoleritehoraExtra: TStringField;
    tbHoleritedias: TStringField;
    tbHoleriteinss: TStringField;
    tbHoleritefgts: TStringField;
    tbHoleritetotalVencimento: TStringField;
    tbHoleritetotalDesconto: TStringField;
    tbcartaoPontoid: TFDAutoIncField;
    tbcartaoPontoentrada: TStringField;
    tbcartaoPontosaidaAlmo: TStringField;
    tbcartaoPontoentradaAlmo: TStringField;
    tbcartaoPontosaida: TStringField;
    tbcartaoPontomes: TStringField;
    tbcartaoPontoano: TStringField;
    tbcartaoPontototalHora: TStringField;
    tbcartaoPontoid_holerite: TIntegerField;
    procedure tbCad_funcAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.tbCad_funcAfterInsert(DataSet: TDataSet);
begin
  tbCad_funcdataCadastro.Value := Date();
end;

end.
