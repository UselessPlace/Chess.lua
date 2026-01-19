local Row1 = {" R,", " N,", " B,", "K,"," Q,", " B,", " N,", "R,"}
local Row2 = {" P,"," P,"," P,"," P,"," P,"," P,"," P,"," P,"}



function DrawBoard()
    print(table.concat(Row1, " "))
print(table.concat(Row2, " "))
end