--[[ 
	See if GetInput is a global update, If so add a tick method
	Suffering from proper objects in lua
]]
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
  if (Cross) then UserKey.insert("Controller", true) end
  if (Square) then UserKey.insert("Controller",  true) end
  if (Circle) then UserKey.insert("Controller",  true) end
  if (Triangle) then UserKey.insert("Controller",  true) end
														
  if (Up) then UserKey.insert("Controller",  true) end
  if (Down) then UserKey.insert("Controller",  true) end
  if (Left) then UserKey.insert("Controller",  true) end
  if (Right) then UserKey.insert("Controller",  true) end
end

function onUserKeyPressUp()
  if (Cross == nil) then UserKey.remove("Controller") end
  if (Square == nil) then UserKey.remove("Controller") end
  if (Circle == nil) then UserKey.remove("Controller") end
  if (Triangle == nil) then UserKey.remove("Controller") end
  
  if (Up == nil) then UserKey.remove("Controller") end
  if (Down == nil) then UserKey.remove("Controller") end
  if (Left == nil) then UserKey.remove("Controller") end
  if (Right == nil) then UserKey.remove("Controller") end	
end

--[[
	Remove this ugly shit!
	Do some function checks, add some functions to a table list. 
	Lua object storage is total shit worse than it's garbage collection so I will have to check the manual

	On the function check do a constant pair to the key press. If key is trun the call some func "CanMov, CanPause, FreeController, FreezeController"

	This would be done in seconds if it were Squirrel
]]
	
local idxslot = 4
local idx = 1
while true do    
  screen.waitVblankStart()
  onUserKeyPressDown()
  onUserKeyPressUp()
  local key = UserKey[Button_Slot(idx)]
   if (key ) 
   then print(key) 
end
  
  if (idx == idxslot) 
    then idx = 0
  end	
    idx = idx + 1

end
