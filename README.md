# Twitter Emoji Package for SailfishOS
This package provides the emojis from Twitter Emoji project "Twemoji" for SailishOS.

The package will only install the 72x72 sized and SVG icons.  
Also a customized javascript file for converting UTF emoji characters to HTML images with local path are included.

I have created this package to install the emojis on the device, so my apps using these files don't need to ship them everytime I do an update.

## Installation and RPM creation
Clone the repository to your local machine and do the following:

```bash
cd /path/to/repository
git submodule init
make
```

This will generate a RPM package. Maybe you change the version number of twemoji in the spec file first.

But it would be easyer to take the prebuild package from [OpenRepos](https://openrepos.net/content/blacksheepdev/twemoji)

## Usage inside your project

```qml
import QtQuick 2.0
import Sailfish.Silica 1.0

import /usr/share/harbour-twemoji/twemoji.min.js as Twemoji


LinkedLabel {
    id: bodyLabel
    width: parent.width

    font.pixelSize: Theme.fontSizeSmall
    color: Theme.primaryColor
    textFormat: Text.RichText
    
    text: Twemoji.twemoji.parse("This is an emoji 👍")
}
```

By default the SVG emojis are used. If you want to use the PNG files instead use the following:

```javascript
Twemoji.twemoji.parse("This is an emoji 👍", { ext: ".png", size: "72x72" } )
```

For more options look at the [Twemoji GitHub page](https://github.com/twitter/twemoji).

## Attribution
The emojis are designed by the Twitter Emoji project [Twemoji](https://github.com/twitter/twemoji) 

Copyright 2019 Twitter, Inc and other contributors

Code licensed under the MIT License: http://opensource.org/licenses/MIT

Graphics licensed under CC-BY 4.0: https://creativecommons.org/licenses/by/4.0/


## Donations

If you like my work, you can buy me a beer! 

[![PayPal](https://www.paypalobjects.com/en_US/i/btn/btn_donate_LG.gif) ](https://www.paypal.com/paypalme/nubecula/1)

[![Liberapay](https://liberapay.com/assets/widgets/donate.svg)](https://liberapay.com/black-sheep-dev/donate)
