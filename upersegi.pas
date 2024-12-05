unit uPersegi;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfPersegi }

  TfPersegi = class(TForm)
    btnHapus: TButton;
    btnHitung: TButton;
    btnKembali: TButton;
    ebKeliling: TEdit;
    ebLuas: TEdit;
    ebSisi: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure btnHapusClick(Sender: TObject);
    procedure btnHitungClick(Sender: TObject);
    procedure btnKembaliClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  fPersegi: TfPersegi;

implementation
uses
  uawal;

{$R *.lfm}

{ TfPersegi }

procedure TfPersegi.btnHitungClick(Sender: TObject);
var
  sisi, keliling, luas:integer;
begin
  sisi := StrToInt(ebSisi.Text);

  //Menghitung Keliling dan Luas
  keliling := 4*sisi;
  luas := sisi * sisi;

  ebKeliling.Text:=IntToStr(keliling);
  ebLuas.Text:=IntToStr(luas)
end;

procedure TfPersegi.btnKembaliClick(Sender: TObject);
begin
  fPersegi.Hide;
  fMenu.Show;
end;

procedure TfPersegi.FormShow(Sender: TObject);
begin
  ebKeliling.Enabled:=false;
  ebLuas.Enabled:=false;
end;

procedure TfPersegi.btnHapusClick(Sender: TObject);
begin
  ebSisi.Clear;
  ebKeliling.Clear;
  ebLuas.Clear;
end;

end.

