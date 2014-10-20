unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls;

type
  Tredstuds = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    fam: TEdit;
    imya: TEdit;
    otch: TEdit;
    Button1: TButton;
    gpComboBox2: TDBLookupComboBox;
    spComboBox1: TDBLookupComboBox;
    Label8: TLabel;
    nomer: TEdit;
    FDQuery14: TFDQuery;
    DataSource3: TDataSource;
    procedure spComboBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  redstuds: Tredstuds;

implementation

{$R *.dfm}

uses Unit4;





procedure Tredstuds.Button1Click(Sender: TObject);
begin
DataModule4.updatest.SQL.Clear;
DataModule4.updatest.SQL.Add ('Update studs SET fam = :fam, imya=:imya, otch=:otch, gp_id=:gp_id Where id =:id ');
DataModule4.updatest.ParamByName('fam').AsString:=fam.Text;
DataModule4.updatest.ParamByName('imya').AsString:=imya.Text;
DataModule4.updatest.ParamByName('otch').AsString:=otch.Text;
DataModule4.updatest.ParamByName('id').AsString:=nomer.Text;
DataModule4.updatest.ParamByName('gp_id').AsString:=gpComboBox2.KeyValue;
DataModule4.updatest.ExecSQL;
DataModule4.FDQuery15.Refresh;
end;

procedure Tredstuds.spComboBox1Click(Sender: TObject);
begin
FDquery14.SQL.Clear;
FDquery14.SQL.Add ('select * from groups WHERE sp_id= :in2 ');
FDQuery14.ParamByName('in2').AsString:=spComboBox1.KeyValue;
FDQuery14.open;
gpComboBox2.ListSource:= DataSource3;
gpComboBox2.ListField:='name';
gpComboBox2.KeyField:='id';
end;

end.
