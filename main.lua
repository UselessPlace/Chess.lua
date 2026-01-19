require("board")

local Play = true


function SelectPiece()

print("select piece by using coordinates:")
print("Input text axis (example e)")
PieceX = io.read("*number")
if PieceX then
print("Input number axis (example 4)")
PieceY = io.read("*number")
     if PieceY then

     GetPiece(PieceX,PieceY)

     end

else

print("bruh. stupid")
Play = true



end

end









while true do
if Play == true then
Play = false 


DrawBoard() --Draws board :D

SelectPiece()
MovePiece()

end



end


