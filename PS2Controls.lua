local UserControls = { 
  Keyboard = false;
  Remote_Controller = false;
};

local UserInput = {
  GetInput = Controls.read()
  Circle = {
    Remote_Controller = GetInput:circle(),
    Keyboard_Equivalent = { D, F3 } },
  Cross = {
    Remote_Controller = GetInput:cross(),
    Keyboard_Equivalent = { A, F1 } },
  Square = {
    Remote_Controller = GetInput:square(),
    Keyboard_Equivalent = { S, F2 } },
  Triangle = {
    Remote_Controller = GetInput:triangle(),
    Keyboard_Equivalent = { F, F4 } }
	
  Up = {
    Remote_Controller = GetInput:up(),
    Keyboard_Equivalent = { Up, F5 } },
  Down = {
    Remote_Controller = GetInput:down(),
    Keyboard_Equivalent = { Down, F6 } },
  Left = {
    Remote_Controller = GetInput:left(),
    Keyboard_Equivalent = { Left, F7 } },
  Right = {
    Remote_Controller = GetInput:right(),
    Keyboard_Equivalent = { Right, F8 } }
};

function Button_Slot(ID)
  if (ID == 0 ) return "Cross";
  if (ID == 1 ) return "Square";
  if (ID == 2 ) return "Circle";
  if (ID == 3 ) return "Triangle";
end

function Direction_Slot(ID)
  if (ID == 0 ) return "Up";
  if (ID == 1 ) return "Down";
  if (ID == 2 ) return "Left";
  if (ID == 3 ) return "Right";
end
								
local UserKey = {};
function onUserKeyPressDown()
  if (UserInput.Cross.Remote_Controller) UserKey.rawset(Button_Slot(0), true);
  if (UserInput.Square.Remote_Controller) UserKey.rawset(Button_Slot(1), true);
  if (UserInput.Circle.Remote_Controller) UserKey.rawset(Button_Slot(2), true);
  if (UserInput.Triangle.Remote_Controller) UserKey.rawset(Button_Slot(3), true);
														
  if (UserInput.Up.Remote_Controller) UserKey.rawset(Direction_Slot(0), true);
  if (UserInput.Down.Remote_Controller) UserKey.rawset(Direction_Slot(1), true);
  if (UserInput.Left.Remote_Controller) UserKey.rawset(Direction_Slot(2), true);
  if (UserInput.Right.Remote_Controller) UserKey.rawset(Direction_Slot(3), true);														
end

function onUserKeyPressUp()
  if (not UserInput.Cross.Remote_Controller) UserKey.rawset(Button_Slot(0), false);
  if (not UserInput.Square.Remote_Controller) UserKey.rawset(Button_Slot(1), false);
  if (not UserInput.Circle.Remote_Controller) UserKey.rawset(Button_Slot(2), false);
  if (not UserInput.Triangle.Remote_Controller) UserKey.rawset(Button_Slot(3), false);
  
  if (not UserInput.Up.Remote_Controller) UserKey.rawset(Direction_Slot(0), false);
  if (not UserInput.Down.Remote_Controller) UserKey.rawset(Direction_Slot(1), false);
  if (not UserInput.Left.Remote_Controller) UserKey.rawset(Direction_Slot(2), false);
  if (not UserInput.Right.Remote_Controller) UserKey.rawset(Direction_Slot(3), false);	
end
