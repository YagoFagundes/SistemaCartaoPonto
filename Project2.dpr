program Project2;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {FormPrincipal},
  UnitDM in 'UnitDM.pas' {DM: TDataModule},
  Unit_cad_func in 'Unit_cad_func.pas' {FormCadFunc},
  Unit_cad_cargo in 'Unit_cad_cargo.pas' {FormCadCargo},
  Unit_cad_trabalho in 'Unit_cad_trabalho.pas' {FormCadTrabalho},
  Unit_consulta_func in 'Unit_consulta_func.pas' {FormConsFunc},
  Unit_holerite in 'Unit_holerite.pas' {FormHolerite},
  Unit_consulta_holer in 'Unit_consulta_holer.pas' {FormConsHoler},
  Unit_Form_Folha in 'Unit_Form_Folha.pas' {formfolha};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFormCadFunc, FormCadFunc);
  Application.CreateForm(TFormCadCargo, FormCadCargo);
  Application.CreateForm(TFormCadTrabalho, FormCadTrabalho);
  Application.CreateForm(TFormConsFunc, FormConsFunc);
  Application.CreateForm(TFormHolerite, FormHolerite);
  Application.CreateForm(TFormConsHoler, FormConsHoler);
  Application.CreateForm(Tformfolha, formfolha);
  Application.Run;
end.
