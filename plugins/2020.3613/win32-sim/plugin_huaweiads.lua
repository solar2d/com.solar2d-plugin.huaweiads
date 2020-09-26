local Library = require "CoronaLibrary"

local lib = Library:new{ name='plugin.huaweiads', publisherId='com.solar2d' }

local placeholder = function()
	print( "WARNING: The '" .. lib.name .. "' library is not available on this platform." )
end


lib.init = placeholder
lib.show = placeholder
lib.showBanner = placeholder
lib.InterstitialAd = placeholder

-- Return an instance
return lib
