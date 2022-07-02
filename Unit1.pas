unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);

private
    { Private declarations }
  public
    { Public declarations }
  end;
type zap=record
       fam:string[22];
       name:string[22];
       gruppa:string[22];
       reit:string[22];
     end;

var
  Form1: TForm1;
  f:file of zap;
  z:zap;
  n:integer;
  gru:string[22];
implementation
uses Unit2, Unit3, Unit4, Unit5, Unit7, Unit6;
{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var size:integer;
begin
AssignFile(f,'text.dat');
{$I-}
Reset(f);
{$I+}
if ioresult=0 then
begin
size:=FileSize(f);
seek(f,size);
end
else rewrite(f);
Form2.Show; 
Form2.edit1.setfocus;
Form1.hide;
end;
procedure TForm1.Button2Click(Sender: TObject);
var i:byte;
begin
 AssignFile(f,'text.dat');
reset(f);
form3.show;
form3.edit1.setfocus;
i:=0;
while not eof(f) do
 	 begin
   i:=i+1;
     StringGrid1.Cells[0,i]:='';
      read(f,z);
   	 StringGrid1.Cells[1,i]:='';
     StringGrid1.Cells[2,i]:='';
     StringGrid1.Cells[3,i]:='';
     StringGrid1.Cells[4,i]:='';
   end;
Form1.hide;
end;
procedure TForm1.Button3Click(Sender: TObject);
var
str,str1:string;
sur,su1:string[22];
i,j,k,s,m,mm:integer;
begin
 AssignFile(f,'text.dat');
reset(f);
read(f,z);
sur:=z.fam;
i:=1;
str:='';
while not eof(f) do
begin
 s:=i;
 k:=0;
 seek(f,i);
 for j:=i to filesize(f)-1 do
 begin
   read(f,z);
   if sur=z.fam then  k:=k+1;
 end;
 if k>0 then
 begin
  str1:=str;
  while str1<>'' do
  begin
    m:=pos(' ',str1);
    su1:=copy(str1,1,m-1);
    if sur=su1 then mm:=1;
    delete(str1,1,m);
    end;
  if mm<>1 then str:=str+sur+' ';
 end;
 seek(f,i);
read(f,z);
sur:=z.fam;
i:=i+1;
mm:=0;
end;
form4.show;
if str<>''  then  form4.edit1.text:='Да,есть, '+str else form4.edit1.text:='Нет,однофамильцев нет';
end;

procedure TForm1.Button4Click(Sender: TObject);
var
str,str1:string;
sur,su1:string[22];
i,j,k,s,m,mm:integer;
begin
 AssignFile(f,'text.dat');
reset(f);
read(f,z);
sur:=z.gruppa;
i:=1;
str:='';
while not eof(f) do
begin
 s:=i;
 k:=1;
 seek(f,i);
 for j:=i to filesize(f)-1 do
 begin
   read(f,z);
   if sur=z.gruppa then  k:=k+1;
 end;
 if k>3 then
begin
  str1:=str;
  while str1<>'' do
  begin
    m:=pos(' ',str1);
    su1:=copy(str1,1,m-1);
    if sur=su1 then mm:=1;
    delete(str1,1,m);
    end;
  if mm<>1 then str:=str+sur+' ';
 end;
 seek(f,i);
read(f,z);
sur:=z.gruppa;
i:=i+1;
mm:=0;
end;
form5.show;
if str<>''  then  form5.edit1.text:='Да,есть, '+str else form5.edit1.text:='Нет,таких групп нет';
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
form7.show;
self.Hide;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
form6.show;
Form6.edit1.setfocus;
Form1.hide;
end;

procedure TForm1.FormShow(Sender: TObject);
var j,size:integer;
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
   i:=i+1;
     StringGrid1.Cells[0,i]:=IntToStr(i);
      read(f,z);
   	 StringGrid1.Cells[1,i]:=z.fam;
     StringGrid1.Cells[2,i]:=z.name;
     StringGrid1.Cells[3,i]:=z.gruppa;
     StringGrid1.Cells[4,i]:=z.reit;
   end;
closefile(f);
end;


end.
