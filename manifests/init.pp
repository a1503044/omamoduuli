class gedit {
   include chocolatey

   Package {
       ensure => "installed",
       provider => "chocolatey",
   }

   package {["gedit","adblockpluschrome", "adblockplus-firefox","git", "discord", "googlechrome", "flashplayerplugin", "firefox", "skype", "7zip", "vlc", "libreoffice", "putty.portable"]:}

	file {"C:/Users/konsta/AppData/Local/Google/Chrome/User Data/Default/Bookmarks":
		ensure => file,
		content => template("gedit/chrome"),

	}
	file {"C:/Users/konsta/AppData/Local/Google/Chrome/User Data/Default/Preferences":
                ensure => file,
                content => template("gedit/chromepref"),
	}

}
