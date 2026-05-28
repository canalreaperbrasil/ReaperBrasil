-- Executa as três ações sequencialmente
reaper.Main_OnCommand(40044, 0) -- Transport: Play/stop
reaper.Main_OnCommand(40029, 0) -- Edit: Undo
reaper.Main_OnCommand(1013, 0)  -- Transport: Record
