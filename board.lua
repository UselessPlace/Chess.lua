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


local changeNumbersToLetters = {A=1,B=2,C=3}


local numbers = {"3","4","5","6","7","8"}

function DrawBoardPieces()

    for i=1,8  do
        print(table.concat(WholeBoard[i], " ").." "..i)
        
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
        lastPiece = WholeBoard[PieceX][PieceY]
        lastPieceX = PieceX
        lastPieceY = PieceY
        WholeBoard[PieceX][PieceY] = "#"
        
        
        for i = 1, 8 do

        print(table.concat(WholeBoard[i], " ").. " "..i)
        MovePiece(PieceX,PieceY)
        end
        SelectPiece()
    end
        
    else
        print("not a valid coordinate")
        SelectPiece()
        
        
    end
    
end

end


function MovePiece(PieceX,PieceY)
print("Where do you want to move:"..WholeBoard[PieceX][PieceY])

MovePieceX = io.read("*number")



end