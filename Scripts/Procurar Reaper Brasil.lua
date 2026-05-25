-- @description Align Takes
-- @version 3.11
-- @author MPL
-- @about Script for matching takes audio and stretch them using stretch markers
local continue, search = reaper.GetUserInputs("Procurar no canal Reaper Brasil", 1,
                                              "Search:,extrawidth=100", "")

if not continue or search == "" then return end

if reaper.CF_ShellExecute == nil then
    reaper.MB("Por favor instale a extensão SWS em https://sws-extension.org/","Atenção", 0)
    return
end

reaper.CF_ShellExecute("https://www.youtube.com/c/REAPERBrasil/search?query=" ..
                           string.gsub(search, "[^%w]", function(c)
        return string.format("%%%02X", string.byte(c))
    end))
