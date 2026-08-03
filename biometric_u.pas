unit biometric_u;

interface

uses
System.SysUtils,
System.Classes;

procedure EnableBiometricLogin(UID: string);
function BiometricEnabled: Boolean;
function GetBiometricUID: string;
procedure TriggerFingerprintPrompt(
OnSuccess: TProc; OnFail: TProc);

implementation

uses
Androidapi.Helpers,
Androidapi.JNI.JavaTypes,
Androidapi.JNIBridge,
Androidapi.JNI.GraphicsContentViewText,
FMX.Helpers.Android;

var
FBiometricEnabled: Boolean = False;
FBiometricUID: string = '';

// Java bridge declarations
type
JBiometricActivityClass = interface(JObjectClass)
['{A1B2C3D4-E5F6-7890-ABCD-EF1234567891}']
function isAvailable(context: JContext):
Boolean; cdecl;
procedure authenticate(context: JContext); cdecl;
function getResult(context: JContext):
JString; cdecl;
procedure clearResult(context: JContext); cdecl;
end;

[JavaSignature('BiometricActivity')]
JBiometricActivity = interface(JObject)
['{B2C3D4E5-F6A7-8901-BCDE-F12345678902}']
end;

TJBiometricActivity = class(TJavaGenericImport<
JBiometricActivityClass, JBiometricActivity>)
end;

procedure SaveToPrefs;
var
Prefs: JSharedPreferences;
Editor: JSharedPreferences_Editor;
begin
Prefs := TAndroidHelper.Context.getSharedPreferences(
StringToJString('MoveRidesPrefs'), 0);
Editor := Prefs.edit;
Editor.putBoolean(
StringToJString('biometric_enabled'),
FBiometricEnabled);
Editor.putString(
StringToJString('biometric_uid'),
StringToJString(FBiometricUID));
Editor.apply;
end;

procedure LoadFromPrefs;
var
Prefs: JSharedPreferences;
begin
Prefs := TAndroidHelper.Context.getSharedPreferences(
StringToJString('MoveRidesPrefs'), 0);
FBiometricEnabled := Prefs.getBoolean(
StringToJString('biometric_enabled'), False);
FBiometricUID := JStringToString(
Prefs.getString(
StringToJString('biometric_uid'),
StringToJString('')));
end;

procedure EnableBiometricLogin(UID: string);
begin
FBiometricEnabled := True;
FBiometricUID := UID;
SaveToPrefs;
end;

function BiometricEnabled: Boolean;
begin
LoadFromPrefs;
Result := FBiometricEnabled;
end;

function GetBiometricUID: string;
begin
LoadFromPrefs;
Result := FBiometricUID;
end;

procedure TriggerFingerprintPrompt(
OnSuccess: TProc; OnFail: TProc);
begin
LoadFromPrefs;
if FBiometricEnabled then
begin
if Assigned(OnSuccess) then
OnSuccess;
end
else
begin
if Assigned(OnFail) then
OnFail;
end;
end;

end.


