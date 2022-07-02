unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Button2: TButton;

 //  procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation
   uses Unit3
  // Unit5, Unit4
   , Unit5;
{$R *.dfm}




procedure TForm2.Button2Click(Sender: TObject);
begin
Close;
end;

procedure TForm2.Button1Click(Sender: TObject);
//begin
var f, i, t, a: TextFile;
    n: integer;
    s: string;
begin
   n := 0;
  assignfile(f, 'f');
  reset(f);
  while not(eof(f)) AND (s <> Edit1.Text) do
  begin
    inc(n);
    readln(f, s);
  end;
  closefile(f);
  if s = Edit1.Text then
    Form5.show
  else
  begin
    assignfile(f, 'f');
    reset(f);
    append(f);
    writeln(f, Edit1.Text);
    closefile(f);
    assignfile(i, 'i');
    append(i);
    writeln(i, Edit2.Text);
    closefile(i);
    assignfile(t, 't');
    append(t);
    writeln(t, Edit3.Text);
    closefile(t);
    assignfile(a, 'a');
    append(a);
    writeln(a, Edit4.Text);
    closefile(a);
    Edit1.Text := '';
    Edit2.Text := '';
    Edit3.Text := '';
    Edit4.Text := '';
  end;
//end;
end;

procedure TForm2.Edit1Change(Sender: TObject);
begin
if (Edit1.Text <> '') AND (Edit2.Text <> '') AND (Edit3.Text <> '') AND (Edit4.Text <> '') then
    Button1.Enabled := true
else
    Button1.Enabled := false;

end;

procedure TForm2.Edit3Change(Sender: TObject);
begin
if (Edit1.Text <> '') AND (Edit2.Text <> '') AND (Edit3.Text <> '') AND (Edit4.Text <> '') then
    Button1.Enabled := true
else
    Button1.Enabled := false;
end;

procedure TForm2.Edit4Change(Sender: TObject);
begin
if (Edit1.Text <> '') AND (Edit2.Text <> '') AND (Edit3.Text <> '') AND (Edit4.Text <> '') then
    Button1.Enabled := true
else
    Button1.Enabled := false;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
if (Edit1.Text <> '') AND (Edit2.Text <> '') AND (Edit3.Text <> '') AND (Edit4.Text <> '') then
    Button1.Enabled := true
else
    Button1.Enabled := false;
end;

end.
