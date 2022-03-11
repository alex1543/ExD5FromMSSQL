unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ADODB, Db, Grids, DBGrids;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOQuery1: TADOQuery;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Button2Click(Sender: TObject);
begin
  Memo1.Text := 'INSERT INTO myArtTable (id, text, description, keywords) VALUES(12, ''Гаврилин'', ''программист'', ''2-кат.''); ';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Memo1.Text := 'UPDATE myarttable SET keywords = ''Ivanov'' WHERE id = 18;';
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  Memo1.Text := 'DELETE FROM myarttable WHERE id<17;';
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Memo1.Text := 'DROP TABLE myArtTable;';
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Memo1.Text := 'CREATE TABLE myArtTable (id int NOT NULL, text varchar(255) NOT NULL, description varchar(255) NOT NULL, keywords varchar(255) NOT NULL, PRIMARY KEY (id));';
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  ADOQuery1.SQL.Text:=Memo1.Text;
  ADOQuery1.ExecSQL;
  ADOTable1.Active := false;  
  ADOTable1.Active := true;
end;

end.
