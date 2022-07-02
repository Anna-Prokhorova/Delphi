unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses Unit2,
Unit3 ;
//,// Unit4, Unit5;
{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
Form2.show;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Form3.show;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 Close;
end;

end.
