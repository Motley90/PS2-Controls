local UserControls = { 
  Keyboard = false;
  Controller = false;
};

local UserInput = {
  Circle = {
    Controller = pad:circle(),
    Keyboard_Equivalent = { D, F3 } },
  Cross = {
    Controller = pad:cross(),
    Keyboard_Equivalent = { A, F1 } },
  Square = {
    Controller = pad:square(),
    Keyboard_Equivalent = { S, F2 } },
  Triangle = {
    Controller = pad:triangle(),
    Keyboard_Equivalent = { F, F4 } }
};

function Button_Name(ID)
  if (ID == 0 ) return "Cross";
  if (ID == 1 ) return "Square";
  if (ID == 2 ) return "Circle";
  if (ID == 3 ) return "Triangle";
end
			
function Button_ID(Slot) 
  if (Slot == 0) 
    UserInput.Circle.Controller
    UserInput.Circle.Keyboard_Equivalent
  end
  
  if (Slot == 1) 
    UserInput.Cross.Controller
    UserInput.Cross.Keyboard_Equivalent
  end  
	 
  if (Slot == 2) 
    UserInput.Square.Controller
    UserInput.Square.Keyboard_Equivalent
  end  	
  
  if (Slot == 3) 
    UserInput.Triangle.Controller
    UserInput.Triangle.Keyboard_Equivalent
  end  
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
