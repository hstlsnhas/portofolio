unit Unit_PersonalLibrary;

interface

uses
  Windows, StdCtrls, SysUtils, Math;

{  Body Mass Index  }
function BMI_count(mass, height: double): double;
{  Body Metabolic Rate  }
function BMR_Jeor(weight, height, age: double; gender: string): double; //Mifflin-St Jeor Equation
function BMR_Benedict(weight, height, age: double; gender: string): double; //Revised Harris-Benedict Equation
procedure Calorie_Needs(weight, height, age, BMR: double; gender: string; //// DailyCalorieNeeds: Based on Harris Benedict Equation
                        var a,b,c,d,e,f: double);
{  Lean Body Mass  }
function LBM_Boer(weight, height: double; gender: string): double; // Boer Formula
function LBM_James(weight, height: double; gender: string): double; // James Formula
function LBM_Hume(weight, height: double; gender: string): double; //Hume Formula
function LBM_Peters(weight, height: double): double; //Peters Formula
{  Body Fat Percentage  }
function BFP_men(waist, neck, height: double): double; // for men
function BFP_women(waist, hip, neck, height: double): double; // for women
{  Body Type - Waist Hip Ratio }
function WHR(waist, hip: double): double;


implementation

// Body Mass Index
function BMI_count(mass, height: double):double;
begin
  Result := mass/Power(height,2) ;
end;

// BMR: Mifflin-St Joer Equation
function BMR_Jeor(weight, height, age: double; gender:string): double;
begin
  if (gender='Male') then
    {  For Men  }
    Result:= 10*weight + 6.25*height - 5*age + 5
  else
    {  For Women  }
    Result:= 10*weight + 6.25*height - 5*age - 161;
end;

// BMR: Revised Harris Benedict Equation
function BMR_Benedict(weight, height, age: double; gender: string): double;
begin
  if (gender='Male') then
    {  For Men  }
    Result := 13.397*weight + 4.799*height - 5.677*age + 88.362
  else
    {  For Women  }
    Result :=  9.247*weight + 3.098*height - 4.330*age + 447.593;
end;

// DailyCalorieNeeds: Based on Harris Benedict Equation
procedure Calorie_Needs(weight, height, age, BMR: double; gender: string;
                        var a,b,c,d,e,f: double);
begin
  BMR:=BMR_Benedict(weight, height, age, gender);
  if (gender='Male') then begin
    {Sedentary little or no exercise}
    a:=1.2*BMR;
    {Exercise 1-3 times/week}
    b:=1.4*BMR;
    {Exercise 4-5 times/week}
    c:=1.6*BMR;
    {Daily exercise or intense exercise 3-4 times/week}
    d:=1.8*BMR;
    {Intense exercise 6-7 times/week}
    e:=2.1*BMR;
    {Very intense exercise daily, or physical job}
    f:=2.3*BMR;
  end;
  if (gender='Female') then begin
    {Sedentary little or no exercise}
    a:=1.2*BMR;
    {Exercise 1-3 times/week}
    b:=1.4*BMR;
    {Exercise 4-5 times/week}
    c:=1.5*BMR;
    {Daily exercise or intense exercise 3-4 times/week}
    d:=1.7*BMR;
    {Intense exercise 6-7 times/week}
    e:=1.8*BMR;
    {Very intense exercise daily, or physical job}
    f:=2.0*BMR;
  end;
end;

// LMB: Boer Formula
function LBM_Boer(weight, height: double; gender: string): double;
begin
  if (gender='Male') then
    {  For Men  }
    Result := 0.407*weight + 0.267*height - 19.2
  else
    {  For Women  }
    Result := 0.252*weight + 0.473*height - 48.3;
end;

// LBM: James Formula
function LBM_James(weight, height: double; gender: string): double;
begin
  if (gender='Male') then
    {  For Men  }
    Result := 1.1*weight - 128*Power(weight/height,2)
  else
    {  For Women  }
    Result := 1.07*weight - 148*Power(weight/height,2);
end;

// LBM: Hume Formula
function LBM_Hume(weight, height: double; gender: string): double;
begin
  if (gender='Male') then
    {  For Men  }
    Result := 0.32810*weight + 0.33929*height - 29.5336
  else
    {  For Women }
    Result := 0.29569*weight + 0.41813*height - 43.2933;
end;

//  LBM: Peters Formula
function LBM_Peters(weight, height: double): double;
var
  ECV:real;
begin
  ECV:=0.0215*Power(weight,0.6469)*Power(height,0.7236);
  Result := 3.8*ECV;
end;

// BFP
  {  For Men  }
function BFP_men(waist, neck, height: double): double;
begin
  Result := 495/(1.0324 - 0.19077*Log10(waist-neck) + 0.15456*Log10(height)) - 450;
end;
  {  For Women  }
function BFP_women(waist, hip, neck, height: double): double;
begin
  Result := 495/(1.29579 - 0.35004*Log10(waist+hip-neck) + 0.22100*Log10(height)) -450;
end;

// WHR
function WHR(waist, hip: double): double;
begin
  Result := waist/hip;
end;

end.
