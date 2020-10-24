# koRpus.lang.nl

Adds support for the Dutch language to the [koRpus](https://reaktanz.de/?c=hacking&s=koRpus) package.

More information on 'koRpus.lang.nl' is available on the [project homepage](https://reaktanz.de/?c=hacking&s=koRpus).

## Installation

### Installation from the official l10n repository

The latest stable release can be installed directly from the project's own repository:

```r
install.packages(
  "koRpus.lang.nl",
  repo=c(
    getOption("repos"),
    l10n="https://undocumeantit.github.io/repos/l10n"
  )
)
```

To automatically get updates, consider [adding the repository to your R configuration](https://undocumeantit.github.io/repos/).  You might also
want to subscribe to the package's [RSS feed](https://undocumeantit.github.io/repos/l10n/pckg/koRpus.lang.nl/RSS.xml) to get notified of new releases.

If you're running a Debian based operating system, you might be interested in the
[precompiled *.deb packages](https://undocumeantit.github.io/repos/l10n/pckg/koRpus.lang.nl/deb_repo.html).

### Installation via GitHub

To install the package directly from GitHub, you can use `install_github()` from the [devtools](https://github.com/r-lib/devtools) package:

```r
devtools::install_github("unDocUMeantIt/koRpus.lang.nl") # stable release
devtools::install_github("unDocUMeantIt/koRpus.lang.nl", ref="develop") # development release
```

## Contributing

To ask for help, report bugs, suggest feature improvements, or discuss the global
development of the package, please use the [issue tracker](https://github.com/unDocUMeantIt/koRpus.lang.nl/issues),
or subscribe to the [koRpus-dev mailing list](https://korpusml.reaktanz.de).

### Branches

Please note that all development happens in the `develop` branch. Pull requests against the `master`
branch will be rejected, as it is reserved for the current stable release.

## License

koRpus.lang.nl Copyright (C) 2015-2020 Meik Michalke, released under the
GNU General Public License (GPL) version 3 or (at your option) any later version.

This software is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
or FITNESS FOR A PARTICULAR PURPOSE.

You should have received a copy of the license with the
source package as the file COPYING or LICENSE.
