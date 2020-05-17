unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Ax: TEdit;
    Bx: TEdit;
    Cx: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Bevel1: TBevel;
    Label8: TLabel;
    Ac: TLabel;
    Bc: TLabel;
    Cc: TLabel;
    Bevel2: TBevel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Button1: TButton;
    Bevel3: TBevel;
    Label20: TLabel;
    Label21: TLabel;
    x1l: TLabel;
    x2l: TLabel;
    Bevel4: TBevel;
    Deltax: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    function EqQuadratica(aX, bX, cX: Real): Boolean;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

function TForm1.EqQuadratica(aX, bX, cX: Real): Boolean;
var
    Delta,
    X1,
    X2: Real;
begin
    Delta := ((bx*bx) + (-4*(aX)*(cX)));
    X1 := ((-bX + (sqrt(Delta))) / (2*aX));
    X2 := ((-bX - (sqrt(Delta))) / (2*aX));

    Ac.Caption := FloatToStr(aX);
    Bc.Caption := FloatToStr(bX);
    Cc.Caption := FloatToStr(cX);

    x1l.Caption := FloatToStr(X1);
    x2l.Caption := FloatToStr(X2);

    if (Delta > 0) then
        Deltax.Caption := '(' + FloatToStr(Delta) + ' > 0) - raízes diferentes'
    else
    if (Delta = 0) then
        Deltax.Caption := '(' + FloatToStr(Delta) + ' = 0) - raízes iguais'
    else
    if (Delta < 0) then
        Deltax.Caption := '(' + FloatToStr(Delta) + ' < 0) - raízes não real'
end;

procedure TForm1.Button1Click(Sender: TObject);
var
    A,
    B,
    C: Real;
begin
    A := StrToFloat(Ax.Text);
    B := StrToFloat(Bx.Text);
    C := StrToFloat(Cx.Text);
    EqQuadratica(A, B, C);
end;

end.
