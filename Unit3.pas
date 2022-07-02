unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation
 uses Unit2, Unit1;
{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
var i:byte;
begin
  n:=StrToInt(edit1.text);
  seek(f,n-1);//встаем на запись, ее индекс на 1 меньше, начинается с 0
if n < filesize(f) then
begin
  for i:=n-1 to filesize(f)-2 do//сдвигаем записи на 1 вверх к этой, она исчезает
   begin
    seek(f,i+1);
    read(f,z);
    seek(f,i);
    write(f,z);
   end;
  seek(f,filesize(f)-1);//встаем в пред-конец
  truncate(f);
end
else
Rewrite(f);
closefile(f);
Form3.hide;
Form1.Show;
end;
end.
