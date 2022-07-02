unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls;

type
  TForm7 = class(TForm)
    StringGrid1: TStringGrid;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses Unit1; 
{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
begin
self.Hide;
form1.show;
end;

procedure TForm7.FormShow(Sender: TObject);
var
i:word;
begin
StringGrid1.Cells[1,0]:='Фамилия';
StringGrid1.Cells[2,0]:='Имя';
StringGrid1.Cells[3,0]:='Группа';
StringGrid1.Cells[4,0]:='Рейтинг';
assignFile(f,'text.dat');
reset(f);
i:=0;
while not eof(f) do
 	 begin
    read(f,z);
    if StrToInt(z.reit)>60 then
    begin
   i:=i+1;
     StringGrid1.Cells[0,i]:=IntToStr(i);

   	 StringGrid1.Cells[1,i]:=z.fam;
     StringGrid1.Cells[2,i]:=z.name;
     StringGrid1.Cells[3,i]:=z.gruppa;
     StringGrid1.Cells[4,i]:=z.reit;
    end;
   end;
closefile(f);

end;

end.
