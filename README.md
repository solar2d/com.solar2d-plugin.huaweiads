Hms Ads Kit integration into Solar2d (Corona) project

## Project Setup

To use the plugin please add following to `build.settings`

```lua
{
    plugins = {
        ["plugin.huaweiads"] = {
            publisherId = "com.solar2d",
        },
    },
}
```

## Short documentation

```lua
local ads = require "plugin.huaweiads"

local function adListener(event)
    print(event.type) -- banner or interstitialAd
    print(event.phase) -- loaded, failed, opened, clicked, leave, closed, impression
    print(event.isError) -- boolean, true if error occurred
    print(event.data) -- error code
end

ads.init(adListener) -- sets listener and inits ad framework
ads.show() -- does nothing, NoOp
ads.showBanner({adId="xx-xxx-xx"}) -- loads and shows banner ad
ads.interstitialAd({adId="xx-xxx-xx"}) -- loads and shows interstitial ad

```

## Origins

Plugin is originally made as a demo for this article and moved to Solar2D Free Plugin directory afterwards.

https://medium.com/huawei-developers/hms-ads-kit-integration-into-solar2d-corona-project-a1b3fcaf8b09

![ss](https://user-images.githubusercontent.com/32878124/93340968-36d3e400-f836-11ea-9586-7a418ee34f59.gif)
