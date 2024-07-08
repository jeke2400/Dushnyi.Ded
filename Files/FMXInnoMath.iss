// FMXInno Math Class
// Version: v1.0
// Last Edit: 25-July-2023

[Code]

type
  TSingles = array of Single;
  TDoubles = array of Double;
  TExtendeds = array of Extended;
  TIntegers = array of Integer;

{ Trigonometric functions }
{ IN: |X| <= 1  OUT: [0..PI] radians }
function MathArcCos(const X : Extended) : Extended;
  external 'MathArcCos@files:FMXInno.dll stdcall delayload';
function MathArcCos2(const X : Double) : Double; 
  external 'MathArcCos2@files:FMXInno.dll stdcall delayload';
function MathArcCos3(const X : Single) : Single; 
  external 'MathArcCos3@files:FMXInno.dll stdcall delayload';

{ IN: |X| <= 1  OUT: [-PI/2..PI/2] radians }
function MathArcSin(const X : Extended) : Extended; 
  external 'MathArcSin@files:FMXInno.dll stdcall delayload';
function MathArcSin2(const X : Double) : Double; 
  external 'MathArcSin2@files:FMXInno.dll stdcall delayload';
function MathArcSin3(const X : Single) : Single; 
  external 'MathArcSin3@files:FMXInno.dll stdcall delayload';

{ ArcTan2 calculates ArcTan(Y/X), and returns an angle in the correct quadrant.
  IN: |Y| < 2^64, |X| < 2^64, X <> 0   OUT: [-PI..PI] radians }
function MathArcTan2E(const Y, X: Extended): Extended; 
  external 'MathArcTan2E@files:FMXInno.dll stdcall delayload';
function MathArcTan2D(const Y, X: Double): Double; 
  external 'MathArcTan2D@files:FMXInno.dll stdcall delayload';
function MathArcTan2S(const Y, X: Single): Single;
  external 'MathArcTan2S@files:FMXInno.dll stdcall delayload';

{ SinCos is 2x faster than calling Sin and Cos separately for the same angle }
procedure MathSinCos(const Theta: Single; var Sin, Cos: Single); 
  external 'MathSinCos@files:FMXInno.dll stdcall delayload';
procedure MathSinCos2(const Theta: Double; var Sin, Cos: Double); 
  external 'MathSinCos2@files:FMXInno.dll stdcall delayload';
procedure MathSinCos3(const Theta: Extended; var Sin, Cos: Extended); 
  external 'MathSinCos3@files:FMXInno.dll stdcall delayload';
function MathTan(const X: Single): Single; 
  external 'MathTan@files:FMXInno.dll stdcall delayload';
function MathTan2(const X: Double): Double; 
  external 'MathTan2@files:FMXInno.dll stdcall delayload';
function MathTan3(const X: Extended): Extended; 
  external 'MathTan3@files:FMXInno.dll stdcall delayload';
function MathCotan(const X: Single): Single;         { 1 / tan(X), X <> 0 }
  external 'MathCotan@files:FMXInno.dll stdcall delayload';
function MathCotan2(const X: Double): Double; 
  external 'MathCotan2@files:FMXInno.dll stdcall delayload';
function MathCotan3(const X: Extended): Extended; 
  external 'MathCotan3@files:FMXInno.dll stdcall delayload';
function MathSecant(const X: Single): Single;        { 1 / cos(X) }
  external 'MathSecant@files:FMXInno.dll stdcall delayload';
function MathSecant2(const X: Double): Double; 
  external 'MathSecant2@files:FMXInno.dll stdcall delayload';
function MathSecant3(const X: Extended): Extended; 
  external 'MathSecant3@files:FMXInno.dll stdcall delayload';
function MathCosecant(const X: Single): Single;      { 1 / sin(X) }
  external 'MathCosecant@files:FMXInno.dll stdcall delayload';
function MathCosecant2(const X: Double): Double; 
  external 'MathCosecant2@files:FMXInno.dll stdcall delayload';
function MathCosecant3(const X: Extended): Extended; 
  external 'MathCosecant3@files:FMXInno.dll stdcall delayload';

{ Angle unit conversion routines }
function MathRadToDeg(const Radians: Single): Single;        { Degrees := Radians * 180 / PI }
  external 'MathRadToDeg@files:FMXInno.dll stdcall delayload';
function MathRadToDeg2(const Radians: Double): Double; 
  external 'MathRadToDeg2@files:FMXInno.dll stdcall delayload';
function MathRadToDeg3(const Radians: Extended): Extended; 
  external 'MathRadToDeg3@files:FMXInno.dll stdcall delayload';
function MathDegToRad(const Degrees: Single): Single;        { Radians := Degrees * PI / 180}
  external 'MathDegToRad@files:FMXInno.dll stdcall delayload';
function MathDegToRad2(const Degrees: Double): Double; 
  external 'MathDegToRad2@files:FMXInno.dll stdcall delayload';
function MathDegToRad3(const Degrees: Extended): Extended; 
  external 'MathDegToRad3@files:FMXInno.dll stdcall delayload';

{ Logarithmic functions }
function MathLog10S(const X: Single): Single;                { Log base 10 of X }
  external 'MathLog10S@files:FMXInno.dll stdcall delayload';
function MathLog10D(const X: Double): Double; 
  external 'MathLog10D@files:FMXInno.dll stdcall delayload';
function MathLog10E(const X: Extended): Extended; 
  external 'MathLog10E@files:FMXInno.dll stdcall delayload';
function MathLog2S(const X: Single): Single;                 { Log base 2 of X }
  external 'MathLog2S@files:FMXInno.dll stdcall delayload';
function MathLog2D(const X: Double): Double; 
  external 'MathLog2D@files:FMXInno.dll stdcall delayload';
function MathLog2E(const X: Extended): Extended; 
  external 'MathLog2E@files:FMXInno.dll stdcall delayload';
function MathLogNS(const Base, X: Single): Single;           { Log base N of X }
  external 'MathLogNS@files:FMXInno.dll stdcall delayload';
function MathLogND(const Base, X: Double): Double; 
  external 'MathLogND@files:FMXInno.dll stdcall delayload';
function MathLogNE(const Base, X: Extended): Extended; 
  external 'MathLogNE@files:FMXInno.dll stdcall delayload';

{ Power: Raise base to any power.
  For fractional exponents, or |exponents| > MaxInt, base must be > 0. }
function MathPower(const Base, Exponent: Extended): Extended; 
  external 'MathPower@files:FMXInno.dll stdcall delayload';
function MathPower2(const Base, Exponent: Double): Double; 
  external 'MathPower2@files:FMXInno.dll stdcall delayload';
function MathPower3(const Base, Exponent: Single): Single; 
  external 'MathPower3@files:FMXInno.dll stdcall delayload';

{ Sum: Sum of values.  (SUM) }
function MathSum(const Data: TSingles): Single; 
  external 'MathSum@files:FMXInno.dll stdcall delayload';
function MathSum2(const Data: TDoubles): Double; 
  external 'MathSum2@files:FMXInno.dll stdcall delayload';
function MathSum3(const Data: TExtendeds): Extended; 
  external 'MathSum3@files:FMXInno.dll stdcall delayload';
function MathSumInt(const Data: TIntegers): Integer; 
  external 'MathSumInt@files:FMXInno.dll stdcall delayload';

{ MinValue: Returns the smallest signed value in the data array (MIN) }
function MathMinValue(const Data: TSingles): Single; 
  external 'MathMinValue@files:FMXInno.dll stdcall delayload';
function MathMinValue2(const Data: TDoubles): Double; 
  external 'MathMinValue2@files:FMXInno.dll stdcall delayload';
function MathMinValue3(const Data: TExtendeds): Extended; 
  external 'MathMinValue3@files:FMXInno.dll stdcall delayload';
function MathMinIntValue(const Data: TIntegers): Integer; 
  external 'MathMinIntValue@files:FMXInno.dll stdcall delayload';

{ MaxValue: Returns the largest signed value in the data array (MAX) }
function MathMaxValue(const Data: TSingles): Single; 
  external 'MathMaxValue@files:FMXInno.dll stdcall delayload';
function MathMaxValue2(const Data: TDoubles): Double; 
  external 'MathMaxValue2@files:FMXInno.dll stdcall delayload';
function MathMaxValue3(const Data: TExtendeds): Extended; 
  external 'MathMaxValue3@files:FMXInno.dll stdcall delayload';
function MathMaxIntValue(const Data: TIntegers): Integer; 
  external 'MathMaxIntValue@files:FMXInno.dll stdcall delayload';

/// <summary>FMod returns the remainder of ANumerator / ADenominator (like mod in integers) with the same sign as ANumerator.</summary>
function MathFMod(const ANumerator, ADenominator: Single): Single; 
  external 'MathFMod@files:FMXInno.dll stdcall delayload';
function MathFMod2(const ANumerator, ADenominator: Double): Double; 
  external 'MathFMod2@files:FMXInno.dll stdcall delayload';
function MathFMod3(const ANumerator, ADenominator: Extended): Extended; 
  external 'MathFMod3@files:FMXInno.dll stdcall delayload';

{ Various random functions }
function MathRandomRange(const AFrom, ATo: Integer): Integer;
  external 'MathRandomRange@files:FMXInno.dll stdcall delayload';
function MathRandomFrom(const AValues: TIntegers): Integer; 
  external 'MathRandomFrom@files:FMXInno.dll stdcall delayload';
function MathRandomFrom2(const AValues: TSingles): Single; 
  external 'MathRandomFrom2@files:FMXInno.dll stdcall delayload';
function MathRandomFrom3(const AValues: TDoubles): Double; 
  external 'MathRandomFrom3@files:FMXInno.dll stdcall delayload';
function MathRandomFrom4(const AValues: TExtendeds): Extended; 
  external 'MathRandomFrom4@files:FMXInno.dll stdcall delayload';

{ Range testing functions }
function MathInRange(const AValue, AMin, AMax: Integer): Boolean; 
  external 'MathInRange@files:FMXInno.dll stdcall delayload';
function MathInRange2(const AValue, AMin, AMax: Single): Boolean; 
  external 'MathInRange2@files:FMXInno.dll stdcall delayload';
function MathInRange3(const AValue, AMin, AMax: Double): Boolean; 
  external 'MathInRange3@files:FMXInno.dll stdcall delayload';
function MathInRange4(const AValue, AMin, AMax: Extended): Boolean; 
  external 'MathInRange4@files:FMXInno.dll stdcall delayload';

{ Range truncation functions }
function MathEnsureRange(const AValue, AMin, AMax: Integer): Integer; 
  external 'MathEnsureRange@files:FMXInno.dll stdcall delayload';
function MathEnsureRange2(const AValue, AMin, AMax: Single): Single; 
  external 'MathEnsureRange2@files:FMXInno.dll stdcall delayload';
function MathEnsureRange3(const AValue, AMin, AMax: Double): Double; 
  external 'MathEnsureRange3@files:FMXInno.dll stdcall delayload';
function MathEnsureRange4(const AValue, AMin, AMax: Extended): Extended; 
  external 'MathEnsureRange4@files:FMXInno.dll stdcall delayload';

{ 16 bit unsigned integer division and remainder in one operation }
procedure MathDivMod(Dividend: Cardinal; Divisor: Word; var ResultValue, Remainder: Word);
  external 'MathDivMod@files:FMXInno.dll stdcall delayload';

{ Min }
function MathMin(const A, B: Integer): Integer; 
  external 'MathMin@files:FMXInno.dll stdcall delayload';
function MathMin2(const A, B: Single): Single; 
  external 'MathMin2@files:FMXInno.dll stdcall delayload';
function MathMin3(const A, B: Double): Double; 
  external 'MathMin3@files:FMXInno.dll stdcall delayload';
function MathMin4(const A, B: Extended): Extended; 
  external 'MathMin4@files:FMXInno.dll stdcall delayload';

{ Max }
function MathMax(const A, B: Integer): Integer; 
  external 'MathMax@files:FMXInno.dll stdcall delayload';
function MathMax2(const A, B: Single): Single; 
  external 'MathMax2@files:FMXInno.dll stdcall delayload';
function MathMax3(const A, B: Double): Double; 
  external 'MathMax3@files:FMXInno.dll stdcall delayload';
function MathMax4(const A, B: Extended): Extended; 
  external 'MathMax4@files:FMXInno.dll stdcall delayload';





