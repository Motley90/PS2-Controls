local UserControls = { 
  Keyboard = false;
  Remote_Controller = false;
};

local UserInput = {
  Circle = {
    Controller = Controls.read():circle(),
    Keyboard_Equivalent = { D, F3 } },
  Cross = {
    Controller = Controls.read():cross(),
    Keyboard_Equivalent = { A, F1 } },
  Square = {
    Controller = Controls.read():square(),
    Keyboard_Equivalent = { S, F2 } },
  Triangle = {
    Controller = Controls.read():triangle(),
    Keyboard_Equivalent = { F, F4 } }
};

function Button_Name(ID)
  if (ID == 0 ) return "Cross";
  if (ID == 1 ) return "Square";
  if (ID == 2 ) return "Circle";
  if (ID == 3 ) return "Triangle";
end
				
local UserKey = {};
function onUserKeyPressDown()
  if (UserInput.Cross.Controller) UserKey.rawset(Button_Name(0), true);
  if (UserInput.Square.Controller) UserKey.rawset(Button_Name(1), true);
  if (UserInput.Circle.Controller) UserKey.rawset(Button_Name(2), true);
  if (UserInput.Triangle.Controller) UserKey.rawset(Button_Name(3), true);
end

function onUserKeyPressUp()
  if (!UserInput.Cross.Controller) UserKey.rawset(Button_Name(0), false);
  if (!UserInput.Square.Controller) UserKey.rawset(Button_Name(1), false);
  if (!UserInput.Circle.Controller) UserKey.rawset(Button_Name(2), false);
  if (!UserInput.Triangle.Controller) UserKey.rawset(Button_Name(3), false);
end
