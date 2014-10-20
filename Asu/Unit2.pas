unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls,
  Vcl.ActnMenus, Vcl.Menus, Vcl.Imaging.jpeg, Vcl.ExtCtrls, FireDAC.Stan.Def,
  FireDAC.Stan.Intf, FireDAC.Phys, FireDAC.Phys.IBBase, FireDAC.UI.Intf,
  FireDAC.VCLUI.Login, FireDAC.Comp.UI, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.Phys.Intf, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys.MySQL,
  Data.DB, FireDAC.Comp.Client;

type
  Tmain = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    Image1: TImage;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
 
    { Private declarations }
  public
    { Public declarations }
  end;

var
  main: Tmain;

implementation

{$R *.dfm}

uses Unit1;



procedure Tmain.N6Click(Sender: TObject);
begin
Close;
end;

procedure Tmain.N7Click(Sender: TObject);
begin
spstuds.show;
end;

end.
