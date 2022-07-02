unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TMainform = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Timer1: TTimer;
    Image1: TImage;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Mainform: TMainform;

implementation
   uses unit2;

{$R *.dfm}
    Var
    t:single=0.0;    L:TLine;    S:TSquare;    C:TCircle;
procedure TMainform.Button1Click(Sender: TObject);
begin
L:=TLine.Create(70,100,50,Image1);
   S:=TSquare.Create(200,100,50,Image1);   C:=TCircle.Create(350,100,50,Image1);   Timer1.Enabled:=true; // запуск таймера
end;

procedure TMainform.Button2Click(Sender: TObject);
begin
 Close;
end;

procedure TMainform.FormActivate(Sender: TObject);
begin
Image1.Canvas.Brush.Color:=clWhite;
end;

procedure TMainform.Timer1Timer(Sender: TObject);
begin
L.Move(0.1*t);
        S.Move(0.1*t);        C.Move(t);        t:=t+0.4;      //  timer1.enabled:=false;
end;

initialization
finalization   L.Free;   S.Free;   C.Free;
end.
