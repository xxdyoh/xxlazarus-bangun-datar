unit upersegipanjang;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfPersegiPanjang }

  TfPersegiPanjang = class(TForm)
    btnHitung: TButton;
    btnHapus: TButton;
    btnKembali: TButton;
    ebPanjang: TEdit;
    ebLebar: TEdit;
    ebKeliling: TEdit;
    ebLuas: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure btnHapusClick(Sender: TObject);
    procedure btnHitungClick(Sender: TObject);
    procedure btnKembaliClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  fPersegiPanjang: TfPersegiPanjang;

implementation
uses
  uawal;

{$R *.lfm}

{ TfPersegiPanjang }

procedure TfPersegiPanjang.btnHitungClick(Sender: TObject);
var
  panjang, lebar, keliling, luas:integer;
begin
  panjang := StrToInt(ebPanjang.Text);
  lebar := StrToInt(ebLebar.Text);

  // Hitung Keliling dan Luas
  keliling := 2 * (panjang + lebar);
  luas := panjang * lebar;

  ebKeliling.Text := IntToStr(keliling);
  ebLuas.Text := IntToStr(luas);
end;

procedure TfPersegiPanjang.btnKembaliClick(Sender: TObject);
begin
  fPersegiPanjang.Hide;
  fMenu.Show;
end;

procedure TfPersegiPanjang.FormCreate(Sender: TObject);
begin

end;

procedure TfPersegiPanjang.FormShow(Sender: TObject);
begin
  ebKeliling.Enabled:=false;
  ebLuas.Enabled:=false;
end;

procedure TfPersegiPanjang.btnHapusClick(Sender: TObject);
begin
  ebPanjang.Clear;
  ebLebar.Clear;
  ebKeliling.Clear;
  ebLuas.Clear;
end;

end.

