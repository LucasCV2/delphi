unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DBXMySQL, Data.DB,
  Data.SqlExpr, Datasnap.DBClient, Datasnap.Provider, Vcl.StdCtrls, Vcl.DBCtrls,
  SimpleDS, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Phys.MySQL, FireDAC.DApt, FireDAC.VCLUI.Login, FireDAC.Comp.UI, Unit4;

type
  Taddstuds = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    DataSource2: TDataSource;
    gpComboBox2: TDBLookupComboBox;
    spComboBox1: TDBLookupComboBox;
    FDQuery: TFDQuery;
    FDQuery13: TFDQuery;
    procedure Button1Click(Sender: TObject);
    procedure spComboBox1Click(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  addstuds: Taddstuds;

implementation

{$R *.dfm}

uses Unit1 ;

procedure Taddstuds.Button1Click(Sender: TObject);
begin
FDquery.SQL.Clear;
FDquery.SQL.Add ('INSERT INTO studs (fam, imya, otch,gp_id) VALUES (:fam, :imya, :otch, :gp_id)');
FDQuery.ParamByName('fam').AsString:=Edit1.Text;
FDQuery.ParamByName('imya').AsString:=Edit2.Text;
FDQuery.ParamByName('otch').AsString:=Edit2.Text;
FDQuery.ParamByName('gp_id').AsString:=gpComboBox2.KeyValue;
FDQuery.ExecSQL;
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
DataModule4.FDQuery15.Refresh;

end;

procedure Taddstuds.spComboBox1Click(Sender: TObject);
begin
FDquery13.SQL.Clear;
FDquery13.SQL.Add ('select * from groups WHERE sp_id= :in2 ');
FDQuery13.ParamByName('in2').AsString:=spComboBox1.KeyValue;
FDQuery13.open;
gpComboBox2.ListSource:= DataSource2;
gpComboBox2.ListField:='name';
gpComboBox2.KeyField:='id';

end;

end.
