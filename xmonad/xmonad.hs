import XMonad
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.DynamicLog

main = xmonad =<< statusBar myBar myPP toggleStrutsKey myConfig
 
myBar = "xmobar"
myPP = xmobarPP 
    { ppCurrent = xmobarColor "#429942" "" . wrap "<" ">" 
    }
toggleStrutsKey XConfig { XMonad.modMask = modMask } = (modMask, xK_b)

myConfig = defaultConfig
    { terminal    = myTerminal
    , modMask     = myModMask
    , borderWidth = myBorderWidth
    , layoutHook  = myLayoutHook
    , manageHook  = myManageHook
    }
 
myLayoutHook = avoidStruts $ layoutHook defaultConfig
myManageHook = manageHook defaultConfig <+> manageDocks
myTerminal = "urxvt"
myModMask = mod4Mask
myBorderWidth = 2
