unit teste;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.SqlExpr,
  Vcl.Menus, Bde.DBTables, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    gbCadastro: TGroupBox;
    lbNome: TLabel;
    lbTelefone: TLabel;
    btInserir: TButton;
    Database1: TDatabase;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1Contato: TStringField;
    Query1Telefone: TStringField;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    btSalvar: TButton;
    btCancelar: TButton;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    procedure btInserirClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btCancelarClick(Sender: TObject);
begin
  Query1.Cancel;
end;

procedure TForm1.btInserirClick(Sender: TObject);
var
  nome,telefone:string;
begin
  Query1.Insert;
  (*nome := edNome.Text;
  telefone := edTelefone.Text;
  if(length(telefone)<>9)then
    ShowMessage('O Telefone nao e valido!')
  else
    if(lbContatos.Items.IndexOf(nome+' '+telefone)>=0)then
      ShowMessage('Contato ja existe!')
    else
      lbContatos.Items.Add(nome+' '+telefone);*)
end;



procedure TForm1.btSalvarClick(Sender: TObject);
begin
  Query1.Post;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Query1.Open;
end;

end.
