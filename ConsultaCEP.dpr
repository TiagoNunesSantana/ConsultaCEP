program ConsultaCEP;

uses
  Vcl.Forms,
  uViewConsultaCEP in 'View\uViewConsultaCEP.pas' {frmConsultaCEP},
  uControllerUtil in 'Controller\uControllerUtil.pas',
  uModelDMConsultaCEP in 'Model\uModelDMConsultaCEP.pas' {dmConsultaCEP: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmConsultaCEP, frmConsultaCEP);
  Application.CreateForm(TdmConsultaCEP, dmConsultaCEP);
  Application.CreateForm(TdmConsultaCEP, dmConsultaCEP);
  Application.Run;
end.
