local cmd = reaper.NamedCommandLookup("_XENAKIOS_PANTRACKSLEFT")

if cmd == 0 then
    reaper.MB(
        "Esta script requer a extensão SWS.\n\nInstale-a em:\nhttps://sws-extension.org/",
        "Atenção",
        0
    )
    return
end
reaper.NamedCommandLookup("XENAKIOS_PANTRACKSLEFT")
reaper.Main_OnCommand(40421, 0)
reaper.Main_OnCommand(40179, 0)
reaper.Main_OnCommand(40062, 0)
reaper.NamedCommandLookup("_XENAKIOS_PANTRACKSRIGHT")
reaper.Main_OnCommand(40421, 0)
reaper.Main_OnCommand(40180, 0)
