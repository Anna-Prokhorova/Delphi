unit Unit2;
Interface
Uses  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;
Type  TFigure=Class        x,y, halflen,d1,d2,dx,dy:integer;        Image1:TImage;        constructor Create(ax,ay,ah:integer;aImage:TImage);        procedure Move(t:single);        procedure Draw;virtual;abstract;        procedure Rel(t:real);     end;     TLine=Class(TFigure)            procedure Draw;override;     end;     TSquare=Class(TFigure)            procedure Draw;override;     end;     TCircle=Class(TFigure)            procedure DRAW;override;     end;
Implementation
  Constructor TFigure.Create;    Begin       inherited Create;       x:=ax; y:=ay; halflen:=ah; Image1:=aImage;    End;  Procedure TFigure.Rel;    Begin       dx:=round(halflen*cos(t));       dy:=round(halflen*sin(t));       d1:= round(halflen*(-cos(t+0.8)));       d2:=round(halflen*(-sin(t+0.8)));    End;  Procedure TFigure.Move;    Begin       Image1.Canvas.Pen.Color:=clWhite;       Draw;       Image1.Canvas.Pen.Color:=clBlack;       Rel(t);       Draw;    End; Procedure TLine.Draw;
    Begin   Image1.Canvas.MoveTo(x+dx+10,y+dy);              Image1.Canvas.LineTo(x-dy,y+dx);              Image1.Canvas.LineTo(x-dx-10,y-dy);              Image1.Canvas.LineTo(x+dy,y-dx);                Image1.Canvas.LineTo(x+dx+10,y+dy);    End;  Procedure TSquare.Draw;    Begin   Image1.Canvas.MoveTo(x+dx,y+dy);            Image1.Canvas.LineTo(x-dy,y+dx);            Image1.Canvas.LineTo(x-dx,y-dy);            Image1.Canvas.LineTo(x+dy,y-dx);            Image1.Canvas.LineTo(x+dx,y+dy);    End;  Procedure TCircle.Draw;    Begin           Image1.Canvas.MoveTo(x+dx,y+dy);
          Image1.Canvas.LineTo(x-round(d1/3),y-round(d2/3));
            Image1.Canvas.LineTo(x-dy,y+dx);            Image1.Canvas.LineTo(x+round(d2/3),y-round(d1/3));            Image1.Canvas.LineTo(x-dx,y-dy);            Image1.Canvas.LineTo(x+round(d1/3),y+round(d2/3));            Image1.Canvas.LineTo(x+dy,y-dx);            Image1.Canvas.LineTo(x-round(d2/3),y+round(d1/3));            Image1.Canvas.LineTo(x+dx,y+dy);

    End;end.


