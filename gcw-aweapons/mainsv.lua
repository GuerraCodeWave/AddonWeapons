local expectedFolderName = "gcw-aweapons"

function getCurrentFolderName()
    local path = debug.getinfo(1, "S").source:sub(2)
    local directory = path:match("(.*" .. "\\" .. ")")
    return directory:match("([^" .. "\\" .. "]+)$")
end

function checkFolderName()
    local currentFolderName = getCurrentFolderName()

    if currentFolderName ~= expectedFolderName then
        print("Chyba: Jméno složky není '" .. expectedFolderName .. "'.")
        print("Prosím, přejmenujte složku zpět na '" .. expectedFolderName .. "' a restartujte server.")
        return false
    else
        print("Díky, že používáte GCW.")
        return true
    end
end