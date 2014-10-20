unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  Tkartastud = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    fio: TLabel;
    nomer: TLabel;
    adress: TLabel;
    tell: TLabel;
    pass: TLabel;
    vidan: TLabel;
    dolgnost: TLabel;
    inn: TLabel;
    dater: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  kartastud: Tkartastud;

implementation

{$R *.dfm}

end.
