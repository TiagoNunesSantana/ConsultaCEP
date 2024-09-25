object dmConsultaCEP: TdmConsultaCEP
  Height = 480
  Width = 640
  object RESTClient1: TRESTClient
    Params = <>
    SynchronizedEvents = False
    Left = 40
    Top = 24
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 128
    Top = 24
  end
  object RESTResponse1: TRESTResponse
    Left = 224
    Top = 24
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Dataset = FDMemTable1
    FieldDefs = <>
    Response = RESTResponse1
    Left = 368
    Top = 24
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 504
    Top = 24
  end
end
