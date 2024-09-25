unit uViewConsultaCEP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfrmConsultaCEP = class(TForm)
    edtCEP: TEdit;
    btnConsultar: TButton;
    Label1: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    edtLogradouro: TEdit;
    lblComplemento: TLabel;
    edtComplemento: TEdit;
    Label3: TLabel;
    edtBairro: TEdit;
    Label4: TLabel;
    edtLocalidade: TEdit;
    Label5: TLabel;
    edtUF: TEdit;
    lblEstado: TLabel;
    edtEstado: TEdit;
    Label6: TLabel;
    edtRegiao: TEdit;
    Label7: TLabel;
    edtIBGE: TEdit;
    Label8: TLabel;
    edtGIA: TEdit;
    Label9: TLabel;
    edtDDD: TEdit;
    Label10: TLabel;
    edtSIAF: TEdit;
    StatusBar1: TStatusBar;
    procedure btnConsultarClick(Sender: TObject);
    procedure edtCEPKeyPress(Sender: TObject; var Key: Char);
  private

  public

  end;

var
  frmConsultaCEP: TfrmConsultaCEP;

implementation

{$R *.dfm}

uses uControllerUtil;

procedure TfrmConsultaCEP.btnConsultarClick(Sender: TObject);
begin
  if (Trim(edtCEP.Text)<>'') then
  begin
    _controllerUtil := TControllerUtil.Create(edtCEP.Text);
    if (_controllerUtil.FResult=1) then
    begin
      edtLogradouro.Text := _controllerUtil.Logradouro;
      edtComplemento.Text := _controllerUtil.Complemento;
      edtBairro.Text := _controllerUtil.Bairro;
      edtLocalidade.Text := _controllerUtil.Localidade;
      edtUF.Text := _controllerUtil.UF;
      edtEstado.Text := _controllerUtil.Estado;
      edtRegiao.Text := _controllerUtil.Regiao;
      edtIBGE.Text := _controllerUtil.IBGE;
      edtGIA.Text := _controllerUtil.GIA;
      edtDDD.Text := _controllerUtil.DDD;
      edtSIAF.Text := _controllerUtil.SIAFI;
    end else
    begin
      Application.MessageBox('Não foi possível consultar o CEP informado.','Atenção',MB_OK+MB_ICONQUESTION);
    end;
  end;
end;

procedure TfrmConsultaCEP.edtCEPKeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in['0'..'9',#08]) then
    key:=#0;
end;

end.
