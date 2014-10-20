program asu;

uses
  Vcl.Forms,
  Unit2 in 'Unit2.pas' {main},
  unit1 in 'unit1.pas' {spstuds},
  Unit3 in 'Unit3.pas' {addstuds},
  Unit4 in 'Unit4.pas' {DataModule4: TDataModule},
  Unit5 in 'Unit5.pas' {redstuds},
  Unit6 in 'Unit6.pas' {kartastud},
  Unit7 in 'Unit7.pas' {newlkst},
  Unit8 in 'Unit8.pas' {newlkrod};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tmain, main);
  Application.CreateForm(Tspstuds, spstuds);
  Application.CreateForm(Taddstuds, addstuds);
  Application.CreateForm(TDataModule4, DataModule4);
  Application.CreateForm(Tredstuds, redstuds);
  Application.CreateForm(Tkartastud, kartastud);
  Application.CreateForm(Tnewlkst, newlkst);
  Application.CreateForm(Tnewlkrod, newlkrod);
  Application.Run;
end.
