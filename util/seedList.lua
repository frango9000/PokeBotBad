local SeedList = {}

SEEDINDEX = 1

function SeedList.GetNextSeed()
  if #SEEDARRAY > 0 then
    if SEEDINDEX <= #SEEDARRAY then
      local CUSTOMSEED = SEEDINDEX
      SEEDINDEX = SEEDINDEX + 1
      return SEEDARRAY[CUSTOMSEED]
    else
      SEEDINDEX = 2
      return SEEDARRAY[1]
    end
  else
    return nil
  end
end

return SeedList
