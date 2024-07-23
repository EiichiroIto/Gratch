constants
aboutAppString

	^ self appName , ' v' , self appVersion , '
Copyright © 2019-2022 Eiichiro Ito (ghc02331@nifty.com)
All rights reserved.

Based on Scratch from the MIT Media Lab, v' , self basedVersion , '
Copyright © 2009 Massachusetts Institute of Technology.
All rights reserved.

Running ' , SmalltalkImage current version , ' on '
	  , OSEnvironment current platform version , '
'