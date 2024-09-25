unit uControllerUtil;

interface

type
  TControllerUtil = class
  private
    FLogradouro,
    FComplemento,
    FBairro,
    FLocalidade,
    FUF,
    FEstado,
    FRegiao,
    FIBGE,
    FGIA,
    FDDD,
    FSIAFI: string;
    constructor CreateConsulta(const aCEP: string);
  public
    FResult: Integer;
    constructor Create(const aCEP: string);
    property Logradouro: string read FLogradouro;
    property Complemento: string read FComplemento;
    property Bairro: string read FBairro;
    property Localidade: string read FLocalidade;
    property UF: string read FUF;
    property Estado: string read FEstado;
    property Regiao: string read FRegiao;
    property IBGE: string read FIBGE;
    property GIA: string read FGIA;
    property DDD: string read FDDD;
    property SIAFI: string read FSIAFI;
    function ConsultaViaCEP(aCEP: string): integer;
    function ConsultaAPICEP(aCEP: string): integer;
    function ConsultaAwesomeAPI(aCEP: string): integer;
  end;

var
  _controllerUtil: TControllerUtil;

implementation

uses
  uModelDMConsultaCEP, SysUtils, System.JSON;

{ TControllerUtil }

function TControllerUtil.ConsultaAPICEP(aCEP: string): integer;
begin
(*  try
    if not(Assigned(dmConsultaCEP)) then
    begin
      dmConsultaCEP := TdmConsultaCEP.Create(nil);
    end;
    dmConsultaCEP.RESTClient1.BaseURL := 'https://cdn.apicep.com/file/apicep/'+aCEP+'/json/';
    dmConsultaCEP.RESTRequest1.Execute;
    FLogradouro := dmConsultaCEP.FDMemTable1.FieldByName('logradouro').AsString;
    FComplemento := dmConsultaCEP.FDMemTable1.FieldByName('complemento').AsString;
    FBairro := dmConsultaCEP.FDMemTable1.FieldByName('bairro').AsString;
    FLocalidade := dmConsultaCEP.FDMemTable1.FieldByName('localidade').AsString;
    FUF := dmConsultaCEP.FDMemTable1.FieldByName('uf').AsString;
    FEstado := dmConsultaCEP.FDMemTable1.FieldByName('estado').AsString;
    FRegiao := dmConsultaCEP.FDMemTable1.FieldByName('regiao').AsString;
    FIBGE := dmConsultaCEP.FDMemTable1.FieldByName('ibge').AsString;
    FGIA := dmConsultaCEP.FDMemTable1.FieldByName('gia').AsString;
    FDDD := dmConsultaCEP.FDMemTable1.FieldByName('ddd').AsString;
    FSIAFI := dmConsultaCEP.FDMemTable1.FieldByName('siafi').AsString;
    Result := 1;
  except on E: Exception do
    Result := 0;
  end;  *)  //API com erro e não faz a busca
  Result := 1;
end;

function TControllerUtil.ConsultaAwesomeAPI(aCEP: string): integer;
var
  _jsonResponse: TJSONObject;
begin
  try
    if not(Assigned(dmConsultaCEP)) then
    begin
      dmConsultaCEP := TdmConsultaCEP.Create(nil);
    end;
    dmConsultaCEP.RESTClient1.BaseURL := 'https://cep.awesomeapi.com.br/json/'+aCEP;
    dmConsultaCEP.RESTResponse1.ContentType := 'application/json';
    dmConsultaCEP.RESTRequest1.Execute;
    if (dmConsultaCEP.RESTResponse1.Content<>'') then
    begin
      _jsonResponse := TJSONObject.ParseJSONValue(dmConsultaCEP.RESTResponse1.Content)  as TJSONObject;
      FLogradouro := _jsonResponse.GetValue('address').Value;
      FComplemento := '';
      FBairro := _jsonResponse.GetValue('district').Value;
      FLocalidade := _jsonResponse.GetValue('city').Value;
      FUF := _jsonResponse.GetValue('state').Value;
      FEstado := _jsonResponse.GetValue('state').Value;
      FRegiao := '';
      FIBGE := _jsonResponse.GetValue('city_ibge').Value;
      FGIA := '';
      FDDD := _jsonResponse.GetValue('ddd').Value;
      FSIAFI := ddd;
      Result := 1;
    end else
    begin
      Result := 0;
    end;
  except on E: Exception do
    Result := 0;
  end;
end;

function TControllerUtil.ConsultaViaCEP(aCEP: string): integer;
begin
  try
    if not(Assigned(dmConsultaCEP)) then
    begin
      dmConsultaCEP := TdmConsultaCEP.Create(nil);
    end;
    dmConsultaCEP.RESTClient1.BaseURL := 'https://viacep.com.br/ws/'+aCEP+'/json/';
    dmConsultaCEP.RESTRequest1.Execute;
    FLogradouro := dmConsultaCEP.FDMemTable1.FieldByName('logradouro').AsString;
    FComplemento := dmConsultaCEP.FDMemTable1.FieldByName('complemento').AsString;
    FBairro := dmConsultaCEP.FDMemTable1.FieldByName('bairro').AsString;
    FLocalidade := dmConsultaCEP.FDMemTable1.FieldByName('localidade').AsString;
    FUF := dmConsultaCEP.FDMemTable1.FieldByName('uf').AsString;
    FEstado := dmConsultaCEP.FDMemTable1.FieldByName('estado').AsString;
    FRegiao := dmConsultaCEP.FDMemTable1.FieldByName('regiao').AsString;
    FIBGE := dmConsultaCEP.FDMemTable1.FieldByName('ibge').AsString;
    FGIA := dmConsultaCEP.FDMemTable1.FieldByName('gia').AsString;
    FDDD := dmConsultaCEP.FDMemTable1.FieldByName('ddd').AsString;
    FSIAFI := dmConsultaCEP.FDMemTable1.FieldByName('siafi').AsString;
    Result := 1;
  except on E: Exception do
    Result := 0;
  end;
end;

constructor TControllerUtil.Create(const aCEP: string);
begin
  CreateConsulta(aCEP);
end;

constructor TControllerUtil.CreateConsulta(const aCEP: string);
begin
  FResult := 0;
  if (ConsultaViaCEP(aCEP)=0) then
  begin
    if (ConsultaAwesomeAPI(aCEP)=0) then
    begin
      if (ConsultaAPICEP(aCEP)=0) then
      begin
      end else
      begin
        FResult := 1;
      end;
    end else
    begin
      FResult := 1;
    end;
  end else
  begin
    FResult := 1;
  end;
end;

end.
