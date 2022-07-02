unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm8 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation
Uses Unit1;
{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);
begin
closefile(f);
self.Hide;
form1.show;
end;

procedure TForm8.FormShow(Sender: TObject);
var m,x,i:integer;
begin
  Image1.Canvas.Brush.Color:=clWhite;
  Image1.Canvas.MoveTo(20,240);
  Image1.Canvas.LineTo(20,0);
  Image1.Canvas.MoveTo(20,0);
  Image1.Canvas.LineTo(15,10);
  Image1.Canvas.MoveTo(20,0);
  Image1.Canvas.LineTo(25,10);
  Image1.Canvas.MoveTo(0,220);
  Image1.Canvas.LineTo(370,220);
  Image1.Canvas.MoveTo(370,220);
  Image1.Canvas.LineTo(360,215);
  Image1.Canvas.MoveTo(370,220);
  Image1.Canvas.LineTo(360,225);
  Image1.Canvas.MoveTo(20,220);
  Image1.Canvas.TextOut(370,230,'Номер студента');
  Image1.Canvas.Brush.Color:=clWhite;
   AssignFile(f,'text.dat');
reset(f);
  m:=20;
   x:=31;
   i:=0;
  while not eof(f) do
  begin
  i:=i+1 ;
    read(f,z);
    if z.gruppa=gru then
    begin
    Image1.Canvas.TextOut(0,220-strtoint(z.reit)*2,z.reit);
    Image1.Canvas.TextOut(x,230,inttostr(i));
    x:=x+18;
    m:=m+8;
    Image1.Canvas.Moveto(m,220);

      Image1.Canvas.LineTo(m,220-strtoint(z.reit)*2);
      Image1.Canvas.MoveTo(m,220-strtoint(z.reit)*2);
      m:=m+10;

      Image1.Canvas.LineTo(m,220-strtoint(z.reit)*2);
      Image1.Canvas.MoveTo(m,220-strtoint(z.reit)*2);
      Image1.Canvas.LineTo(m,220);
      Image1.Canvas.Moveto(m,220);


      Image1.Canvas.Moveto(m,220);

    end;


  end;
end;

end.
