local SeedList = {}

SEEDARRAY = {1470739327, 1470741966}
SEEDINDEX = 1

function SeedList.GetNextSeed()
  if #SEEDARRAY > 0 then
    if SEEDINDEX <= #SEEDARRAY then
      local CUSTOMSEED = SEEDINDEX
      SEEDINDEX = SEEDINDEX + 1
      return SEEDARRAY[CUSTOMSEED]
    else
      SEEDINDEX = 1
      return SeedList.GetNextSeed()
    end
  else
    return nil
  end
end

return SeedList
