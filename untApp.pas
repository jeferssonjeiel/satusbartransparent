unit untApp;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics,


  {$IFDEF ANDROID}
    Androidapi.Jni.Os,
    Androidapi.Jni.Widget,
    Androidapi.Helpers,
    Androidapi.Jni.JavaTypes,
    Androidapi.JniBridge,
    Androidapi.Jni.GraphicsContentViewText,
    FMX.DialogService.Async,
    FMX.Helpers.Android,
    Androidapi.JNI.App,
  {$ENDIF}

  FMX.Dialogs, FMX.Objects;

type
  TfrmApp = class(TForm)
    Rectangle1: TRectangle;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmApp: TfrmApp;

implementation

{$R *.fmx}

procedure TfrmApp.FormCreate(Sender: TObject);
var
  activity : JActivity;
  window : JWindow;

  begin
    activity := TAndroidHelper.Activity;
	  window := activity.getWindow;

	  window.setFlags(TJWindowManager_LayoutParams.JavaClass.FLAG_TRANSLUCENT_STATUS,
	  TJWindowManager_LayoutParams.JavaClass.FLAG_TRANSLUCENT_STATUS);


    window.setFlags(TJWindowManager_LayoutParams.JavaClass.FLAG_LAYOUT_NO_LIMITS,
	  TJWindowManager_LayoutParams.JavaClass.FLAG_LAYOUT_NO_LIMITS);
  end;

end.
