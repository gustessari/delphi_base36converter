unit Base36Converter;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtNumDec: TEdit;
    edtBase36: TEdit;
    btnGetBase36Num: TButton;
    lblNum: TLabel;
    lblResult: TLabel;
    procedure btnGetBase36NumClick(
      Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function FloatToInt(aFloat: Double): integer;
begin
  { Easy way to transform a float to int }
  Result := StrToInt(FloatToStr(Int(aFloat)));
end;

{ Based: https://baseconvert.com/ }
function FloatToBase36(aNum: Double): string;
const
  fBase36Table = '0123456789abcdefghijklmnopqrstuvwxyz';

var
  _Decimal, _DecimalMultiplied, _Float: Double;
  _Int: integer;
  _IsResultaInteger: Boolean;

begin
  Result := '';
  _Decimal := aNum;

  if not FloatToInt(_Decimal) = 0 then
    raise Exception.Create('Only works to float numbers, ex: 0.xx');

  repeat
    _DecimalMultiplied := _Decimal * 36;
    _Int := FloatToInt(_DecimalMultiplied);
    _Float := Frac(_DecimalMultiplied);
    _Decimal := _Float;

    _IsResultaInteger :=
      FloatToStr(_DecimalMultiplied) = FloatToStr(Int(_DecimalMultiplied));

    Result := Result + fBase36Table[_Int + 1];
  until _IsResultaInteger or (Length(Result) = 11);
end;

procedure TForm1.btnGetBase36NumClick(
  Sender: TObject);
var
  _floatStr: string;
begin
  _floatStr := StringReplace(edtNumDec.Text, '.', ',', [rfReplaceAll]);
  edtBase36.Text := FloatToBase36(StrToFloat(_floatStr));
end;

end.
