
print("Moi")

require("board")

local Play = true


function SelectPiece()
PieceX = 0
PiexeY = 0
print("Warning! if you miss type a letter ur terminal will blow up")
print("select piece by using coordinates:")
print("Input text axis (example 1)")
if PieceX == 0 then
PieceY =  io.read("*number")

print("Input number axis (example 4)")
PieceX = 9- io.read("*number") 
     print("PieceXandY: "..PieceX.." "..PieceY)

     GetPiece(PieceX,PieceY)
else

end
end









while true do
if Play == true then
Play = false 


DrawBoard() --Draws board :D

SelectPiece()


end



end


