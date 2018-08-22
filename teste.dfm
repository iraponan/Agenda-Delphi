object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 676
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object gbCadastro: TGroupBox
    Left = 0
    Top = 0
    Width = 645
    Height = 129
    Align = alTop
    Caption = 'Cadastro'
    TabOrder = 0
    ExplicitLeft = -8
    ExplicitTop = 16
    object lbNome: TLabel
      Left = 32
      Top = 28
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object lbTelefone: TLabel
      Left = 32
      Top = 55
      Width = 46
      Height = 13
      Caption = 'Telefone:'
    end
    object btInserir: TButton
      Left = 101
      Top = 79
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 0
      Visible = False
      OnClick = btInserirClick
    end
    object DBEdit1: TDBEdit
      Left = 84
      Top = 25
      Width = 121
      Height = 21
      DataField = 'Contato'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 84
      Top = 52
      Width = 121
      Height = 21
      DataField = 'Telefone'
      DataSource = DataSource1
      TabOrder = 2
    end
    object btSalvar: TButton
      Left = 207
      Top = 79
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 3
      Visible = False
      OnClick = btSalvarClick
    end
  end
  object btCancelar: TButton
    Left = 304
    Top = 79
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 1
    Visible = False
    OnClick = btCancelarClick
  end
  object DBNavigator1: TDBNavigator
    Left = 405
    Top = 104
    Width = 240
    Height = 25
    DataSource = DataSource1
    Kind = dbnHorizontal
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 129
    Width = 645
    Height = 547
    Align = alClient
    DataSource = DataSource1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Database1: TDatabase
    Connected = True
    DatabaseName = 'Teste'
    DriverName = 'MSSQL'
    LoginPrompt = False
    Params.Strings = (
      'DATABASE NAME=Teste'
      'SERVER NAME=localhost'
      'USER NAME=sa'
      'PASSWORD=07121990Ira!')
    SessionName = 'Default'
    Left = 400
    Top = 456
  end
  object Query1: TQuery
    Active = True
    DatabaseName = 'Teste'
    RequestLive = True
    SQL.Strings = (
      'select Contato, Telefone from agenda')
    Left = 304
    Top = 456
    object Query1Contato: TStringField
      FieldName = 'Contato'
      Origin = 'TESTE.agenda.Contato'
      FixedChar = True
      Size = 50
    end
    object Query1Telefone: TStringField
      FieldName = 'Telefone'
      Origin = 'TESTE.agenda.Telefone'
      FixedChar = True
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 224
    Top = 456
  end
end
