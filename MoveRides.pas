unit MoveRides;
//M A D HALO TECHNOLOGIES
//066 061 0560
interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Objects, FMX.Layouts, FMX.TabControl, FMX.Menus,
  FMX.DateTimeCtrls, FMX.Edit, FMX.DialogService, System.DateUtils,
  Androidapi.Helpers,Androidapi.JNI.JavaTypes,Androidapi.JNIBridge,Androidapi.JNI.GraphicsContentViewText,
  System.net.URLClient, system.NetEncoding,
  system.Net.HttpClient, System.Threading, FMX.ListBox, System.Sensors,
  System.Sensors.Components, System.Permissions, Math, StrUtils, database_u, System.JSON,
  FMX.Effects, FMX.Memo.Types, FMX.ScrollBox, FMX.Memo,system.net.HttpClientComponent;

type
  TForm1 = class(TForm)
    TabControl1: TTabControl;
    TabWelcome: TTabItem;
    vertWelcome: TVertScrollBox;
    Image1: TImage;
    lblWelcome: TLabel;
    lblmove: TLabel;
    Timer1: TTimer;
    Timer2: TTimer;
    btnNext: TButton;
    TabChoose: TTabItem;
    VertScrollBox2: TVertScrollBox;
    TabSignUp: TTabItem;
    TabLogIn: TTabItem;
    TabDestination: TTabItem;
    Image2: TImage;
    btnSignUPp: TButton;
    btnLogIn: TButton;
    btnDriver: TButton;
    VertScrollBoxSignUp: TVertScrollBox;
    VertScrollBoxLogIn: TVertScrollBox;
    Image3: TImage;
    lblName: TLabel;
    edtName: TEdit;
    lblSurname: TLabel;
    edtSurname: TEdit;
    lblEmail: TLabel;
    edtEmail: TEdit;
    lblDOB: TLabel;
    edtDOB: TDateEdit;
    lblPhone: TLabel;
    edtPhone: TEdit;
    btnGenerate: TButton;
    lblGenerate: TLabel;
    edtGenerated: TEdit;
    lblwrite: TLabel;
    edtPassword: TEdit;
    btnNext1: TButton;
    btnBack: TButton;
    Image4: TImage;
    Label1: TLabel;
    lblEmailLogin: TLabel;
    edtLoginEmail: TEdit;
    lblPasswordLogin: TLabel;
    edtLoginPassword: TEdit;
    btnLoginBack: TButton;
    btnLoginSubmit: TButton;
    lblForgotPassword: TLabel;
    Image5: TImage;
    VertScrollBox1: TVertScrollBox;
    TabSpecialTrips: TTabItem;
    VertScrollBox3: TVertScrollBox;
    Image6: TImage;
    TabConfirm: TTabItem;
    VertScrollBox4: TVertScrollBox;
    Image7: TImage;
    lblLocation: TLabel;
    lblDestination: TLabel;
    cmbLocation: TComboBox;
    cmbDestinations: TComboBox;
    lblPassengers: TLabel;
    cmbPassengers: TComboBox;
    lblPayment: TLabel;
    cmbPAY: TComboBox;
    chbPackage: TCheckBox;
    edtPackage: TEdit;
    chbTtruck: TCheckBox;
    edtTruck: TEdit;
    btnDestinationBack: TButton;
    btnDestinationHelp: TButton;
    btnSpecialTrips: TButton;
    btnDestinationNext: TButton;
    edtInfo: TEdit;
    lblPriceResults: TLabel;
    btnCalculate: TButton;
    VertScrollBox5: TVertScrollBox;
    lblConfirmTitle: TLabel;
    lblConfirmLocation: TLabel;
    lblConfirmDestination: TLabel;
    lblConfirmType: TLabel;
    lblConfirmPayment: TLabel;
    lblConfirmPrice: TLabel;
    lblGPSStatus: TLabel;
    btnConfirmBooking: TButton;
    btnConfirmBack: TButton;
    btnCancelBooking: TButton;
    LocationSensorUser: TLocationSensor;
    TabFindingDriver: TTabItem;
    VertScrollBox6: TVertScrollBox;
    Image8: TImage;
    Layout1: TLayout;
    TabDriverFound: TTabItem;
    lblFindingTitle: TLabel;
    lblFindingDots: TLabel;
    lblFindingMessage: TLabel;
    lblWaitTime: TLabel;
    lblFindingStatus: TLabel;
    btnCancelWait: TButton;
    VertScrollBox7: TVertScrollBox;
    lblaDriverFoundTitle: TLabel;
    ImgDriverPhoto: TImage;
    lblDriverName: TLabel;
    lblDriverSurname: TLabel;
    lblDriverCar: TLabel;
    lblDriverCarColor: TLabel;
    lblDriverPlate: TLabel;
    lblDriverRating: TLabel;
    lblDriverCode: TLabel;
    lblCodeHint: TLabel;
    TabDriverDahboard: TTabItem;
    VertScrollBox8: TVertScrollBox;
    Image9: TImage;
    lblDriverOnline: TLabel;
    lblDriverStatus: TLabel;
    lblRidePassengers: TLabel;
    lblRideDistance: TLabel;
    lblRideDestination: TLabel;
    lblRidePrice: TLabel;
    lblTodayEarnings: TLabel;
    edtRideCode: TEdit;
    lblWriteCode: TLabel;
    btnGoOffline: TButton;
    btnChatCallPassenger: TButton;
    btnChatCallDriver: TButton;
    TabChat: TTabItem;
    VertScrollBox9: TVertScrollBox;
    Image10: TImage;
    Image11: TImage;
    lblChatTitle: TLabel;
    Messages: TListBox;
    edtChatMessage: TEdit;
    btnSendMessage: TButton;
    btnCallContact: TButton;
    btnBackFromChat: TButton;
    LocationSensorDriver: TLocationSensor;
    btnConfirmRideCode: TButton;
    TabDriverLogin: TTabItem;
    VertScrollBox10: TVertScrollBox;
    Image12: TImage;
    lblDriverLoginTitle: TLabel;
    lblDriverLoginSub: TLabel;
    edtDriverPassword: TEdit;
    btnDriverLoginSubmit: TButton;
    btnDriverLogInBack: TButton;
    btnCANCELRIDE: TButton;
    lblRidePassenger: TLabel;
    btnACCEPTRIDE: TButton;
    TimerPollRides: TTimer;
    InnerGlowEffect1: TInnerGlowEffect;
    TabRatings: TTabItem;
    VertScrollBox11: TVertScrollBox;
    Image13: TImage;
    lblRatingTitle: TLabel;
    lblRatingSubtitle: TLabel;
    btn1star: TButton;
    btn2star: TButton;
    btn3star: TButton;
    btn4star: TButton;
    btn5star: TButton;
    lblSelectedRating: TLabel;
    lblCommentTitle: TLabel;
    memoRatingComment: TMemo;
    btnSkipRating: TButton;
    btnSubmitRating: TButton;
    lblSpecialTitle: TLabel;
    lblSpecialSubtitle: TLabel;
    lblFromST: TLabel;
    edtFromST: TEdit;
    lblToST: TLabel;
    edtToST: TEdit;
    lblTimeST: TLabel;
    edtTimeST: TEdit;
    lblPassengersST: TLabel;
    cmbPassengersST: TComboBox;
    lblPaymentST: TLabel;
    cmbPaymentST: TComboBox;
    lblPriceResultsST: TLabel;
    chbPackageST: TCheckBox;
    edtPackageTypeST: TEdit;
    chbTruckST: TCheckBox;
    edtTruckKgST: TEdit;
    btnCalculateST: TButton;
    btnBackST: TButton;
    btnProceedST: TButton;
    lblDateST: TLabel;
    edtDateST: TEdit;
    TabTerms: TTabItem;
    VertScrollBox12: TVertScrollBox;
    Image14: TImage;
    cbAgreeTerms: TCheckBox;
    memoTerms: TMemo;
    btnAgree: TButton;
    btnConditions: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnSignUPpClick(Sender: TObject);
    procedure btnLogInClick(Sender: TObject);
    procedure btnDriverClick(Sender: TObject);
    procedure edtNameTyping(Sender: TObject);
    procedure edtSurnameTyping(Sender: TObject);
    procedure edtPhoneTyping(Sender: TObject);
    procedure btnGenerateClick(Sender: TObject);

    procedure btnNext1Click(Sender: TObject);
    procedure btnBackClick(Sender: TObject);
    procedure edtPhoneExit(Sender: TObject);
    procedure btnLoginSubmitClick(Sender: TObject);
    procedure btnLoginBackClick(Sender: TObject);
    procedure lblForgotPasswordClick(Sender: TObject);
    procedure chbPackageChange(Sender: TObject);
    procedure chbTtruckChange(Sender: TObject);
    procedure btnCalculateClick(Sender: TObject);
    procedure btnDestinationNextClick(Sender: TObject);
    procedure btnDestinationBackClick(Sender: TObject);
    procedure btnDestinationHelpClick(Sender: TObject);
    procedure btnSpecialTripsClick(Sender: TObject);
    procedure LocationSensorUserLocationChanged(Sender: TObject;
      const OldLocation, NewLocation: TLocationCoord2D);
    procedure btnConfirmBookingClick(Sender: TObject);
    procedure btnCancelBookingClick(Sender: TObject);
    procedure btnConfirmBackClick(Sender: TObject);
    procedure btnCancelWaitClick(Sender: TObject);
    procedure btnDriverLogInBackClick(Sender: TObject);
    procedure btnDriverLoginSubmitClick(Sender: TObject);
    procedure LocationSensorDriverLocationChanged(Sender: TObject;
      const OldLocation, NewLocation: TLocationCoord2D);
    procedure TabControl1Change(Sender: TObject);
    procedure TimerPollRidesTimer(Sender: TObject);
    procedure btnACCEPTRIDEClick(Sender: TObject);
    procedure btnConfirmRideCodeClick(Sender: TObject);
    procedure btnCANCELRIDEClick(Sender: TObject);
    procedure btnGoOfflineClick(Sender: TObject);
    procedure btnChatCallPassengerClick(Sender: TObject);
    procedure btnChatCallDriverClick(Sender: TObject);
    procedure btnSendMessageClick(Sender: TObject);
    procedure btnCallContactClick(Sender: TObject);
    procedure btnBackFromChatClick(Sender: TObject);
    procedure btn3starClick(Sender: TObject);
    procedure btn1starClick(Sender: TObject);
    procedure btn2starClick(Sender: TObject);
    procedure btn4starClick(Sender: TObject);
    procedure btn5starClick(Sender: TObject);
    procedure btnSkipRatingClick(Sender: TObject);
    procedure btnSubmitRatingClick(Sender: TObject);
    procedure btnCalculateSTClick(Sender: TObject);
    procedure btnBackSTClick(Sender: TObject);
    procedure btnProceedSTClick(Sender: TObject);
    procedure chbTruckSTChange(Sender: TObject);
    procedure chbPackageSTChange(Sender: TObject);
    procedure cbAgreeTermsChange(Sender: TObject);
    procedure btnAgreeClick(Sender: TObject);
    procedure btnConditionsClick(Sender: TObject);
  private
    { Private declarations }
    FFullText:string;
    FCurrentChar: Integer;
    FPhase: Integer; //1=typying first text, 2 = typing second text
        //SIGN UP
    FGeneratedPassword: string;
    FCurrentUserUID: string;
           //DESTINATION VARIABLES
     FTripFrom: string     ;
    FTripTo: string ;
    FTripPayment: string;
    FTripPassengers: string;
    FTripIsTruck: Boolean;
    FTripIsDelivery: Boolean;
    FTripPackageType: string;
    FTripTruckKg: string;
    FTripPrice: Double;
    FTripPriceCalculated: Boolean;

    //CONFIRM
// GPS
FLocationSensor: TLocationSensor;
FUserLat: Double;
FUserLng: Double;
FGPSReady: Boolean;
FCurrentRideID: string;

//FINDING DRIVER
FPollingTimer: TTimer;
FWaitSeconds: Integer;
FAssignedDriverUID: string;

//finding driver
FDotsTimer: TTimer;
FDotsStep: Integer;

//TAB CHAT
FChatLastCount : Integer; // tracks message count to detect new ones

//TAB DRIVER DASHBOARD
//FCurrentRideID : string;
FRideAccepted : Boolean;
FDailyEarnings : Double;
FPollingActive : Boolean;


//TABTERMS
FRegistrationType: string; //'user' or 'driver'


// Private fields
FDriverPollingTimer: TTimer;
FDriverUID: string;
FDriverRideID: string;
FDriverPassengerLat: Double;
FDriverPassengerLng: Double;
FTodayEarnings: Double;
FPaymentTimer: TTimer;


//TAB RATING
FSelectedRating : Integer; // 1-5, 0 = none selected
FRatingForDriver : Boolean; // True = user rating driver, False = driver rating user


     //SPECIAL TRIPS
     FSpecialTripPrice : Double;
FSpecialTripCalculated : Boolean;

//TAB DRIVER LOGIN
FActiveDriverKey: string; //driver password
FActiveDriverName: string; //drivername once identified
   FStartCode: string;
// HaversineDistance function declaration:

procedure LoadDriverFound(const DriverUID, Name, Surname,
Car, CarColor, Plate: string; Rating: Double);
// FindClosestDriver helper:
procedure FindClosestDriver;

   procedure LoadTodayEarnings;

    procedure EnterChatTab;
    procedure LoadChatMessages;

     // Procedures
procedure StartGPS;
procedure StopGPS;

procedure StartPolling;
procedure StopPolling;
procedure PollingTimerTick(Sender: TObject);

procedure DotsTimerTick(Sender: TObject);

//TAB RATINGS
procedure UpdateStarDisplay(Rating: Integer);
procedure EnterRatingsTab;




procedure FirebasePut(const Node, JSON:string);
procedure FirebasePatch(const Node,JSON: string);


      function HaversineDistance(Lat1, Lng1, Lat2, Lng2: Double): Double;
// Updated LoadDriverFound signature:

    function FirebaseGet(Node: string): string;
      function GeneratePassword: string;
    function GenerateUID: string;
            //DESTINATION

    function GetAreaCategory(const Area: string): Integer;
    function GetDistanceKm(const Area: string): Double;
    function IsLocalArea(const Area: string): Boolean;
    function CalculatePrice(FromArea, ToArea: string;
    Passengers: Integer; IsTruck, IsDelivery: Boolean;
    TruckKg: Double): Double;


      function GetSpecialTripPrice(const Destination: string;
Passengers: Integer; IsTruck, IsDelivery: Boolean;
TruckKg: Double): Double;


  public
    { Public declarations }
  end;

var
  Form1: TForm1;


implementation

{$R *.fmx}
const
FIREBASE_URL = 'https://moverides-83015-default-rtdb.firebaseio.com';









function TForm1.GetSpecialTripPrice(const Destination: string;
Passengers: Integer; IsTruck, IsDelivery: Boolean;
TruckKg: Double): Double;
var
BaseFare : Double;
DestLower : string;
begin
DestLower := LowerCase(Trim(Destination));
BaseFare := 0;

// Base fares from Giyani hub
if Pos('polokwane', DestLower) > 0 then
BaseFare := 350
else if Pos('tzaneen', DestLower) > 0 then
BaseFare := 250
else if Pos('phalaborwa', DestLower) > 0 then
BaseFare := 300
else if Pos('nelspruit', DestLower) > 0 then
BaseFare := 550
else
BaseFare := 400; // default for unknown outside areas
// Passenger multiplier
if Passengers >= 5 then
BaseFare := BaseFare * 1.3
else if Passengers >= 3 then
BaseFare := BaseFare * 1.15;

// Truck surcharge
if IsTruck then
begin
if TruckKg <= 500 then
BaseFare := BaseFare + 200
else if TruckKg <= 1000 then
BaseFare := BaseFare + 400
else
BaseFare := BaseFare + 700;
end;

// Delivery surcharge
if IsDelivery then
BaseFare := BaseFare + 150;
Result := BaseFare;
end;



procedure TForm1.EnterRatingsTab;
begin
FSelectedRating := 0;

// Reset star buttons to unselected look
btn1Star.Text := '1';
btn2Star.Text := '2';
btn3Star.Text := '3';
btn4Star.Text := '4';
btn5Star.Text := '5';

btn1Star.StyleLookup := '';
btn2Star.StyleLookup := '';
btn3Star.StyleLookup := '';
btn4Star.StyleLookup := '';
btn5Star.StyleLookup := '';

memoRatingComment.Text := '';
lblSelectedRating.Text := 'Tap a star to rate';
// Determine direction
if ActiveDriverKey <> '' then
begin
FRatingForDriver := False; // driver rating the user
lblRatingTitle.Text := 'Rate Your Passenger';
end
else
begin
FRatingForDriver := True; // user rating the driver
lblRatingTitle.Text := 'How was your ride?';
end;

TabControl1.ActiveTab := TabRatings;
end;

procedure TForm1.UpdateStarDisplay(Rating: Integer);
begin
// Reset all
btn1Star.Text := '1';
btn2Star.Text := '2';
btn3Star.Text := '3';
btn4Star.Text := '4';
btn5Star.Text := '5';

// Fill selected stars with ★
if Rating >= 1 then btn1Star.Text := '★';
if Rating >= 2 then btn2Star.Text := '★';
if Rating >= 3 then btn3Star.Text := '★';
if Rating >= 4 then btn4Star.Text := '★';
if Rating >= 5 then btn5Star.Text := '★';

case Rating of
1: lblSelectedRating.Text := '1 Star - Poor';
2: lblSelectedRating.Text := '2 Stars - Fair';
3: lblSelectedRating.Text := '3 Stars - Good';
4: lblSelectedRating.Text := '4 Stars - Great';
 5: lblSelectedRating.Text := '5 Stars - Excellent!';
end;
end;



  procedure TForm1.EnterChatTab;
begin
FChatLastCount := 0;
Messages.Clear;

if ActiveDriverKey <> '' then
lblChatTitle.Text := 'Chat with Passenger'
else
lblChatTitle.Text := 'Chat with Driver';

edtChatMessage.Text := '';

// Start chat polling — reuse TimerPollRides or a dedicated timer
TimerPollRides.Interval := 3000;
TimerPollRides.Enabled := True;
end;


procedure TForm1.LoadChatMessages;
begin
if FCurrentRideID = '' then Exit;

TThread.CreateAnonymousThread(procedure
var
H : TNetHTTPClient;
Response : string;
JSON : TJSONObject;
Pair : TJSONPair;
MsgObj : TJSONObject;
Sender : string;
Text : string;
Time : string;
Items : TStringList;
i : Integer;
begin
H := TNetHTTPClient.Create(nil);
try
H.ConnectionTimeout:= 5000;
H.ResponseTimeout := 5000;
  //MAD HALO TECHNOLOGIES
try
Response := H.Get(
FIREBASE_URL + '/rides/' + FCurrentRideID + '/chat.json'
).ContentAsString(TEncoding.UTF8);
except
Exit;
end;

if (Response = '') or (Response = 'null') then Exit;

JSON := TJSONObject.ParseJSONValue(Response) as TJSONObject;
if JSON = nil then Exit;

Items := TStringList.Create;
try
for i := 0 to JSON.Count - 1 do
begin
Pair := JSON.Pairs[i];
if not (Pair.JsonValue is TJSONObject) then Continue;
MsgObj := Pair.JsonValue as TJSONObject;

Sender := MsgObj.GetValue<string>('sender', '');
Text := MsgObj.GetValue<string>('message', '');
Time := MsgObj.GetValue<string>('time', '');

if Sender = 'driver' then
Items.Add('DRIVER|' + Text + ' ' + Time)
else
Items.Add('USER|' + Text + ' ' + Time);
end;

// Only update UI if new messages arrived
if Items.Count > FChatLastCount then
begin
FChatLastCount := Items.Count;

TThread.Synchronize(nil, procedure
var
j : Integer;
Item : TListBoxItem;
begin
Messages.Clear;
for j := 0 to Items.Count - 1 do
begin
Item := TListBoxItem.Create(Messages);
Item.Parent := Messages;

if Items[j].StartsWith('DRIVER|') then
begin
Item.Text := StringReplace(Items[j], 'DRIVER|', '', []);
Item.TextAlign := TTextAlign.Trailing; // right align = driver
Item.StyledSettings := Item.StyledSettings - [TStyledSetting.FontColor];
Item.FontColor := TAlphaColorRec.Blue;
end
else
begin
Item.Text := StringReplace(Items[j], 'USER|', '', []);
Item.TextAlign := TTextAlign.Leading; // left align = user
Item.StyledSettings := Item.StyledSettings - [TStyledSetting.FontColor];
Item.FontColor := TAlphaColorRec.Black;
end;
end;

if Messages.Count > 0 then
Messages.ItemIndex := Messages.Count -1;
end);
end;

finally
Items.Free;
JSON.Free;
end;

finally
H.Free;
end;
end).Start;
end;



procedure TForm1.TabControl1Change(Sender: TObject);
begin
if TabControl1.ActiveTab = TabDriverDahboard then
begin
FCurrentRideID := '';
FRideAccepted := False;
FDailyEarnings := 0;

// Reset display
lblRidePassenger.Text := 'Searching for rides...';
lblRidePrice.Text := '';
lblRideDestination.Text := '';
lblTodayEarnings.Text := 'Today: R0.00';
lblDriverStatus.Text := 'Status: Online';

// Hide ride action buttons until ride appears
btnACCEPTRIDE.Visible := False;
btnCANCELRIDE.Visible := False;
btnConfirmRideCode.Visible := False;
btnChatCallPassenger.Visible := False;
edtRideCode.Visible := False;

// Load today's earnings from Firebase
LoadTodayEarnings;

// Start polling for rides
FPollingActive := True;
TimerPollRides.Enabled := True;
end
else
begin
// Stop polling when leaving dashboard
TimerPollRides.Enabled := False;
FPollingActive := False;
end;
cbAgreeTerms.IsChecked:=false;
btnAgree.Enabled:= false;
btnConditions.Enabled:=false;
btnAgree.Opacity:=0.45;
btnConditions.Opacity:=0.45;
end;



procedure TForm1.LoadTodayEarnings;
var
H : TNetHTTPClient;
Response : string;
JSON : TJSONObject;
Earnings : Double;
begin
H := TNetHTTPClient.Create(nil);
try
H.ConnectionTimeout := 8000;
H.ResponseTimeout := 8000;

try
Response := H.Get(
FIREBASE_URL + '/drivers/' + ActiveDriverKey + '/earnings_today.json'
).ContentAsString(TEncoding.UTF8) ;
except
Exit;
end;

if (Response = '') or (Response = 'null') then
begin
FDailyEarnings := 0;
end
else
begin
if not

TryStrToFloat(Trim(response), FDailyEarnings) then
FDailyEarnings := 0;
end;

TThread.Queue(nil, procedure
begin
lblTodayEarnings.Text := 'Today: R' + FormatFloat('0.00', FDailyEarnings);
end);
finally
H.Free;
end;
end;




    procedure TForm1.FirebasePut(const Node, JSON: string);
var
H: TNetHTTPClient;
Body: TStringStream;
begin
H := TNetHTTPClient.Create(nil);
Body := TStringStream.Create(JSON, TEncoding.UTF8);
try

H.ContentType := 'application/json';
H.Put(FIREBASE_URL + '/' + Node + '.json' ,Body);
finally
Body.Free;
H.Free;
end;
end;

procedure TForm1.FirebasePatch(const Node, JSON: string);
var
H: TNetHTTPClient;
Body: TStringStream;
Request: TNetHTTPRequest;
begin
H := TNetHTTPClient.Create(nil);
Body := TStringStream.Create(JSON, TEncoding.UTF8);
try
H.ContentType := 'application/json';
H.Patch(FIREBASE_URL + '/' + Node + '.json' ,
Body);
finally
Body.Free;       //MMASECHABA
H.Free;
end;
end;



procedure TForm1.PollingTimerTick(Sender: TObject);
begin
Inc(FWaitSeconds);
lblWaitTime.Text := 'Searching: ' + Format('%d:%02d', [FWaitSeconds div 60, FWaitSeconds mod 60]);

// Stop searching after 5 minutes
if FWaitSeconds >= 600 then
begin
StopPolling;
lblFindingStatus.Text := 'No driver found. Please try again.';
btnCancelWait.Text := 'Go Back';
Exit;
end;

FindClosestDriver;
end;

procedure TForm1.FindClosestDriver;
var
DriversJSON, DriverNode, DriverData: string;
BestUID, BestName, BestSurname, BestCar,
BestCarColor, BestPlate: string;
BestRating, BestDist, DriverLat, DriverLng, Dist: Double;
IsActive: Boolean;
i: Integer;
// Simple JSON parsing helpers — adjust if you use a JSON library
function GetJSONValue(const JSON, Key: string): string;
var p, q: Integer;
begin
Result := '';
p := Pos('"' + Key + '"', JSON);
if p = 0 then Exit;
p := PosEx(':', JSON, p);
if p = 0 then Exit;
Inc(p);
while (p <= Length(JSON)) and (JSON[p] = ' ') do Inc(p);
if JSON[p] = '"' then
begin

Inc(p);
q := PosEx('"', JSON, p);
Result := Copy(JSON, p, q - p);
end
else
begin
q := p;
while (q <= Length(JSON)) and not (JSON[q] in [',', '}', #13, #10]) do Inc(q);
Result := Trim(Copy(JSON, p, q - p));
end;
end;
begin
// GET all drivers from Firebase
DriversJSON := FirebaseGet('drivers');
if DriversJSON = '' then Exit;

BestUID := '';
BestDist := 1E18;

// --- Parse each driver node ---
// Firebase REST returns {"uid1":{...},"uid2":{...}}
i := 1;
while i < Length(DriversJSON) do
begin
// Find next "uid" key
while (i < Length(DriversJSON)) and (DriversJSON[i] <> '"') do Inc(i);
if i >= Length(DriversJSON) then Break;
Inc(i); // skip opening quote
var UIDStart := i;
while (i < Length(DriversJSON)) and (DriversJSON[i] <> '"') do Inc(i);
var UID := Copy(DriversJSON, UIDStart, i - UIDStart);
Inc(i); // skip closing quote

// Find the object for this driver
while (i < Length(DriversJSON)) and (DriversJSON[i] <> '{') do Inc(i);
var ObjStart := i;
var Depth := 0;
repeat
if DriversJSON[i] = '{' then Inc(Depth)
else if DriversJSON[i] = '}' then Dec(Depth);
Inc(i);
until (Depth = 0) or (i > Length(DriversJSON));
DriverData := Copy(DriversJSON, ObjStart, i - ObjStart);
// Read fields
IsActive := GetJSONValue(DriverData, 'IsActive') = 'true';
if not IsActive then Continue;

DriverLat := StrToFloatDef(GetJSONValue(DriverData, 'Lat'), 0);
DriverLng := StrToFloatDef(GetJSONValue(DriverData, 'Lng'), 0);
if (DriverLat = 0) and (DriverLng = 0) then Continue;

// Skip drivers already on a ride
if GetJSONValue(DriverData, 'CurrentRideID') <> '' then Continue;

// Haversine distance (returns km)
Dist := HaversineDistance(FUserLat, FUserLng, DriverLat, DriverLng);

if Dist < BestDist then
begin
BestDist := Dist;
BestUID := UID;
BestName := GetJSONValue(DriverData, 'Name');
BestSurname := GetJSONValue(DriverData, 'Surname');
BestCar := GetJSONValue(DriverData, 'Car');
BestCarColor := GetJSONValue(DriverData, 'CarColor');
BestPlate := GetJSONValue(DriverData, 'Plate');
BestRating := StrToFloatDef(GetJSONValue(DriverData, 'Rating'), 0);
end;
end;

if BestUID <> '' then
LoadDriverFound(BestUID, BestName, BestSurname,
BestCar, BestCarColor, BestPlate, BestRating);
end;


function TForm1.HaversineDistance(Lat1, Lng1, Lat2, Lng2: Double): Double;
const R = 6371.0;
var dLat, dLng, a: Double;
begin
dLat := DegToRad(Lat2 - Lat1);
dLng := DegToRad(Lng2 - Lng1);
a := Sin(dLat/2)*Sin(dLat/2) +
Cos(DegToRad(Lat1))*Cos(DegToRad(Lat2))*
Sin(dLng/2)*Sin(dLng/2);
Result := R * 2 * ArcTan2(Sqrt(a), Sqrt(1-a));
end;

procedure TForm1.LoadDriverFound(const DriverUID, Name, Surname,
Car, CarColor, Plate: string; Rating: Double);
begin


// Fetch driver info from Firebase in background
TThread.CreateAnonymousThread(
procedure
var
Response, LDriverUID: string;
function ParseField(JSON, Field: string): string;
var
P: Integer;
begin
P := Pos('"' + Field + '":"', JSON);
if P > 0 then
begin
Result := Copy(JSON, P + Length(Field) + 4, 100);
Result := Copy(Result, 1, Pos('"', Result) - 1);
end
else
Result := '';
end;
var
DName, DSurname, DCar, DColor, DPlate, DRating, DPhoto: string;
begin
LDriverUID := DriverUID;
try
Response := FirebaseGet('drivers/' + LDriverUID);

DName := ParseField(Response, 'name');
DSurname := ParseField(Response, 'surname');
DCar := ParseField(Response, 'carBrand');
DColor := ParseField(Response, 'carColor');
DPlate := ParseField(Response, 'numberPlate');
DRating := ParseField(Response, 'rating');
DPhoto := ParseField(Response, 'photoURL');

TThread.Synchronize(nil,
procedure
begin
lblDriverName.Text := 'Name: ' + DName;
lblDriverSurname.Text := 'Surname: ' + DSurname;
lblDriverCar.Text := 'Car: ' + DCar;
lblDriverCarColor.Text := 'Color: ' + DColor;
lblDriverPlate.Text := 'Plate: ' + DPlate;
lblDriverRating.Text := 'Rating: ⭐ ' + DRating;
lblDriverCode.Text := '';
lblCodeHint.Text := '';

// Load photo if URL exists
if DPhoto <> '' then
begin
TThread.CreateAnonymousThread(
procedure
var
HTTP: THTTPClient;
MS: TMemoryStream;
LPhoto: string;
begin
LPhoto := DPhoto;
HTTP := THTTPClient.Create;
MS := TMemoryStream.Create;
try
HTTP.Get(LPhoto, MS);
MS.Position := 0;
TThread.Queue(nil,
procedure
begin
imgDriverPhoto.Bitmap.LoadFromStream(MS);
end);
except
// photo failed silently
end;
MS.Free;
HTTP.Free;
end
).Start;
end;

TabControl1.ActiveTab := TabDriverFound;
end);
except
TThread.Queue(nil,
procedure
begin
ShowMessage('Could not load driver info. Please wait.');
StartPolling;
end);
end;
end
).Start;
end;




procedure TForm1.DotsTimerTick(Sender: TObject);
const
DotFrames: array[0..5] of string = (
'● ○ ○',
'○ ● ○',
'○ ○ ●',
'○ ● ○',
'● ○ ○',
'○ ○ ●'
);
begin
Inc(FDotsStep);
if FDotsStep > 5 then FDotsStep := 0;
lblFindingDots.Text := DotFrames[FDotsStep];
end;

procedure TForm1.StartPolling;
begin

end;

procedure TForm1.StopPolling;
begin
if Assigned(FPollingTimer) then
FPollingTimer.Enabled := False;
if Assigned(FDotsTimer) then
FDotsTimer.Enabled := False;

TimerPollRides.Enabled:= false;
FPollingActive:= false;
end;

  //MRS TECHSETTER
procedure TForm1.StartGPS;
begin
FGPSReady := False;
FUserLat := 0;
FUserLng := 0;

if not Assigned(FLocationSensor) then
begin
FLocationSensor := TLocationSensor.Create(Self);
FLocationSensor.OnLocationChanged := LocationSensorUserLocationChanged;
end;

try
FLocationSensor.Active := True;
lblGPSStatus.Text := 'GPS: Locating...';
lblGPSStatus.TextSettings.FontColor := TAlphaColorRec.Orange;
except
on E: Exception do
begin
lblGPSStatus.Text := 'GPS: Unavailable';
lblGPSStatus.TextSettings.FontColor := TAlphaColorRec.Red;
end;
end;

end;

procedure TForm1.StopGPS;
begin
if Assigned(FLocationSensor) then
begin
FLocationSensor.Active := False;
FLocationSensor.Free;
FLocationSensor := nil;
end;
end;



function TForm1.IsLocalArea(const Area: string): Boolean;
var
A: string;
begin
A := UpperCase(Trim(Area));
Result := (A = 'MALL') or (A = 'TOWN') or (A = 'GIYANI') or
(A = 'SECTION A') or (A = 'SECTION E') or
(A = 'SECTION F') or (A = 'SECTION 14');
end;

function TForm1.GetAreaCategory(const Area: string): Integer;
var
A: string;
begin
A := UpperCase(Trim(Area));

// Cat 1 - Local
if (A = 'MALL') or (A = 'TOWN') or (A = 'GIYANI') or
(A = 'SECTION A') or (A = 'SECTION E') or
(A = 'SECTION F') or (A = 'SECTION 14') then
Result := 1

// Cat 2 - Semi-local
else if (A = 'KREMETART') or (A = 'RISINGA VIEW') then
Result := 2

// Cat 3 - Malamulele group
else if (A = 'MALAMULELE') or (A = 'MALTOWN') or
(A = 'SECTION A MALAMULELE') or (A = 'SECTION B MALAMULELE') or
(A = 'SECTION C MALAMULELE') or (A = 'SECTION D MALAMULELE') then
Result := 3

// Cat 4 - Villages
else if (A = 'MAKOXA') or (A = 'XIKUKWANI') or (A = 'HOMU') or
(A = 'NGOVE') or (A = 'NKOMO') or (A = 'HLANEKI') or
(A = 'THOMO') or (A = 'NDENGEZA') or (A = 'SIYANDHANI') or
(A = 'DZINGIDZINGI') or (A = 'MAVALANI') or (A = 'XIVULANI') or
(A = 'SHAWELA') or (A = 'BUNGENI') or (A = 'BODE') or
(A = 'RIVONI') or (A = 'MUYEXE') or (A = 'XAWELA') or
(A = 'MTITITI') or (A = 'SEKHUNYANE') or (A = 'MAPHATA') or
(A = 'NWA MARHANGA') then
Result := 4

// Cat 5 - Cities
else if (A = 'TZANEEN') or (A = 'THOHOYANDOU') or
(A = 'POLOKWANE') or (A = 'PHALABORWA') or
(A = 'KRABSKOP') then
Result := 5

else
Result := 0; // Unknown

end;

function TForm1.GetDistanceKm(const Area: string): Double;
var
A: string;
begin
A := UpperCase(Trim(Area));

// Local
if A = 'MALL' then Result := 1
else if A = 'TOWN' then Result := 2
else if A = 'GIYANI' then Result := 0
else if A = 'SECTION A' then Result := 3
else if A = 'SECTION D1' then Result := 4
else if A = 'SECTION D2' then Result := 4
else if A = 'SECTION E' then Result := 3
else if A = 'SECTION F' then Result := 5
else if A = 'SECTION 14' then Result := 5

// Semi-local
else if A = 'RISINGA VIEW' then Result := 6
else if A = 'KREMETART' then Result := 28
// Malamulele group
else if A = 'MALAMULELE' then Result := 30
else if A = 'MALTOWN' then Result := 32
else if A = 'SECTION A MALAMULELE' then Result := 31
else if A = 'SECTION B MALAMULELE' then Result := 31
else if A = 'SECTION C MALAMULELE' then Result := 31
else if A = 'SECTION D MALAMULELE' then Result := 31

// Villages
else if A = 'MAKOXA' then Result := 8
else if A = 'XIKUKWANI' then Result := 15
else if A = 'HOMU' then Result := 25
else if A = 'NGOVE' then Result := 10
else if A = 'NKOMO' then Result := 18
else if A = 'HLANEKI' then Result := 12
else if A = 'THOMO' then Result := 7
else if A = 'NDENGEZA' then Result := 20
else if A = 'SIYANDHANI' then Result := 5
else if A = 'DZINGIDZINGI' then Result := 14
else if A = 'MAVALANI' then Result := 22
else if A = 'XIVULANI' then Result := 9
else if A = 'SHAWELA' then Result := 6
else if A = 'BUNGENI' then Result := 4
else if A = 'BODE' then Result := 11
else if A = 'RIVONI' then Result := 16
else if A = 'MUYEXE' then Result := 35
else if A = 'XAWELA' then Result := 13
else if A = 'MTITITI' then Result := 28
else if A = 'SEKHUNYANE' then Result := 24
else if A = 'MAPHATA' then Result := 24
else if A = 'NWA MARHANGA' then Result := 19

// Cities
else if A = 'MALUMELELE' then Result := 30
else if A = 'TZANEEN' then Result := 125
else if A = 'SEKHUKHUNE' then Result := 160
else if A = 'THOHOYANDOU' then Result := 70
else if A = 'POLOKWANE' then Result := 185
else if A = 'PHALABORWA' then Result := 140
else if A = 'KRABSKOP' then Result := 80

else Result := 50;
end;

function TForm1.CalculatePrice(FromArea, ToArea: string;
Passengers: Integer; IsTruck, IsDelivery: Boolean;
TruckKg: Double): Double;
var
BasePrice, FinalPrice: Double;
FromCat, ToCat, HourNow: Integer;
IsNight, IsMidnight: Boolean;
begin
FromArea := UpperCase(Trim(FromArea));
ToArea := UpperCase(Trim(ToArea));
FromCat := GetAreaCategory(FromArea);
ToCat := GetAreaCategory(ToArea);
HourNow := HourOf(Now);

// Time zones
// Normal: 6 <= H < 20 (6am to 8pm)
// Night: 20 <= H < 24 (8pm to midnight)
// Midnight: 0 <= H < 6 (midnight to 6am)
IsNight := (HourNow >= 20) and (HourNow < 24);
IsMidnight := (HourNow >= 0) and (HourNow < 6);
if IsTruck then
begin
BasePrice := 60 + (GetDistanceKm(ToArea) * 10);
if IsNight then BasePrice := BasePrice + 10;
if IsMidnight then BasePrice := 100; // flat
Result := BasePrice;
Exit;
end;

// ── DELIVERY ───────────────────────────────────────────────────────
if IsDelivery then
begin
BasePrice := 50 + (GetDistanceKm(ToArea) * 5);
if IsNight then BasePrice := BasePrice + 10;
if IsMidnight then BasePrice := 100; // flat
Result := BasePrice;
Exit;
end;
// ── NORMAL RIDE ────────────────────────────────────────────────────

// Determine base price from category pair (6am–8pm normal rates)
// City = Cat 5, everything else pairs shown below
if (FromCat = 5) and (ToCat = 5) then
BasePrice := 90 // City to City

else if (FromCat = 5) or (ToCat = 5) then
BasePrice := 100 // Anything to/from City

else if (FromCat = 3) and (ToCat = 3) then
BasePrice := 50 // Malamulele internal = same as Local

else
// Local(1) <-> Local(1) = 50
// Local(1) <-> Semi(2) = 60
// Local(1) <-> Malamulele(3) = 60
// Local(1) <-> Village(4) = 60
// Semi(2) <-> Semi(2) = 60
// Semi(2) <-> Malamulele(3) = 60
// Semi(2) <-> Village(4) = 60
// Malamulele(3) <-> Village(4) = 60
// Village(4) <-> Village(4) = 60
if (FromCat = 1) and (ToCat = 1) then
BasePrice := 50
else
BasePrice := 60;

// ── TIME SURCHARGES ────────────────────────────────────────────────
if IsMidnight then
begin
if (FromCat = 5) or (ToCat = 5) then
BasePrice := BasePrice + 100 // Cities: +R100 on top
else
BasePrice := 100; // All others: flat R100
end
else if IsNight then
BasePrice := BasePrice + 10; // 8pm–midnight: +R10 for all

// ── PASSENGER SURCHARGE ────────────────────────────────────────────
case Passengers of
1: BasePrice := BasePrice + 10;
2: ; // no change
3: BasePrice := BasePrice + 20;
end;

Result := BasePrice;
end;









function TForm1.FirebaseGet(Node: string): string;
var
HTTP: THTTPClient;
URL: string;
Response: IHTTPResponse;
SS: TStringStream;
begin
Result:='';
URL := FIREBASE_URL + '/' + Node + '.json?auth=' + FIREBASE_KEY;
HTTP:= THTTPClient.Create;
SS:= TStringStream.Create('', TEncoding.UTF8)    ;
try
Response := HTTP.Get(URL, SS)       ;
if Response.StatusCode = 200 then
Result := SS.DataString
else

ShowMessage('Firebase Read error: ' + IntToStr(Response.StatusCode));
except
on E: Exception  do
ShowMessage(' Read error: ' + E.Message);
end;
SS.Free;
HTTP.Free   ;

end;

function TForm1.GenerateUID: string;
var
I: Integer;
Chars: string;
begin
Chars := 'abcdefghijklmnopqrstuvwxyz0123456789';
Result := 'usr_';
Randomize;
for I := 1 to 12 do
Result := Result + Chars[Random(Length(Chars)) + 1];
end;

function TForm1.GeneratePassword: string;
var
NName, NSurname: string;
Prefix:string;
Chars:string;
I: iNTEGER;
RandomPart: string;
begin

NName := UpperCase(Trim(edtName.Text));
NSurname := UpperCase(Trim(edtSurname.Text));

// Take first letter of name + first 2 of surname (if available)
Prefix := '';
if Length(NName) >= 1 then Prefix := Prefix + NName[1];
if Length(NSurname) >= 2 then Prefix := Prefix + Copy(NSurname, 1, 2)
else if Length(NSurname) = 1 then Prefix := Prefix + NSurname[1];

// Generate random characters
Chars := 'ABCDEFGHJKLMNPQRSTUVWXYZ23456789!@#';
RandomPart := '';
for I := 1 to 6 do
RandomPart := RandomPart + Chars[Random(Length(Chars)) + 1];

Result := Prefix + RandomPart; // e.g. "JDO3K#9M"
end;    //M A D HALO TECHNOLOGIES

procedure TForm1.lblForgotPasswordClick(Sender: TObject);
var
Email: string;
begin
Email := '';
if InputQuery('Forgot Password', 'Enter your registered email:', Email) then
begin
if Trim(Email) = '' then
ShowMessage('Please enter your email.')
else
ShowMessage('Password recovery will be available once Firebase is connected.');
// Later: QueryFirebaseForPassword(Email);
end;

end;

procedure TForm1.LocationSensorDriverLocationChanged(Sender: TObject;
  const OldLocation, NewLocation: TLocationCoord2D);
var
DriverLat : Double;
DriverLng : Double;
begin
if ActiveDriverKey = '' then
Exit;

DriverLat := NewLocation.Latitude;
DriverLng := NewLocation.Longitude;

TThread.CreateAnonymousThread(procedure
var
H : TNetHTTPClient;
SS : TStringStream;
Json : string;
begin
Json := Format(
'{"lat":%.6f,"lng":%.6f}',
[DriverLat, DriverLng],
TFormatSettings.Invariant
);

H := TNetHTTPClient.Create(nil);
SS := TStringStream.Create(Json, TEncoding.UTF8);
try

H.ContentType := 'application/json';
H.Patch(
FIREBASE_URL + 'drivers/' + ActiveDriverKey + '/location.json' ,
SS
);
finally
SS.Free;
H.Free;
end;
end).Start;
end;





procedure TForm1.LocationSensorUserLocationChanged(Sender: TObject;
  const OldLocation, NewLocation: TLocationCoord2D);
var
LLat, LLng: Double;
begin
FUserLat := NewLocation.Latitude;
FUserLng := NewLocation.Longitude;
FGPSReady := True;

TThread.Synchronize(nil,
procedure
begin
lblGPSStatus.Text := 'GPS: Ready';
lblGPSStatus.TextSettings.FontColor := TAlphaColorRec.Green;
end);

// Push live location to Firebase if ride is active
if FCurrentRideID <> '' then
begin
LLat := FUserLat;
LLng := FUserLng;
TThread.CreateAnonymousThread(
procedure
var
HTTP: THTTPClient;
SS, RS: TStringStream;
URL, LJson: string;
begin
LJson := '{"lat":' + FormatFloat('0.0000000', LLat) +
',"lng":' + FormatFloat('0.0000000', LLng) + '}';
URL := FIREBASE_URL + '/rides/' + FCurrentRideID +
'/liveLocation.json?auth=' + FIREBASE_KEY;
HTTP := THTTPClient.Create;
SS := TStringStream.Create(LJson, TEncoding.UTF8);
RS := TStringStream.Create('', TEncoding.UTF8);
try
HTTP.ContentType := 'application/json';
HTTP.Put(URL, SS, RS);
except end;
SS.Free;
RS.Free;
HTTP.Free;
end
).Start;
end;
end;



procedure TForm1.btn1starClick(Sender: TObject);
begin
FSelectedRating := 1;
UpdateStarDisplay(1);
end;

procedure TForm1.btn2starClick(Sender: TObject);
begin
FSelectedRating := 2;
UpdateStarDisplay(2);
end;

procedure TForm1.btn3starClick(Sender: TObject);
begin
FSelectedRating := 3;
UpdateStarDisplay(3);
end;

procedure TForm1.btn4starClick(Sender: TObject);
begin
FSelectedRating := 4;
UpdateStarDisplay(4);
end;

procedure TForm1.btn5starClick(Sender: TObject);
begin
FSelectedRating := 5;
UpdateStarDisplay(5);
end;

procedure TForm1.btnACCEPTRIDEClick(Sender: TObject);
begin
if FCurrentRideID = '' then Exit;

TThread.CreateAnonymousThread(procedure
var
H : TNetHTTPClient;
ST : TStringStream;
J : string;
begin
J := Format(
'{"status":"accepted","driverKey":"%s","driverName":"%s","driverPhone":"%s"}',
[ActiveDriverKey, ActiveDriverName, ActiveDriverPhone]
);

H := TNetHTTPClient.Create(nil);
ST := TStringStream.Create(J, TEncoding.UTF8);
try
H.ContentType := 'application/json';
H.Put(
FIREBASE_URL + '/rides/' + FCurrentRideID + '.json',
ST
);
finally
ST.Free;
H.Free;
end;
TThread.Queue(nil, procedure
begin
FRideAccepted := True;
TimerPollRides.Enabled := False;

// Show code confirmation
btnACCEPTRIDE.Visible := False;
btnCANCELRIDE.Visible := True;
btnConfirmRideCode.Visible := True;
edtRideCode.Visible := True;
edtRideCode.Text := '';

lblDriverStatus.Text := 'Status: Ride Accepted';
end);

end).Start;
end;

procedure TForm1.btnAgreeClick(Sender: TObject);
begin
if not cbAgreeTerms.IsChecked then exit      ;
TabControl1.ActiveTab:= TabSignUp;
end;

procedure TForm1.btnBackClick(Sender: TObject);
begin

TabControl1.ActiveTab := TabChoose;
end;

procedure TForm1.btnBackFromChatClick(Sender: TObject);
begin
TimerPollRides.Enabled := False;
FChatLastCount := 0;
Messages.Clear;

// Go back to dashboard
if ActiveDriverKey <> '' then
TabControl1.ActiveTab := TabDriverDahboard
else
TabControl1.ActiveTab := TabFindingDriver;
end;

 //MMASECHABA MALATJIE

procedure TForm1.btnBackSTClick(Sender: TObject);
begin
TabControl1.ActiveTab := TabDestination;
end;

procedure TForm1.btnCalculateClick(Sender: TObject);
var
FromArea, ToArea: string;
Passengers: Integer;
TruckKg: Double;
Price: Double;
begin
if cmbLocation.ItemIndex = -1 then
begin ShowMessage('Please select your pickup location.'); Exit; end;

if cmbDestinations.ItemIndex = -1 then
begin ShowMessage('Please select your destination.'); Exit; end;

FromArea := cmbDestinations.Items[cmbDestinations.ItemIndex];
ToArea := cmbLocation.Items[cmbLocation.ItemIndex];

if UpperCase(FromArea) = UpperCase(ToArea) then
begin ShowMessage('Pickup and destination cannot be the same.'); Exit; end;

if cmbPAY.ItemIndex = -1 then
begin ShowMessage('Please select a payment method.'); Exit; end;

TruckKg := 0;
if chbTtruck.IsChecked then
begin
if Trim(edtTruck.Text) = '' then
begin ShowMessage('Please enter the load weight in kg.'); Exit; end;
if not TryStrToFloat(edtTruck.Text, TruckKg) then
begin ShowMessage('Please enter a valid weight in kg.'); Exit; end;
if TruckKg > 10000 then
begin ShowMessage('Load exceeds 10,000 kg limit. Please contact us directly.'); Exit; end;
if TruckKg <= 0 then
begin ShowMessage('Please enter a valid weight greater than 0 kg.'); Exit; end;
end;

if chbPackage.IsChecked and (edtPackage.Text ='') then
begin ShowMessage('Please write the package type.'); Exit; end;

Passengers := 2;
if (not chbTtruck.IsChecked) and (not chbPackage.IsChecked) then
begin
if cmbPassengers.ItemIndex = -1 then
begin ShowMessage('Please select number of passengers.'); Exit; end;
Passengers := cmbPassengers.ItemIndex + 1;
end;

Price := CalculatePrice(FromArea, ToArea, Passengers,
chbTtruck.IsChecked, chbPackage.IsChecked, TruckKg);

FTripPrice := Price;
FTripPriceCalculated := True;
FTripFrom := FromArea;
FTripTo := ToArea;
FTripPayment := cmbPay.Items[cmbPay.ItemIndex];
FTripIsTruck := chbTtruck.IsChecked;
FTripIsDelivery := chbPackage.IsChecked;
FTripTruckKg := edtTruck.Text;
FTripPackageType := edtPackage.text;
if (not chbTtruck.IsChecked) and (not chbPackage.IsChecked) then
FTripPassengers := cmbPassengers.Items[cmbPassengers.ItemIndex]
else if chbPackage.IsChecked then
FTripPassengers := 'Delivery'
else
FTripPassengers := 'Truck';

lblPriceResults.Text := 'R' + FormatFloat('0.00', Price);
end;

procedure TForm1.btnCalculateSTClick(Sender: TObject);
var
Destination : string;
Passengers : Integer;
IsTruck : Boolean;
IsDelivery : Boolean;
TruckKg : Double;
Price : Double;
begin
Destination := Trim(edtToST.Text);

if Destination = '' then
begin
ShowMessage('Please enter your destination.');
Exit;
end;

if Trim(edtFromST.Text) = '' then
begin
ShowMessage('Please enter your pickup location.');
Exit;
end;
 //M A D HALO TECHNOLOGIES
if Trim(edtDateST.Text) = '' then
begin
ShowMessage('Please enter the travel date.');
Exit;
if Trim(edtTimeST.Text) = '' then
begin
ShowMessage('Please enter the travel time.');
Exit;
end;

Passengers := cmbPassengersST.ItemIndex + 1;
IsTruck := chbTruckST.IsChecked;
IsDelivery := chbPackageST.IsChecked;
TruckKg := 0;

if IsTruck then
begin
if not TryStrToFloat(Trim(edtTruckKgST.Text), TruckKg) then
begin
ShowMessage('Please enter valid truck weight in kg.');
Exit;
end;
end;
Price := GetSpecialTripPrice(
Destination, Passengers, IsTruck, IsDelivery, TruckKg
);

FSpecialTripPrice := Price;
FSpecialTripCalculated := True;

lblPriceResultsST.Text := 'ESTIMATED PRICE: R' +
FormatFloat('0.00', Price);

btnProceedST.Visible := True;
end;
end;



procedure TForm1.btnCallContactClick(Sender: TObject);
var
PhoneNumber : string;
begin
 if ActiveDriverKey <> '' then
PhoneNumber := ActiveUserPhone
else
PhoneNumber := ActiveDriverPhone;

if PhoneNumber = '' then
begin
ShowMessage('No phone number available.')
end
else
ShowMessage('Call:' + PhoneNumber)    ;
end;











procedure TForm1.btnCancelBookingClick(Sender: TObject);
begin

if FCurrentRideID = '' then     exit;

if MessageDlg('Are you sure you want to cancel this booking?',
TMsgDlgType.mtConfirmation,
[TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0) = mrYes then
begin
  StopGPS;
  FTripPriceCalculated := false;
  FCurrentRideID := '';
  TabControl1.ActiveTab := TabDestination;
end;


end;

procedure TForm1.btnCANCELRIDEClick(Sender: TObject);
begin
if FCurrentRideID = '' then Exit;

// just confirm and cancel with a fixed message for now
 if MessageDlg('Are you sure you want to cancel this ride?',
TMsgDlgType.mtConfirmation,
[TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0) = mrYes then
 begin
 TThread.CreateAnonymousThread(procedure
 var
 H: TNetHTTPClient;
 ST: TStringStream;
 J: string;
 begin

 J:= Format(
 '{"status": "cancelled", "cancelledBy": "driver", "driverKey": "%s"}',
 [ActiveDriverKey]
 );

 H:= TNetHTTPClient.Create(nil)  ;
 ST:= TStringStream.Create(J, TEncoding.UTF8)    ;
try

H.ContentType := 'application/json';
H.Put(
FIREBASE_URL + '/rides/' + FCurrentRideID + '.json',
ST
);

finally
ST.Free;
H.Free;
end;

TThread.Queue(nil, procedure
begin
FCurrentRideID := '';
FRideAccepted := False;
lblRidePassenger.Text := 'Searching for rides...';
lblRidePrice.Text := '';
lblRideDestination.Text := '';
lblDriverStatus.Text := 'Status: Online';
btnACCEPTRIDE.Visible := True;
btnCANCELRIDE.Visible := True;
btnConfirmRideCode.Visible := False;
edtRideCode.Visible := False;
TimerPollRides.Enabled := True;
FPollingActive := True;
end);
end).Start;
end;
end;







procedure TForm1.btnCancelWaitClick(Sender: TObject);
begin
StopPolling;
if FCurrentRideID <> '' then
begin
FirebasePatch('rides/' + FCurrentRideID, '{"Status":"cancelled"}');
if FAssignedDriverUID <> '' then
FirebasePatch('drivers/' + FAssignedDriverUID, '{"CurrentRideID":""}');
FirebasePatch('users/' + FCurrentUserUID, '{"CurrentRideID":""}');
FCurrentRideID := '';
FAssignedDriverUID := '';
end;
TabControl1.ActiveTab := TabConfirm; // go back
end;

procedure TForm1.btnChatCallDriverClick(Sender: TObject);
begin
TabControl1.ActiveTab:= TabChat;
end;

procedure TForm1.btnChatCallPassengerClick(Sender: TObject);
begin
TabControl1.ActiveTab:= TabChat;
end;

procedure TForm1.btnConditionsClick(Sender: TObject);
begin
if not cbAgreeTerms.IsChecked then exit   ;
TabControl1.ActiveTab:= TabDriverDahboard;
end;

procedure TForm1.btnConfirmBackClick(Sender: TObject);
begin
  StopGPS;
TabControl1.ActiveTab := TabDestination;
end;

procedure TForm1.btnConfirmBookingClick(Sender: TObject);
var
RideUID, JsonData, ShareToken: string;
Chars: string;
I: Integer;
EnteredCode: string;
begin
// Generate ride ID
Chars := 'abcdefghijklmnopqrstuvwxyz0123456789';
RideUID := 'ride_';
Randomize;
for I := 1 to 12 do
RideUID := RideUID + Chars[Random(Length(Chars)) + 1];

// Generate share token
ShareToken := '';
for I := 1 to 16 do
ShareToken := ShareToken + Chars[Random(Length(Chars)) + 1];

FCurrentRideID := RideUID;

// Build JSON with GPS if available
JsonData := '{"rideID":"' + RideUID + '",' +
'"userUID":"' + FCurrentUserUID + '",' +
'"location":"' + FTripFrom + '",' +
'"destination":"' + FTripTo + '",' +
'"payment":"' + FTripPayment + '",' +
'"price":"' + FormatFloat('0.00', FTripPrice) + '",' +
'"type":"' + FTripPassengers + '",' +
'"isTruck":"' + BoolToStr(FTripIsTruck, True) + '",' +
'"isDelivery":"' + BoolToStr(FTripIsDelivery, True) + '",' +
'"packageType":"' + FTripPackageType + '",' +
'"truckKg":"' + FTripTruckKg + '",' +
'"userLat":"' + FormatFloat('0.0000000', FUserLat) + '",' +
'"userLng":"' + FormatFloat('0.0000000', FUserLng) + '",' +
'"gpsReady":"' + BoolToStr(FGPSReady, True) + '",' +
'"shareToken":"' + ShareToken + '",' +
'"status":"pending",' +
'"timestamp":"' + DateTimeToStr(Now) + '"}';

// Save to Firebase in background
TThread.CreateAnonymousThread(
procedure
var
HTTP: THTTPClient;
SS, RS: TStringStream;
URL, LJson, LRideUID: string;
begin
LJson := JsonData;
LRideUID := RideUID;
URL := FIREBASE_URL + '/rides/' + LRideUID +
'.json?auth=' + FIREBASE_KEY;
HTTP := THTTPClient.Create;
SS := TStringStream.Create(LJson, TEncoding.UTF8);
RS := TStringStream.Create('', TEncoding.UTF8);
try
HTTP.ContentType := 'application/json';
HTTP.Put(URL, SS, RS);
except
on E: Exception do { silent };
end;
SS.Free;
RS.Free;
HTTP.Free;    //M A D HALO TECHNOLOGIES
end
).Start;

// Navigate to finding driver
TabControl1.ActiveTab := TabFindingDriver;

if FCurrentRideID = '' then Exit;
if FAssignedDriverUID = '' then Exit;

// Flip ride status to active
FirebasePatch('rides/' + FCurrentRideID, '{"Status":"active"}');

ShowMessage('Ride started! Your driver is on the way.');
end;



procedure TForm1.btnConfirmRideCodeClick(Sender: TObject);
var
EnteredCode : string;
begin
EnteredCode := Trim(edtRideCode.Text);

if EnteredCode = '' then
begin
ShowMessage('Please enter the passenger code.');
Exit;
end;

if EnteredCode <> VerificationCode then
begin
ShowMessage('Incorrect code. Ask the passenger for their 4-digit code.');
Exit;
end;

// Code correct — start the ride
TThread.CreateAnonymousThread(procedure
var
H : TNetHTTPClient;
ST : TStringStream;
J: string;
begin


 J:= Format(
 '{"status": "in_progress",  "driverKey": "%s", "driverName": "%s"}',
 [ActiveDriverKey, ActiveDriverName]
 );



H := TNetHTTPClient.Create(nil);
ST := TStringStream.Create(J, TEncoding.UTF8);
try
H.ContentType := 'application/json';
H.Put(
FIREBASE_URL + '/rides/' + FCurrentRideID + '.json',
ST
);
finally
ST.Free;
H.Free;
end;

TThread.Queue(nil, procedure
begin
lblDriverStatus.Text := 'Status: Ride In Progress';
btnConfirmRideCode.Visible := False;
edtRideCode.Visible := False;
ShowMessage('Ride started! Safe travels.');
end
);
                //MMASECHABA
end).Start;
end;

{procedure TForm1.btnProceedClick(Sender: TObject);
begin
if not FTripPriceCalculated then
begin ShowMessage('Please calculate the price first.'); Exit; end;

if FTripPayment = 'Cash' then
ShowMessage('Please make sure your cash is in full before the trip.')
else if FTripPayment = 'Card' then
ShowMessage('You will be redirected to the payment gateway after confirming.');

lblConfirmFrom.Text := 'FROM: ' + FTripFrom;
lblConfirmTo.Text := 'TO: ' + FTripTo;
lblConfirmPayment.Text := 'PAYMENT: ' + FTripPayment;
lblConfirmPrice.Text := 'PRICE: R' + FormatFloat('0.00', FTripPrice);
if FTripIsTruck then
lblConfirmType.Text := 'TYPE: MoveRides Truck (' + FTripTruckKg + ' kg)'
else if FTripIsDelivery then
lblConfirmType.Text := 'TYPE: Package Delivery (' + FTripPackageType + ')'
else
lblConfirmType.Text := 'TYPE: Standard Ride - ' + FTripPassengers;

TabControl1.ActiveTab := TabConfirm;

end;        }

procedure TForm1.btnDestinationBackClick(Sender: TObject);
begin
TabControl1.ActiveTab := TabChoose;
end;

procedure TForm1.btnDestinationHelpClick(Sender: TObject);
begin
ShowMessage('For destinations outside Limpopo tap SPECIAL TRIP.'
);
end;

procedure TForm1.btnDestinationNextClick(Sender: TObject);
begin
if not FTripPriceCalculated then
begin ShowMessage('Please calculate the price first.'); Exit; end;

if FTripPayment = 'Cash' then
ShowMessage('Please make sure your cash is in full before the trip.')
else if FTripPayment = 'Card' then
ShowMessage('You will be redirected to the payment gateway after confirming.');

TabControl1.ActiveTab := TabConfirm;

// Populate confirm labels
lblConfirmLocation.Text := 'LOCATION: ' + FTripFrom;
lblConfirmDestination.Text := 'DESTINATION: ' + FTripTo;
lblConfirmPayment.Text := 'PAYMENT: ' + FTripPayment;
lblConfirmPrice.Text := 'PRICE: R' + FormatFloat('0.00', FTripPrice);
if FTripIsTruck then
lblConfirmType.Text := 'TYPE: MoveRides Truck (' + FTripTruckKg + ' kg)'
else if FTripIsDelivery then
lblConfirmType.Text := 'TYPE: Package Delivery (' + FTripPackageType + ')'
else
lblConfirmType.Text := 'TYPE: Standard Ride - ' + FTripPassengers;

// Start GPS in background
StartGPS;

if not FTripPriceCalculated then
begin ShowMessage('Please calculate the price first.'); Exit; end;

if FTripPayment = 'Cash' then
ShowMessage('Please make sure your cash is in full before the trip.')
else if FTripPayment = 'Card' then
ShowMessage('You will be redirected to the payment gateway after confirming.');

lblConfirmLocation.Text := 'FROM: ' + FTripFrom;
lblConfirmDestination.Text := 'TO: ' + FTripTo;
lblConfirmPayment.Text := 'PAYMENT: ' + FTripPayment;
lblConfirmPrice.Text := 'PRICE: R' + FormatFloat('0.00', FTripPrice);
if FTripIsTruck then
lblConfirmType.Text := 'TYPE: MoveRides Truck (' + FTripTruckKg + ' kg)'
else if FTripIsDelivery then
lblConfirmType.Text := 'TYPE: Package Delivery (' + FTripPackageType + ')'
else
lblConfirmType.Text := 'TYPE: Standard Ride - ' + FTripPassengers;

TabControl1.ActiveTab := TabConfirm;


end;


procedure TForm1.btnDriverClick(Sender: TObject);

begin
FRegistrationType:= 'driver';
TabControl1.ActiveTab:= TabTerms;
end;



procedure TForm1.btnDriverLogInBackClick(Sender: TObject);
begin
edtDriverPassword.Text:= '';
TabControl1.ActiveTab:= TabChoose;
end;

procedure TForm1.btnDriverLoginSubmitClick(Sender: TObject);
var
EnteredPassword : string;
Response : string;
JSON : TJSONObject;
DriverPair : TJSONPair;
DriverObj : TJSONObject;
StoredPassword : string;
i : Integer;
Found : Boolean;
HTTP : TNetHTTPClient;
HTTPResponse : IHTTPResponse;
begin
EnteredPassword := Trim(edtDriverPassword.Text);

if EnteredPassword = '' then
begin
ShowMessage('Please enter your assigned password.');
Exit;
end;

Found := False;
HTTP := TNetHTTPClient.Create(nil);
try
HTTP.ConnectionTimeout := 10000;
HTTP.ResponseTimeout := 10000;

try
HTTPResponse := HTTP.Get(FIREBASE_URL + '/drivers.json');
Response := HTTPResponse.ContentAsString(TEncoding.UTF8);
except
on E: Exception do
begin
ShowMessage('Connection error: ' + E.Message);
Exit;
end;
end;

if (Response = '') or (Response = 'null') then
begin
ShowMessage('No drivers found in database.');
Exit;
end;

JSON := TJSONObject.ParseJSONValue(Response) as TJSONObject;
if JSON = nil then
begin
ShowMessage('Server error. Please try again.');
Exit;
end;

try
for i := 0 to JSON.Count - 1 do
begin
DriverPair := JSON.Pairs[i];
if not (DriverPair.JsonValue is TJSONObject) then Continue;
DriverObj := DriverPair.JsonValue as TJSONObject;

StoredPassword := DriverObj.GetValue<string>('Password', '');

if StoredPassword = EnteredPassword then
begin
Found := True;
ActiveDriverKey := DriverPair.JsonString.Value;
ActiveDriverName := DriverObj.GetValue<string>('Name', 'Driver');
ActiveDriverPhone := DriverObj.GetValue<string>('Phone', '');
Break;
end;
end;
finally
JSON.Free;
end;

finally
HTTP.Free;
end;

if Found then
begin
edtDriverPassword.Text := '';

// Mark driver online in background
TThread.CreateAnonymousThread(procedure
var
H : TNetHTTPClient;
ST : TStringStream;   //SUMTING BOUT ANGEL
begin
H := TNetHTTPClient.Create(nil);
ST := TStringStream.Create('{"status":"online"}', TEncoding.UTF8);
try
H.ContentType := 'application/json';
H.Put(
FIREBASE_URL + '/drivers/' + ActiveDriverKey +',json',
ST)  ;
finally
ST.Free;
H.Free;
end;
end).Start;

LocationSensorDriver.Active := True;
TabControl1.ActiveTab := TabDriverDahboard;
end
else
begin
ShowMessage('Incorrect password. Please try again.');
edtDriverPassword.Text := '';
edtDriverPassword.SetFocus;
end;
end;









procedure TForm1.btnGenerateClick(Sender: TObject);
begin
if Trim(edtName.Text) = '' then
begin
ShowMessage('Please enter your name first.');
edtName.SetFocus;
Exit;
end;
if Trim(edtSurname.Text) = '' then
begin
ShowMessage('Please enter your surname first.');
edtSurname.SetFocus;
Exit;
end;

Randomize;
FGeneratedPassword := GeneratePassword;
edtGenerated.Text := FGeneratedPassword;
// Show it clearly to user
ShowMessage('Your password is: ' + FGeneratedPassword + #13#10 +
'Please write it down and re-enter it below.');
end;

procedure TForm1.btnGoOfflineClick(Sender: TObject);
begin
TimerPollRides.Enabled := False;
FPollingActive := False;
LocationSensorDriver.Active := False;

TThread.CreateAnonymousThread(procedure
var
H : TNetHTTPClient;
ST : TStringStream;
begin
H := TNetHTTPClient.Create(nil);
ST := TStringStream.Create('{"status":"offline"}', TEncoding.UTF8);
try

H.ConnectionTimeout := 8000;
H.ResponseTimeout:=8000;
H.Put(
FIREBASE_URL + '/drivers/' + ActiveDriverKey + '.json',
ST
);
finally
ST.Free;
H.Free;
end;

TThread.Synchronize(nil, procedure
begin
ActiveDriverKey := '';
ActiveDriverName := '';
FCurrentRideID := '';
TabControl1.ActiveTab := TabChoose;
end);

end).Start;
end;




       //M A D HALO TECHNOLOGIES



procedure TForm1.btnLoginBackClick(Sender: TObject);
begin
TabControl1.ActiveTab := TabChoose;
end;

procedure TForm1.btnLogInClick(Sender: TObject);
begin

TabControl1.ActiveTab := TabLogIn;


end;

procedure TForm1.btnLoginSubmitClick(Sender: TObject);
var
UID, JsonData: string;
Response, Email, Password: string;
begin
// Validate fields
if Trim(edtLoginEmail.Text) = '' then
begin
ShowMessage('Please enter your email.');
Exit;
end;


if Trim(edtLoginPassword.Text) = '' then
begin
ShowMessage('Please enter your password.');
Exit;
end;

Email:= Trim(edtLoginEmail.Text);
Password := Trim(edtLoginPassword.Text);

// Search Firebase for matching user
try
Response := FirebaseGet('users');

if Response.Contains('"email":"' + Email + '"') and
Response.Contains('"password":"' + Password + '"') then
begin
UID:= Email;
ActiveUserEmail:= Email;
ShowMessage('Welcome back!') ;
TabControl1.ActiveTab:= TabDestination;
end
else
ShowMessage('Invalid email or password')    ;
except
on E: Exception do
ShowMessage('Login error' + E.Message)     ;

end;
end;




procedure TForm1.btnNext1Click(Sender: TObject);

var
Age: integer;
UID, JsonData: string;
begin
if Trim(edtName.Text) = '' then
begin ShowMessage('Please enter your name.'); edtName.SetFocus; Exit; end;

if Trim(edtSurname.Text) = '' then
begin ShowMessage('Please enter your surname.'); edtSurname.SetFocus; Exit; end;

if Trim(edtEmail.Text) = '' then
begin ShowMessage('Please enter your email.'); edtEmail.SetFocus; Exit; end;

if not edtEmail.Text.Contains('@') then
begin ShowMessage('Please enter a valid email.'); edtEmail.SetFocus; Exit; end;

if Trim(edtPhone.Text) = '' then
begin ShowMessage('Please enter your phone number.'); edtPhone.SetFocus; Exit; end;

if FGeneratedPassword = '' then
begin ShowMessage('Please generate your password first.'); Exit; end;

if Trim(edtPassword.Text) = '' then
begin ShowMessage('Please re-enter your generated password.'); edtPassword.SetFocus; Exit; end;

if edtPassword.Text <> FGeneratedPassword then
begin
ShowMessage('Password does not match!');
edtPassword.Text := '';
edtPassword.SetFocus;
Exit;
end;

if edtDOB.Date > Date then
begin ShowMessage('Date of birth cannot be in the future.'); Exit; end;

Age := YearsBetween(Date, edtDOB.Date);
if Age < 14 then
begin ShowMessage('You must be at least 14 years old.'); Exit; end;

// All good - generate UID and save
UID := GenerateUID;
FCurrentUserUID := UID;

JsonData := '{"uid":"' + UID + '",' +
'"name":"' + edtName.Text + '",' +
'"surname":"' + edtSurname.Text + '",' +
'"email":"' + edtEmail.Text + '",' +
'"phone":"' + edtPhone.Text + '",' +
'"dob":"' + DateToStr(edtDOB.Date) + '",' +
'"password":"' + FGeneratedPassword + '"}';

// Navigate immediately
TabControl1.ActiveTab := TabDestination;

// Save to Firebase in background
TThread.CreateAnonymousThread(
procedure
var
HTTP: THTTPClient;
SS, RS: TStringStream;
Response: IHTTPResponse;
URL, LJson, LUID: string;
begin
LJson := JsonData;
LUID := UID;
URL := FIREBASE_URL + '/users/' + LUID + '.json?auth=' + FIREBASE_KEY;
HTTP := THTTPClient.Create;
SS := TStringStream.Create(LJson, TEncoding.UTF8);
RS := TStringStream.Create('', TEncoding.UTF8);
try         //MMASECHABA MALATJIE
HTTP.ContentType := 'application/json';
Response := HTTP.Put(URL, SS, RS);
except
on E: Exception do { silent fail };
end;
SS.Free;
RS.Free;
HTTP.Free;
end
).Start;
end;


procedure TForm1.btnNextClick(Sender: TObject);
begin
TabControl1.ActiveTab:=TabChoose;
end;

procedure TForm1.btnProceedSTClick(Sender: TObject);
begin
if not FSpecialTripCalculated then
begin
ShowMessage('Please calculate the price first.');
Exit;
end;

// Store in trip session variables (database_u)
FTripFrom := Trim(edtFromST.Text);
FTripTo := Trim(edtToST.Text);
FTripPayment := cmbPaymentST.Items[cmbPaymentST.ItemIndex];
FTripPrice := FSpecialTripPrice;
FTripIsTruck := chbTruckST.IsChecked;
FTripIsDelivery := chbPackageST.IsChecked;
FTripTruckKg := edtTruckKgST.Text;
FTripPackageType := edtPackageTypeST.Text;

if cmbPassengersST.ItemIndex >= 0 then
FTripPassengers := cmbPassengersST.Items[cmbPassengersST.ItemIndex]
else
FTripPassengers := '1';

// Populate confirm tab
lblConfirmLocation.Text := 'FROM: ' + FTripFrom;
lblConfirmDestination.Text := 'TO: ' + FTripTo;
lblConfirmPayment.Text := 'PAYMENT: ' + FTripPayment;
lblConfirmPrice.Text := 'PRICE: R' + FormatFloat('0.00', FTripPrice);

 // Show trip type
if FTripIsTruck then
lblConfirmType.Text := 'TYPE: MoveRides Truck (' + FTripTruckKg + ' kg)'
else if FTripIsDelivery then
lblConfirmType.Text := 'TYPE: Package Delivery (' + FTripPackageType + ')'
else
lblConfirmType.Text := 'TYPE: Special Trip - ' +
edtDateST.Text + ' at ' + edtTimeST.Text;

// Mark as special trip with date/time
FTripPriceCalculated := True;

TabControl1.ActiveTab := TabConfirm;

SpecialTripDate := Trim(edtDateST.Text);
SpecialTripTime := Trim(edtTimeST.Text);
end;



procedure TForm1.btnSendMessageClick(Sender: TObject);
var
MsgText : string;
SenderRole : string;
TimeStr : string;
Payload : string;
MsgKey : string;
begin
MsgText := Trim(edtChatMessage.Text);

if MsgText = '' then Exit;
if FCurrentRideID = '' then
begin
ShowMessage('No active ride to chat on.');
Exit;
end;

// Determine who is sending
if ActiveDriverKey <> '' then
SenderRole := 'driver'
else
SenderRole := 'user';

TimeStr := FormatDateTime('hh:nn', Now);
MsgKey := 'msg' + IntToStr(DateTimeToUnix(Now));

Payload := Format(
'{"sender":"%s","message":"%s","time":"%s"}',
[SenderRole, MsgText, TimeStr]
);

edtChatMessage.Text := ''; // Clear immediately

TThread.CreateAnonymousThread(procedure
var
H : TNetHTTPClient;
ST : TStringStream;
begin
H := TNetHTTPClient.Create(nil);
ST := TStringStream.Create(Payload, TEncoding.UTF8);
try
H.ContentType := 'application/json';
H.Put(
FIREBASE_URL + '/rides/' + FCurrentRideID + '/chat/' + MsgKey + '.json',
ST
);
finally
ST.Free; H.Free;
end;
end).Start;
end;

procedure TForm1.btnSignUPpClick(Sender: TObject);
begin
FRegistrationType:= 'user';
TabControl1.ActiveTab:= TabTerms;
end;

procedure TForm1.btnSkipRatingClick(Sender: TObject);
begin
FSelectedRating := 0;
FCurrentRideID := '';
ActiveDriverKey := '';
ActiveDriverName := '';
memoRatingComment.Text := '';
TabControl1.ActiveTab := TabChoose;
end;

procedure TForm1.btnSpecialTripsClick(Sender: TObject);
begin
TabControl1.ActiveTab := TabSpecialTrips;
end;

procedure TForm1.btnSubmitRatingClick(Sender: TObject);
var
Comment : string;
Rating : Integer;
RideID : string;
DriverKey : string;
begin
Rating := FSelectedRating;
Comment := Trim(memoRatingComment.Text);
RideID := FCurrentRideID;
DriverKey := ActiveDriverKey;

if Rating = 0 then
begin
ShowMessage('Please select a star rating first.');
Exit;
end;

TThread.CreateAnonymousThread(procedure
var
H : TNetHTTPClient;
ST : TStringStream;
Payload : string;
// For averaging driver rating
RespDriver : string;
JSON : TJSONObject;
OldRating : Double;
OldCount : Integer;
NewAvg : Double;
begin
H := TNetHTTPClient.Create(nil);
try
H.ConnectionTimeout:= 8000;
H.ResponseTimeout:= 8000;

// 1. Save rating to rides/{rideID}
if FRatingForDriver then
Payload := Format(
'{"userRatingForDriver":%d,"userComment":"%s"}',
[Rating, Comment]
)
else
Payload := Format(
'{"driverRatingForUser":%d,"driverComment":"%s"}',
[Rating, Comment]
);
                  //M A D HALO TECHNOLOGIES
ST := TStringStream.Create(Payload, TEncoding.UTF8);
try
H.Put(
FIREBASE_URL + '/rides/' + RideID + '/rating.json',
ST
);
finally
ST.Free;
end;

// 2. Update driver's average rating in Firebase
if FRatingForDriver and (DriverKey <> '') then
begin
// Get current rating data
try
RespDriver := H.Get(
FIREBASE_URL + '/drivers/' + DriverKey + '/ratingData.json'
).ContentAsString(TEncoding.UTF8);
except
RespDriver := 'null';
end;

OldRating := 0;
OldCount := 0;

if (RespDriver <> '') and (RespDriver <> 'null') then
begin
JSON := TJSONObject.ParseJSONValue(RespDriver) as TJSONObject;
if JSON <> nil then
try
OldRating := JSON.GetValue<Double>('totalScore', 0);
OldCount := JSON.GetValue<Integer>('ratingCount', 0);
finally
JSON.Free;
end;
end;

OldRating := OldRating + Rating;
OldCount := OldCount + 1;
NewAvg := OldRating / OldCount;

Payload := Format(
'{"totalScore":%.1f,"ratingCount":%d,"averageRating":%.2f}',
[OldRating, OldCount, NewAvg],
TFormatSettings.Invariant
);

ST := TStringStream.Create(Payload, TEncoding.UTF8);
try
H.Put(
FIREBASE_URL + '/drivers/' + DriverKey + '/ratingData.json',
ST
);
finally
ST.Free;
end;
end;

finally
H.Free;
end;

TThread.Queue(nil, procedure
begin
ShowMessage('Thank you for your rating!');
FCurrentRideID := '';
ActiveDriverKey := '';
ActiveDriverName := '';
FSelectedRating := 0;
memoRatingComment.Text := '';
TabControl1.ActiveTab := TabChoose;
end);

end).Start;
end;


procedure TForm1.cbAgreeTermsChange(Sender: TObject);
begin
btnAgree.Enabled:= cbAgreeTerms.IsChecked;
btnConditions.Enabled:=cbAgreeTerms.IsChecked;
btnAgree.Opacity:= IfThen(cbAgreeTerms.IsChecked, 1.0, 0.45)   ;
btnConditions.Opacity:= IfThen(cbAgreeTerms.IsChecked, 1.0, 0.45)
end;


procedure TForm1.chbPackageChange(Sender: TObject);
begin
edtPackage.Visible := chbPackage.IsChecked;
edtTruck.Visible := chbTtruck.IsChecked;
if chbPackage.IsChecked then
begin
chbTtruck.IsChecked := False;
cmbPassengers.Enabled := False;
cmbPassengers.ItemIndex := -1;
edtTruck.Visible := False;
edtTruck.Visible := False;
end
else
begin
cmbPassengers.Enabled := True;

end;
lblPriceResults.Text := '';
FTripPriceCalculated := False;
end;

procedure TForm1.chbPackageSTChange(Sender: TObject);
begin
edtPackageTypeST.Visible := chbPackageST.IsChecked;
end;

procedure TForm1.chbTruckSTChange(Sender: TObject);
begin
edtTruckKgST.Visible := chbTruckST.IsChecked;
end;

procedure TForm1.chbTtruckChange(Sender: TObject);
begin
edtPackage.Visible := chbTtruck.IsChecked;
edtTruck.Visible := chbTtruck.IsChecked;
if chbTtruck.IsChecked then
begin
chbPackage.IsChecked := False;
cmbPassengers.Enabled := False;
cmbPassengers.ItemIndex := -1;
end       //MRS TECHSETTER
else
begin
cmbPassengers.Enabled := True;
edtPackage.Text := '';
end;
lblPriceResults.Text := '';
FTripPriceCalculated := False
end;

procedure TForm1.edtNameTyping(Sender: TObject);
VAR
I: Integer;
CleanText: string;
begin
CleanText := '';
for I := 1 to Length(edtName.Text)  do
if edtName.Text[I] in ['a' .. 'z', 'A'.. 'Z', ' '] then
CleanText:= CleanText +edtName.Text[I]       ;

//ONLY UPDATE IF SOMETHING WAS REMOVED (AVOIDS CURSOR JUMPING)
if CleanText <> edtName.Text then
edtName.Text := CleanText;



end;

procedure TForm1.edtPhoneExit(Sender: TObject);
var
Phone: string;
begin
 phone := Trim(edtPhone.Text)   ;
 if Phone = '' then  exit;

 if not (
 ((Length(phone) = 10) and (Phone[1] = '0')) or
   ((Length(phone) = 12) and   (Copy(Phone, 1, 3) = '+27'))
   ) then
   begin
     ShowMessage('Invalid SA number.' +#13#10 +
     'Use: 0731234567 or +27734567') ;
     edtPhone.Text:='';
     edtPhone.SetFocus;
   end;
           //M A D HALO TECHNOLOGIES

end;

procedure TForm1.edtPhoneTyping(Sender: TObject);
var
I: Integer;
CleanText: string;
begin
 cleantext:='';

 for I := 1 to  Length(edtPhone.Text)  do
 if edtPhone.Text[I] in ['0'..'9', '+'] then
 CleanText:= CleanText + edtPhone.Text[I];

 if CleanText <> edtPhone.Text then
 edtPhone.Text := CleanText;




         //MMASECHABA MALATJIE
end;

procedure TForm1.edtSurnameTyping(Sender: TObject);
VAR
I: Integer;
CleanText: string;
begin
CleanText := '';
for I := 1 to Length(edtSurname.Text)  do
if edtSurname.Text[I] in ['a' .. 'z', 'A'.. 'Z', ' '] then
CleanText:= CleanText +edtSurname.Text[I]       ;

//ONLY UPDATE IF SOMETHING WAS REMOVED (AVOIDS CURSOR JUMPING)
if CleanText <> edtSurname.Text then
edtSurname.Text := CleanText;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

TabControl1.ActiveTab:= TabWelcome;



FPhase:=0;
FCurrentChar:= 0;
lblmove.Text:='';
btnNext.Visible:= false;
Timer1.Enabled:= False;
Timer1.Interval:= 80;
Timer2.Interval:= 1500; //wait 1.6s before starting;
Timer2.Enabled:=true;

  btnProceedST.Visible := False;
edtTruckKgST.Visible := False;
edtPackageTypeST.Visible := False;
FSpecialTripCalculated := False;
FSpecialTripPrice := 0;


end;





procedure TForm1.Timer1Timer(Sender: TObject);
begin
if FCurrentChar < length(FFullText) then
begin
  Inc(FCurrentChar)  ;
  lblmove.Text := Copy(FFullText, 1, FCurrentChar)     ;
end
else
begin
  //finished typing current text
  Timer1.Enabled:= false;

  if FPhase = 1 then
  begin
    //done typying move rides app, pause then switch
    FPhase:= 2;
    Timer2.Interval:= 2000;//show first text for 2s
    Timer2.Enabled:= true;
  end
  else if FPhase = 3 then
  begin
    btnNext.Visible := true;
  end;


end;

end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
Timer2.Enabled:= false;

case FPhase of
0: begin
  //phase 1: type move rides app
  FPhase:= 1;
  FFullText:= 'Move Rides App';
  FCurrentChar:=0;
  lblmove.Text:='';
 // Timer1.Interval:= 80; //typing speed
  Timer1.Enabled:= true;
end ;
2:begin
  FPhase:=3;
  FFullText:= 'Moving from A to Z';
  FCurrentChar := 0;
  lblmove.Text:= '';
 // timer1.Interval:= 80;
  timer1.Enabled:= true;
end;
end;

    //M A D HALO TECHNOLOGIES
end;

procedure TForm1.TimerPollRidesTimer(Sender: TObject);
begin


// Inside your existing TimerPollRidesTimer — add at the bottom:
if TabControl1.ActiveTab = TabChat then
begin
LoadChatMessages;
Exit; // don't poll for rides while in chat
end;
if not FPollingActive then
Exit;

// Don't poll if already on an accepted ride
if FRideAccepted then
Exit;

TThread.CreateAnonymousThread(procedure
var
HTTP : TNetHTTPClient;
Response : string;
JSON : TJSONObject;
RidePair : TJSONPair;
RideObj : TJSONObject;
RideStatus: string;
RideID : string;
PassName : string;
Dest : string;
Price : Double;
DistKm : Double;
i : Integer;
Found : Boolean;
begin
Found := False;

HTTP := TNetHTTPClient.Create(nil);
try
HTTP.ConnectionTimeout := 8000;
HTTP.ResponseTimeout:= 8000;

try
Response := HTTP.Get(FIREBASE_URL + '/rides.json').ContentAsString(TEncoding.UTF8);
except
Exit;
end;

if (Response = '') or (Response = 'null') then
Exit;

JSON := TJSONObject.ParseJSONValue(Response) as TJSONObject;
if JSON = nil then Exit;

try
for i := 0 to JSON.Count - 1 do
begin
RidePair := JSON.Pairs[i];
if not (RidePair.JsonValue is TJSONObject) then Continue;

RideObj := RidePair.JsonValue as TJSONObject;
RideStatus := RideObj.GetValue<string>('status', '');

// Only show pending rides not yet assigned
if RideStatus <> 'pending' then Continue;

RideID := RidePair.JsonString.Value;
PassName := RideObj.GetValue<string>('userName', 'Unknown');
Dest := RideObj.GetValue<string>('destination', 'Unknown');
Price := RideObj.GetValue<Double>('fare', 0);
DistKm := RideObj.GetValue<Double>('distanceKm', 0);

Found := True;
Break;
end;
finally
JSON.Free;
end;

finally
HTTP.Free;
end;

// Update UI on main thread
TThread.Synchronize(nil, procedure
begin
if Found then
begin
FCurrentRideID := RideID;

lblRidePassenger.Text := PassName;
lblRideDestination.Text := Dest;
lblRidePrice.Text := 'R' + FormatFloat('0.00', Price * 0.73); // 73%

// Show buttons
btnACCEPTRIDE.Visible := True;
btnCANCELRIDE.Visible := True;
btnConfirmRideCode.Visible := False;
edtRideCode.Visible := False;
end
else
begin
if FCurrentRideID = '' then
lblRidePassenger.Text := 'Searching for rides...';
end;
end);

end).Start;
end;





end.
//M A D HALO TECHNOLOGIES
//MRS TECHSETTER
