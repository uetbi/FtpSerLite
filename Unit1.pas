unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FTPServer, ExtCtrls, Menus, XPMan, ComCtrls;

type
  TForm1 = class(TForm)
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;

    edt_BorrowPort: TEdit;
    lbl1: TLabel;
    edt_MaxConn: TEdit;
    lbl2: TLabel;
    edt_UserName: TEdit;
    lbl3: TLabel;
    edt_UserPassword: TEdit;
    lbl4: TLabel;
    edt_WelMessage: TEdit;
    lbl5: TLabel;
    edt_ExitMessage: TEdit;
    lbl6: TLabel;
    edt_BorrowDirectory: TEdit;
    btn4: TButton;
    mmo1: TMemo;

    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    ProgressBar1: TProgressBar;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    dlgOpen1: TOpenDialog;
    Timer1: TTimer;
    Label1: TLabel;
    Label2: TLabel;

    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure TFTPServer1FtpNotifyEvent(ADatetime: TDateTime;AUserIP, AEventMessage: string);
    procedure btn3Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    FFtpServer: TFTPServer;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation



{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
  if not Assigned(FFtpServer) then
  begin
    Label1.Visible:=Label1.Visible;
    FFtpServer := TFTPServer.Create;
    FFtpServer.UserName := Trim(edt_UserName.Text);
    FFtpServer.UserPassword := Trim(edt_UserPassword.Text);
   // FFtpServer.BorrowDirectory := Trim(btn_BorrowDirectory.TButton);
    FFtpServer.BorrowPort := StrToInt(Trim(edt_BorrowPort.Text));
    FFtpServer.OnFtpNotifyEvent := TFTPServer1FtpNotifyEvent;
    FFtpServer.Run;
    mmo1.Lines.Add(DateTimeToStr(Now) + #32 +'FTP服务器已开启，本机IP地址：' + FFtpServer.GetBindingIP);

  end;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  if Assigned(FFtpServer) then
  begin
    FFtpServer.Stop;
    FreeAndNil(FFtpServer);
    mmo1.Lines.Add(DateTimeToStr(Now) + #32 +'FTP服务器已关闭');
  end;
end;

procedure TForm1.TFTPServer1FtpNotifyEvent(ADatetime: TDateTime;AUserIP, AEventMessage: string);
begin
  mmo1.Lines.Add(DateTimeToStr(ADatetime) + #32 + AUserIP + #32 + AEventMessage);
  SendMessage(mmo1.Handle,WM_VSCROLL,SB_PAGEDOWN,0);
end;
procedure TForm1.btn3Click(Sender: TObject);
begin
  if Assigned(FFtpServer) then
    FFtpServer.Stop;
    FreeAndNil(FFtpServer);
    mmo1.Lines.Add(DateTimeToStr(Now) + #32 +'FTP服务器已关闭，即将退出！');

close;
end;

procedure TForm1.N11Click(Sender: TObject);
begin
showmessage ('用于交换机、路由器升级时做临时FTP服务器！');
end;

procedure TForm1.N3Click(Sender: TObject);
begin
  if Assigned(FFtpServer) then
    FFtpServer.Stop;
    FreeAndNil(FFtpServer);
    mmo1.Lines.Add(DateTimeToStr(Now) + #32 +'FTP服务器已关闭，即将退出！');
  
close;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var // 变量说明
DateTime : TDateTime;
str : string;
begin
DateTime := Time; // 取得当前日期和时间
str := TimeToStr(DateTime); // 转换时间成字符串
Label1.Caption := str; // 显示时间字符
{ 注意：这些语句也可直接用下列语句代替:label1.Caption := TimeToStr(Time); }
end;

end.
