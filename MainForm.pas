unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  System.Threading;

type
  TFormMain = class(TForm)
    fpFlow: TFlowPanel;
    grpTaskUpdate: TGroupBox;
    btnTask: TButton;
    lbUpdate1: TLabel;
    Timer1: TTimer;
    ProgressBar1: TProgressBar;
    grpFuture: TGroupBox;
    lbUpdate11: TLabel;
    btnTask1: TButton;
    grpParallel: TGroupBox;
    btnStart: TButton;
    Memo1: TMemo;
    procedure btnStartClick(Sender: TObject);
    procedure btnTask1Click(Sender: TObject);
    procedure btnTaskClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
    FFutureString: IFuture<string>;
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

uses System.DateUtils;

{$R *.dfm}

procedure TFormMain.btnStartClick(Sender: TObject);
begin
  Memo1.Clear;
  TParallel.For(0, 9,
    procedure (index: integer)
    begin
      TThread.Queue(nil,
        procedure
        begin
          Memo1.Lines.Add('Line ' + (index + 1).ToString);
        end
      );
    end
  );
end;

procedure TFormMain.btnTask1Click(Sender: TObject);
begin
  FFutureString := TTask.Future<string>(
    function: string
    begin
      Sleep(3000);
      Result := 'Hello from future ' + Now().ToString();
    end
  );

  FFutureString.Wait(3500);
  lbUpdate11.Caption := FFutureString.Value;
end;

procedure TFormMain.btnTaskClick(Sender: TObject);
begin
  lbUpdate1.Caption := 'Update in 5 seconds';
  TTask.Run(
    procedure
    begin
      Sleep(5000);
      TThread.Synchronize(nil,
        procedure
        begin
          lbUpdate1.Caption := 'Updated from task ' +  Now().ToString();
        end
      );
    end
  );
end;

procedure TFormMain.Timer1Timer(Sender: TObject);
begin
  ProgressBar1.StepIt;
  if ProgressBar1.Position > 100 then
    ProgressBar1.Position := 0;
end;

end.
