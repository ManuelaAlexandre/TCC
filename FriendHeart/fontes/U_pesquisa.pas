unit U_pesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TForm1 = class(TForm)
    rd_tipoDoacao: TDBRadioGroup;
    DBGrid1: TDBGrid;
    procedure rd_tipoDoacaoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses U_dm;

procedure TForm1.rd_tipoDoacaoChange(Sender: TObject);
begin

  with dm.SQL_con_ong do
 begin
Close;
SQL.Clear;
SQL.Add('select * from usu_ong');




 case rd_tipoDoacao.ItemIndex of
    0:
    begin
     sql.add('tipo_doacao = 1');

    end;

    1:
     begin
       sql.add('tipo_doacao =2');
     end;

 end;
 Open;
 end;

end;
 end.