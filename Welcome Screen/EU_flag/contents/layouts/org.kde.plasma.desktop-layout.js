var plasma = getApiVersion(1)

// Center Krunner on screen - requires relogin
const krunner = ConfigFile('krunnerrc')
krunner.group = 'General'
krunner.writeEntry('FreeFloating', true);

// Change keyboard repeat delay from default 600ms to 250ms
const kbd = ConfigFile('kcminputrc')
kbd.group = 'Keyboard'
kbd.writeEntry('RepeatDelay', 250);

// Create Top Panel
const panel = new Panel
panel.location = "top"
panel.alignment = "left"
panel.height = Math.round(gridUnit * 1.5);

// The order in which the below Applets are listed will be reflected from Left to Right in the Top Panel.

// The Kickoff launcher
var launcher = panel.addWidget("org.kde.plasma.kickoff")
launcher.currentConfigGroup = ["General"]
launcher.writeConfig("icon", "distributor-logo-garuda")
launcher.writeConfig("lengthFirstMargin", 7)
launcher.currentConfigGroup = ["Shortcuts"]
launcher.writeConfig("global", "Alt+F1")

// Window buttons
var buttons = panel.addWidget("org.kde.windowbuttons")
buttons.currentConfigGroup = ["General"]
buttons.writeConfig("buttonSizePercentage", 42)
buttons.writeConfig("containmentType", "Plasma")
buttons.writeConfig("inactiveStateEnabled", true)
buttons.writeConfig("lengthFirstMargin", 10)
buttons.writeConfig("lengthLastMargin", 4)
buttons.writeConfig("lengthMarginsLock", false)
buttons.writeConfig("spacing", 6)
buttons.writeConfig("useDecorationMetrics", false)
buttons.writeConfig("visibility", 2)

// Window Title
var title = panel.addWidget("org.kde.windowtitle")
title.currentConfigGroup = ["General"]
title.writeConfig("filterActivityInfo", false)
title.writeConfig("lengthFirstMargin", 7)
title.writeConfig("lengthMarginsLock", false)
title.writeConfig("placeHolder", "Dr460nized KDE 🔥")
title.writeConfig("showIcon", false)
title.writeConfig("filterByScreen", true)

// Window AppMenu
var appmenu = panel.addWidget("org.kde.windowappmenu")
appmenu.currentConfigGroup = ["General"]
appmenu.writeConfig("fillWidth", true)
appmenu.writeConfig("toggleMaximizedOnDoubleClick", true)
appmenu.writeConfig("filterByScreen", true)
appmenu.writeConfig("spacing", 4)

// Add Left Expandable Spacer
var spacer = panel.addWidget("org.kde.plasma.panelspacer")

// Better Inline Clock
var inlineclock = panel.addWidget("org.kde.plasma.betterinlineclock")
inlineclock.currentConfigGroup = ["Appearance"]
inlineclock.writeConfig("boldText", true)
inlineclock.writeConfig("enabledCalendarPlugins", "/usr/lib/qt/plugins/plasmacalendarplugins/alternatecalendar.so,/usr/lib/qt/plugins/plasmacalendarplugins/astronomicalevents.so,/usr/lib/qt/plugins/plasmacalendarplugins/holidaysevents.so")
inlineclock.writeConfig("fontFamily", "Noto Sans")
inlineclock.writeConfig("showSeconds", false)
inlineclock.writeConfig("showWeekNumbers", true)
inlineclock.writeConfig("use24hFormat", 2)

// Add Right Expandable Spacer
var spacer = panel.addWidget("org.kde.plasma.panelspacer")

// System Tray
panel.addWidget("org.kde.plasma.systemtray")

// User Switcher
var switcher = panel.addWidget("org.kde.plasma.userswitcher")
switcher.currentConfigGroup = ["General"]
switcher.writeConfig("showFace", true)
switcher.writeConfig("showName", false)
switcher.writeConfig("showTechnicalInfo", true)

// Create bottom panel (Dock)
const dock = new Panel

// Basic Dock Geometry
dock.alignment = "center"
dock.height = Math.round(gridUnit * 2.8);
dock.hiding = "windowscover"
dock.location = "bottom"
dock.maximumLenth = 1000
dock.minimumLength = 250

// Icons-Only Task Manager
var tasks = dock.addWidget("org.kde.plasma.icontasks")
tasks.currentConfigGroup = ["General"]
tasks.writeConfig("fill", false)
tasks.writeConfig("iconSpacing", 2)
tasks.writeConfig("launchers", "applications:garuda-welcome.desktop,applications:org.kde.konsole.desktop,preferred://browser,preferred://filemanager,applications:org.kde.plasma-systemmonitor.desktop,applications:snapper-tools.desktop,applications:systemsettings.desktop,applications:octopi.desktop")
tasks.writeConfig("maxStripes", 1)
tasks.writeConfig("showOnlyCurrentDesktop", false)
tasks.writeConfig("showOnlyCurrentScreen", false)

// Apply Wallpaper Active Blur plugin to all Desktops of the current Activity
var allDesktops = desktops();
for (i=0;i<allDesktops.length;i++){
  d = allDesktops[i];
  d.wallpaperPlugin = "a2n.blur";
  d.currentConfigGroup = Array("Wallpaper", "a2n.blur", "General");
}
