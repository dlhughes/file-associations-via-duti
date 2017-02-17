# file-associations-via-duti

Because duit is awesome but it was a pain to figure out the first time.

edit file associations with http://duti.org/duti.1.html and casper. Install via homebrew for sierra fixes. or just read this https://www.jamf.com/jamf-nation/discussions/5182/compiled-version-of-duti

Download the source for duti from the above webpage. Install this package on systems you wish to control default application file associations. These will be controlled on a user level basis.

File runs with command "duti -s -BundleID -UIT -Role" ie duti -s com.apple.Preview public.jpeg All. BundleID is found in the /Applications/App\ Name/Contents/info.plist and the CFBundleIdentifier. UIT UniformTypeIdentifier (Media Type). The UIT's an applications can open are also listed in the info.plist. This space can also be used to set a URL Scheme like ftp to assign all urlschemes to open in say com.apple.safari The final variable is the Role. Role in the provided script is set to ALL. This can also be run as view,editor and shell. If your are assigning a URL Scheme the role is not assigned.

When running via casper select the "set file associations.sh" and set to deploy on login. Parameter 4 sets the BundleID Parameter 5 sets the UIT. In this script sudo -u is run with Parameter 3 so the association is set to the currently loggin in user.

It's been a long time since i looked at this script, may be a good plan to change form par3 to using lastUserName from defaults...
