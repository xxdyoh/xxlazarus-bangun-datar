unit uawal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TfMenu }

  TfMenu = class(TForm)
    btnPersegipanjang: TButton;
    btnPersegi: TButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    procedure btnPersegiClick(Sender: TObject);
    procedure btnPersegipanjangClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  fMenu: TfMenu;

implementation
uses
  upersegipanjang, uPersegi;

{$R *.lfm}

{ TfMenu }

procedure TfMenu.btnPersegipanjangClick(Sender: TObject);
begin
  fMenu.Hide;
  fPersegiPanjang.Show;
end;

procedure TfMenu.btnPersegiClick(Sender: TObject);
begin
  fMenu.Hide;
  fPersegi.Show;
end;

end.

