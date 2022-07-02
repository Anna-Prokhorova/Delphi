unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm3 = class(TForm)
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
 //   procedure Edit2Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation
  uses Unit2
  // Unit5, Unit4
  , Unit4;
{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
var f, i, t, a: TextFile;
 n, j: integer;
    s, sI, sT, sA: string;
    
     begin
    n := 0;
  assignfile(f, 'f');
  reset(f);
  while not(eof(f)) AND (s <> Edit1.Text) do
  begin
    inc(n);
    readln(f, s);
  end;
  if s = Edit1.Text then
  begin
    assignfile(i, 'i');
    assignfile(t, 't');
    assignfile(a, 'a');
    reset(i);
    reset(t);
    reset(a);
    for j := 1 to n - 1 do
    begin
      readln(i, s);
      readln(t, s);
      readln(a, s);
    end;
    readln(i, sI);
    readln(t, sT);
    readln(a, sA);
    Edit2.Text := sI;
    Edit3.Text := sT;
    Edit4.Text := sA;
  end
  else
    Form4.show;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
Close;
end;

procedure TForm3.Edit1Change(Sender: TObject);
begin
 if Edit1.Text <> '' then
    Button1.Enabled := true
else
    Button1.Enabled := false;
end;




end.
