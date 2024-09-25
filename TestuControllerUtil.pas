unit TestuControllerUtil;

interface

uses
  TestFramework, uControllerUtil;

type
  // Test methods for class TControllerUtil

  TestTControllerUtil = class(TTestCase)
  strict private
    FControllerUtil: TControllerUtil;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestConsultaViaCEP;
    procedure TestConsultaAPICEP;
    procedure TestConsultaAwesomeAPI;
  end;

implementation

procedure TestTControllerUtil.SetUp;
var
  aCEP: string;
begin
  aCEP := '04151010';
  FControllerUtil := TControllerUtil.Create(aCEP);
end;

procedure TestTControllerUtil.TearDown;
begin
  FControllerUtil.Free;
  FControllerUtil := nil;
end;

procedure TestTControllerUtil.TestConsultaViaCEP;
var
  ReturnValue: Integer;
  aCEP: string;
begin
  aCEP := '04151010';
  ReturnValue := FControllerUtil.ConsultaViaCEP(aCEP);
  Check(ReturnValue=1,'A consulta do CEP na ViaCEP falhou');
end;

procedure TestTControllerUtil.TestConsultaAPICEP;
var
  ReturnValue: Integer;
  aCEP: string;
begin
  aCEP := '04151010';
  ReturnValue := FControllerUtil.ConsultaAPICEP(aCEP);
  Check(ReturnValue=1,'A consulta do CEP na APICEP falhou');
end;

procedure TestTControllerUtil.TestConsultaAwesomeAPI;
var
  ReturnValue: Integer;
  aCEP: string;
begin
  aCEP := '04151010';
  ReturnValue := FControllerUtil.ConsultaAwesomeAPI(aCEP);
  Check(ReturnValue=1,'A consulta do CEP na AwesomeAPI falhou');
end;

initialization
  // Register any test cases with the test runner
  RegisterTest(TestTControllerUtil.Suite);
end.

