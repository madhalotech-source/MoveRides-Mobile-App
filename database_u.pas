unit database_u;
//M A D HALO TECHNOLOGIES
interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs;

type
  TForm2 = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

  //trip session
  TripDistance : Double = 0;
  TripFare : Double = 0;
  TripDestination :  string ='';
  TripOriginLat : Double = 0;
  TripOriginLng : Double = 0;
  TripDestLat : Double = 0;
  TripDestLng : Double = 0;
  VerificationCode: string = '';
  WaitingCharges: Double = 0;

  //active rider
  ActiveUserKey: string ='';
  ActiveUserName: string = '';
  ActiveUserPhone: string= '';
  ActiveUserEmail: string ='';

  //active driver
  ActiveDriverKey: string = '';
  ActiveDriverName: string ='';
  ActiveDriverPhone: string ='';

  SpecialTripDate : string = '';
SpecialTripTime : string = '';

implementation

{$R *.fmx}

end.
//MMASECHABA MALATJIE
//MRS TECHSETTER
//M A D HALO TECHNOLOGIES
