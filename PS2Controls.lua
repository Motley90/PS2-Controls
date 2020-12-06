local UserControls = { 
 { "Keyboard", false },
 { "Controller", false }
};

local UserInput = {
  Circle = {
    Controller = pad:circle(),
    Keyboard_Equizulant = { D, F3 } },
  Cross = {
    Controller = pad:cross(),
    Keyboard_Equizulant = { A, F1 } },
  Square = {
    Controller = pad:square(),
    Keyboard_Equizulant = { S, F2 } },
  Triangle = {
    Controller = pad:triangle(),
    Keyboard_Equizulant = { F, F4 } }
};

function Buttons(Slot) 
  if (Slot == 0) 
    UserInput.Circle.Controller
    UserInput.Circle.Keyboard_Equizulant
  end
  
  if (Slot == 1) 
    UserInput.Cross.Controller
    UserInput.Cross.Keyboard_Equizulant
  end  
	 
  if (Slot == 2) 
    UserInput.Square.Controller
    UserInput.Square.Keyboard_Equizulant
  end  	
  
  if (Slot == 3) 
    UserInput.Triangle.Controller
    UserInput.Triangle.Keyboard_Equizulant
  end  
end
