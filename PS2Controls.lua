
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

  if (ID == 1 ) then return "Cross" end
  if (ID == 2 ) then return "Square" end
  if (ID == 3 ) then return "Circle" end
  if (ID == 4 ) then return "Triangle" end
end

function Direction_Slot(ID)
  if (ID == 1 ) then return "Up" end
  if (ID == 2 ) then return "Down" end
  if (ID == 3 ) then return "Left" end
  if (ID == 4 ) then return "Right" end
end
								
local UserKey = {}
function onUserKeyPressDown()
  if (Cross) then UserKey.insert(Button_Slot(1), "Controller", true) end
  if (Square) then UserKey.insert(Button_Slot(2), "Controller",  true) end
  if (Circle) then UserKey.insert(Button_Slot(3), "Controller",  true) end
  if (Triangle) then UserKey.insert(Button_Slot(4), "Controller",  true) end
														
  if (Up) then UserKey.insert(Direction_Slot(1), "Controller",  true) end
  if (Down) then UserKey.insert(Direction_Slot(2), "Controller",  true) end
  if (Left) then UserKey.insert(Direction_Slot(3), "Controller",  true) end
  if (Right) then UserKey.insert(Direction_Slot(4), "Controller",  true) end
end

function onUserKeyPressUp()
  if (Cross == nil) then UserKey.remove(Button_Slot(1), "Controller") end
  if (Square == nil) then UserKey.remove(Button_Slot(2), "Controller") end
  if (Circle == nil) then UserKey.remove(Button_Slot(3), "Controller") end
  if (Triangle == nil) then UserKey.remove(Button_Slot(4), "Controller") end
  
  if (Up == nil) then UserKey.remove(Direction_Slot(1), "Controller") end
  if (Down == nil) then UserKey.remove(Direction_Slot(2), "Controller") end
  if (Left == nil) then UserKey.remove(Direction_Slot(3), "Controller") end
  if (Right == nil) then UserKey.remove(Direction_Slot(4), "Controller") end	
end

local idxslot = 4
local idx = 1
while true do    
  screen.waitVblankStart()
  onUserKeyPressDown()
  onUserKeyPressUp()
  local key = UserKey[Button_Slot(idx)]
   if (key ) 
   then print(key) 
   else print(Button_Slot(idx))
   end
  
  if (idx == idxslot) 
    then idx = 0
  end	
    idx = idx + 1

end
