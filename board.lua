local Row1 = {"R", "N", "B", "K","Q", "B", "N", "R"}
local Row2 = {"P","P","P","P","P","P","P","P"}
local Row3 = {"X","X","X","X","X","X","X","X",}

----save data? meaby i guess so. like kinda

local WholeBoard = { {"R", "N", "B", "K","Q", "B", "N", "R"} ,
                    {"P","P","P","P","P","P","P","P"} }


-----



local numbers = {"3","4","5","6","7","8"}
function DrawBoardPieces()
print(table.concat(Row1, " ").. "  1")
print(table.concat(Row2, " ").. "  2")

    for i=1,4  do
        print(table.concat(Row3, " ").."  "..numbers[i])
        i = i + 1
        
    end
    
print(table.concat(Row2, " ").. "  7")
print(table.concat(Row1, " ").. "  8")

end



function DrawBoard()
    

DrawBoardPieces()
print("")
    print("A B C D E F G H")

SaveBoardPieces()
end


function SaveBoardPieces()



end

function GetPiece(PieceX,PieceY)

    print("Piece selected: "WholeBoard[PieceX][PieceY])
    



end
function MovePiece()

print("lol")


end