# koRpus.lang.nl

[![Flattr this git repo](https://api.flattr.com/button/flattr-badge-large.png)](https://flattr.com/submit/auto?user_id=m.eik&url=https://github.com/unDocUMeantIt/koRpus.lang.nl&title=koRpus.lang.nl&language=en_GB&tags=github&category=software)

Adds support for the Dutch language to the koRpus package. Due to some restrictions on
CRAN, the full package sources are only available from the project homepage. To ask for
help, report bugs, suggest feature improvements, or discuss the global development of the
package, please subscribe to the koRpus-dev mailing list:
https://ml06.ispgateway.de/mailman/listinfo/korpus-dev_r.reaktanz.de

More information on koRpus.lang.nl is available on the [project homepage](http://reaktanz.de/?c=hacking&s=koRpus).

## Installation

### Development releases via the project repository

Installation of tha latest stable release is fairly easy, it's available from the project's own repository:

```
install.packages("koRpus.lang.nl", repo="https://reaktanz.de/R")
```

To automatically get updates, consider adding the repository to your R configuration.  You might also
want to subscribe to the package's [RSS feed](https://reaktanz.de/R/pckg/koRpus.lang.nl/RSS.xml) to get notified of new releases.

If you're running a Debian based operating system, you might be interested in the
[precompiled *.deb packages](https://reaktanz.de/R/pckg/koRpus.lang.nl/deb_repo.html).


### Installation via GitHub

To install the package directly from GitHub, you can use `install_github()` from the [devtools](https://github.com/hadley/devtools) package:

```
library(devtools)
install_github("unDocUMeantIt/koRpus.lang.nl") # stable release
install_github("unDocUMeantIt/koRpus.lang.nl", ref="develop") # development release
```
## Contributing

To ask for help, report bugs, suggest feature improvements, or discuss the global
development of the package, please either subscribe to the
[koRpus-dev mailing list](https://ml06.ispgateway.de/mailman/listinfo/korpus-dev_r.reaktanz.de), or
use the issue tracker on GitHub.

### Branches

Please note that all development happens in the `develop` branch. Pull requests against the `master`
branch will be rejected, as it is reserved for the current stable release.

## License

koRpus.lang.nl Copyright (C) 2015-2017 m.eik michalke, released under the
GNU General Public License (GPL) version 3 or (at your option) any later version.

This software is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
or FITNESS FOR A PARTICULAR PURPOSE.

You should have received a copy of the license with the
source package as the file COPYING or LICENSE.
