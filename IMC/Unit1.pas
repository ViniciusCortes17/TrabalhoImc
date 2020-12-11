unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit2;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label2: TLabel;
    Peso: TEdit;
    Altura: TEdit;
    Label1: TLabel;
    Memo1: TMemo;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
       p : double;
       a : double;

    function imc (peso,altura: double): double;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}




function TForm1.imc(peso,altura: double): double;
begin
  result := peso / (altura * altura);
end;

procedure TForm1.Button1Click(Sender: TObject);
var
resultImc: currency;
begin
p := StrToFloat(StringReplace(peso.Text, '.', ',', [rfReplaceAll]));
a := StrToFloat(StringReplace(altura.Text, '.', ',', [rfReplaceAll]));
resultImc := imc(p,a);
Memo1.Clear;

 if resultImc < 18.5  then
 begin
 Memo1.Lines.Add('IMC = ' + formatfloat('###,###,##0.00',resultImc));
 Memo1.Lines.Add('Classificação = Magreza');
 end;

 if (resultImc > 18.5) and (resultImc < 24.9) then
 begin
 Memo1.Lines.Add('IMC = ' + formatfloat('###,###,##0.00',resultImc));
 Memo1.Lines.Add('Classificação = Saudável (Indicado)');
 end;

 if (resultImc > 25.0) and (resultImc < 29.9) then
 begin
 Memo1.Lines.Add('IMC = ' + formatfloat('###,###,##0.00',resultImc));
 Memo1.Lines.Add('Classificação = Sobrepeso');
 end;

 if (resultImc > 30.0) and (resultImc < 34.9) then
 begin
 Memo1.Lines.Add('IMC = ' + formatfloat('###,###,##0.00',resultImc));
 Memo1.Lines.Add('Classificação = Obesidade grau 1 (Leve)');
 end;

 if (resultImc > 35.0) and (resultImc < 39.9) then
 begin
 Memo1.Lines.Add('IMC = ' + formatfloat('###,###,##0.00',resultImc));
 Memo1.Lines.Add('Classificação = Obesidade grau 2 (Severa)');
 end;

 if (resultImc > 40.0) and (resultImc < 49.9) then
 begin
 Memo1.Lines.Add('IMC = ' + formatfloat('###,###,##0.00',resultImc));
 Memo1.Lines.Add('Classificação = Obesidade grau 3 (Mórbida)');
 end;

 if (resultImc > 50.0) and (resultImc < 59.9) then
 begin
 Memo1.Lines.Add('IMC = ' + formatfloat('###,###,##0.00',resultImc));
 Memo1.Lines.Add('Classificação = Super Obeso');
 end;

 if resultImc > 60.0 then
 begin
 Memo1.Lines.Add('IMC = ' + formatfloat('###,###,##0.00',resultImc));
 Memo1.Lines.Add('Classificação = Hiper Obeso');
 end;



 end;

 procedure TForm1.Button2Click(Sender: TObject);
 begin
    peso.Text := '';
    altura.Text := '';
    Memo1.Clear;
 end;

 procedure TForm1.Button3Click(Sender: TObject);
 var
 infoImc : TForm2;
 begin
    infoImc := Tform2.Create(self);
    infoImc.ShowModal;
 end;

end.


