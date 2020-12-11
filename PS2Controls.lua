
GetInput = Controls.read()

Circle = GetInput:circle()
Cross = GetInput:cross()
Square = GetInput:square()
Triangle = GetInput:triangle()
	
Up = GetInput:up()
Down = GetInput:down()
Left = GetInput:left()
Right = GetInput:right()

function Button_Slot(ID)

  if (ID == 0 ) then return "Cross" end
  if (ID == 1 ) then return "Square" end
  if (ID == 2 ) then return "Circle" end
  if (ID == 3 ) then return "Triangle" end
end

function Direction_Slot(ID)
  if (ID == 0 ) then return "Up" end
  if (ID == 1 ) then return "Down" end
  if (ID == 2 ) then return "Left" end
  if (ID == 3 ) then return "Right" end
end
								
local UserKey = {}
function onUserKeyPressDown()
  if (Cross) then UserKey.rawset(Button_Slot(0), "Controller", true) end
  if (Square) then UserKey.rawset(Button_Slot(1), "Controller",  true) end
  if (Circle) then UserKey.rawset(Button_Slot(2), "Controller",  true) end
  if (Triangle) then UserKey.rawset(Button_Slot(3), "Controller",  true) end
														
  if (Up) then UserKey.rawset(Direction_Slot(0), "Controller",  true) end
  if (Down) then UserKey.rawset(Direction_Slot(1), "Controller",  true) end
  if (Left) then UserKey.rawset(Direction_Slot(2), "Controller",  true) end
  if (Right) then UserKey.rawset(Direction_Slot(3), "Controller",  true) end
end

function onUserKeyPressUp()
  if (Cross == nil) then UserKey.rawset(Button_Slot(0), "Controller",  false) end
  if (Square == nil) then UserKey.rawset(Button_Slot(1), "Controller",  false) end
  if (Circle == nil) then UserKey.rawset(Button_Slot(2), "Controller",  false) end
  if (Triangle == nil) then UserKey.rawset(Button_Slot(3), "Controller",  false) end
  
  if (Up == nil) then UserKey.rawset(Direction_Slot(0), "Controller",  false) end
  if (Down == nil) then UserKey.rawset(Direction_Slot(1), "Controller",  false) end
  if (Left == nil) then UserKey.rawset(Direction_Slot(2), "Controller", false) end
  if (Right == nil) then UserKey.rawset(Direction_Slot(3), "Controller",  false) end	
end


while true do
  screen.waitVblankStart()
  onUserKeyPressDown()
  onUserKeyPressUp()
end
