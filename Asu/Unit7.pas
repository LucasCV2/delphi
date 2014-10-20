unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.DBCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tnewlkst = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    dolgnost: TDBLookupComboBox;
    adress: TEdit;
    tell: TEdit;
    inn: TEdit;
    dater: TDateTimePicker;
    pass: TEdit;
    Label7: TLabel;
    vidan: TEdit;
    Button1: TButton;
    Label8: TLabel;
    Label9: TLabel;
    fio: TLabel;
    nomer: TLabel;
    FDQuery: TFDQuery;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  newlkst: Tnewlkst;

implementation

{$R *.dfm}

procedure Tnewlkst.Button1Click(Sender: TObject);
begin
FDquery.SQL.Clear;
FDquery.SQL.Add ('INSERT INTO personal (st_id,adress,tell,dater,pass,vidan,inn,dolgnost) VALUES (:st_id,:adress,:tell,:dater,:pass,:vidan,:inn,:dolgnost)');
FDQuery.ParamByName('st_id').AsString:=nomer.Caption;
FDQuery.ParamByName('adress').AsString:=adress.Text;
FDQuery.ParamByName('tell').AsString:=tell.Text;
FDQuery.ParamByName('dater').AsDate:=dater.Date;
FDQuery.ParamByName('pass').AsString:=pass.Text;
FDQuery.ParamByName('vidan').AsString:=vidan.Text;
FDQuery.ParamByName('inn').AsString:=inn.Text;
FDQuery.ParamByName('dolgnost').AsString:=dolgnost.KeyValue;;
FDQuery.ExecSQL;
adress.Clear;
tell.Clear;
pass.Clear;
vidan.Clear;
inn.Clear;
newlkst.Close;
end;

end.
