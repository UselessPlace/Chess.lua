local Row1 = {"R", "N", "B", "K","Q", "B", "N", "R"}
local Row2 = {"P","P","P","P","P","P","P","P"}
local Row3 = {"X","X","X","X","X","X","X","X",}
local lastPiece = nil
local lastPieceX = nil
local lastPieceY = nil
----save data? meaby i guess so. like kinda

local WholeBoard = { {"R", "N", "B", "K","Q", "B", "N", "R"} ,
                    {"P","P","P","P","P","P","P","P"} ,
                    {"X","X","X","X","X","X","X","X"} ,
                    {"X","X","X","X","X","X","X","X"} ,
                    {"X","X","X","X","X","X","X","X"} ,
                    {"X","X","X","X","X","X","X","X"} ,
                    {"P","P","P","P","P","P","P","P"},
                    {"R", "N", "B", "K","Q", "B", "N", "R"}
                }

                    


-----


local changeNumbersToLetters = {a=1,b=2,c=3,d=4,e=5,f=6,g=7,h=8}




function DrawBoardPieces()

    for i=1,8  do
        print(table.concat(WholeBoard[i], " ").." ".. 9-i)
        
        i = i + 1
        
    end
    


end



function DrawBoard()
    

DrawBoardPieces()
print("")
    print("A B C D E F G H (Imagine that these are numbers too from 1-8)")
    print("")

SaveBoardPieces()
end


function SaveBoardPieces()



end

function GetPiece(PieceX,PieceY) --mhm
    if lastPieceX then
        WholeBoard[lastPieceX][lastPieceY] = lastPiece
    end

    if PieceX then
        if PieceY then
            if WholeBoard[PieceX][PieceY] == "X" then
                print("There is no piece on the square :P")
                SelectPiece()

            else

        print("Piece selected: "..WholeBoard[PieceX][PieceY].. " (".. PieceX..","..PieceY.. ")")
        local selectedPiece = WholeBoard[PieceX][PieceY]
        lastPiece = tostring(WholeBoard[PieceX][PieceY])
        lastPieceX = PieceX
        lastPieceY = PieceY
        WholeBoard[PieceX][PieceY] = "#"
        
        
        for i = 1, 8 do
        
        if i < 6 then
        print(string.lower(table.concat(WholeBoard[i], " ").. " ".. 9-i))
        else
         print(table.concat(WholeBoard[i], " ").." ".. 9-i)
        end
        

        
        end
       MovePiece(PieceX,PieceY,selectedPiece)
    end
        
    else
        print("not a valid coordinate")
        SelectPiece()
        
        
    end
    
end

end


local function nextTurn()
    
end






function MovePiece(PieceX,PieceY,selectedPiece)
local tempWholeBoard = WholeBoard
print("Where do you want to move:"..selectedPiece)
print("(in the X axis)")
MovePieceX = io.read("*number")

if MovePieceX then
print("in the Y axis?")
MovePieceY = 9 - io.read("*number")
print(PieceX.." "..PieceY.." "..MovePieceX.." "..MovePieceY)
if MovePieceY then
    if WholeBoard[MovePieceY][MovePieceX] == "X" then
WholeBoard[PieceY][PieceX] = "X"
 
WholeBoard[MovePieceY][MovePieceX] = selectedPiece
print("selectedPieceIs:"..selectedPiece)
for i=1,8 do
print(table.concat(WholeBoard[i]," ").." ".. 9-i)

end

SelectPiece()

else

print(WholeBoard[PieceX][PieceY])

for i=1,8 do
    
tempWholeBoard[PieceX][PieceY] = selectedPiece
print(table.concat(tempWholeBoard[i], " ").." ".. 9-i)
end
print("Theres a piece there !!!!")
SelectPiece()

end

nextTurn()


end

end
end








