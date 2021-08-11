unit unitFerias;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, StdCtrls, ExtCtrls, jpeg, Vcl.Imaging.pngimage;

type
    TfFerias = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    Label1: TLabel;
        procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    private
    { Private declarations }
    public
    { Public declarations }
        function DifDias(DataVenc: TDateTime; DataAtual: TDateTime): string;
    end;

var
    fFerias: TfFerias;

implementation

uses DateUtils, MMSystem;

{$R *.dfm}

function TfFerias.DifDias(DataVenc, DataAtual: TDateTime): string;
var Data: TDateTime;
    dia, mes, ano: Word;
begin
    Data := DataAtual - DataVenc;
    DecodeDate(Data, ano, mes, dia);
    Result := FloatToStr(Data) + ' Dias';
end;

procedure TfFerias.FormCreate(Sender: TObject);
begin
  //self.WindowState := wsMaximized;
end;

procedure TfFerias.Timer1Timer(Sender: TObject);
var
  dtAtual, dtFerias, dtDiferente: TDateTime;
  df_hr: TTime;
  dtInicial, dtFinal: TDate;
begin
  dtAtual  := now;
  dtFerias := StrToDateTime('16/12/2016 17:10:00');

  if (dtAtual < dtFerias) then
  begin
    dtInicial := DateOf(dtAtual);
    dtFinal   := dateof(dtFerias);

    dtDiferente := dtFerias - dtAtual;
    df_hr := TimeOf(dtDiferente);

    label1.Caption := 'Faltam ' + DifDias(dtInicial, dtFinal) + ' ' + TimeToStr(df_hr) + ' para as férias!';
    Application.Title := Label1.Caption;
  end
  else
    LABEL1.Caption := 'Chegou as Férias!!!';
  end;
end.

