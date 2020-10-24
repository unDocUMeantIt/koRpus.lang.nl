\name{NEWS}
\title{News for Package 'koRpus.lang.nl'}
\encoding{UTF-8}
\section{Changes in koRpus.lang.nl version 0.1-5 (2020-10-24)}{
  \subsection{changed}{
    \itemize{
      \item removed hard coded abbreviations from global TT.tknz.opts in preset, to
        enable checks for file names by koRpus
      \item version number shortened by dropping a zero
      \item updated README.md
      \item removed methods from list of imported packages
      \item renamed abbreviations and parameter files omitting the "-utf8" suffix
    }
  }
  \subsection{added}{
    \itemize{
      \item support optional arguments for \code{koRpus::set.lang.support()}
      \item LICENSE file
    }
  }
}
\section{Changes in koRpus.lang.nl version 0.01-4 (2017-09-30)}{
  \subsection{changed}{
    \itemize{
      \item adjusted koRpus dependency to >= 0.11-1
      \item package was moved to the l10n repository on github
    }
  }
  \subsection{removed}{
    \itemize{
      \item hyphenation patterns: are now imported via the sylly.pt package
    }
  }
}
\section{Changes in koRpus.lang.nl version 0.01-3 (2016-07-11)}{
  \subsection{changed}{
    \itemize{
      \item renamed preset from "nl-utf8" into plain \code{"nl"}, as UTF-8 is the default in
        both TreeTagger and koRpus
    }
  }
  \subsection{added}{
    \itemize{
      \item README.md file
    }
  }
}
\section{Changes in koRpus.lang.nl version 0.01-2 (2015-11-02)}{
  \subsection{fixed}{
    \itemize{
      \item adjusted koRpus dependency to >= 0.06-3
      \item typo in package description
    }
  }
}
\section{Changes in koRpus.lang.nl version 0.01-1 (2015-09-21)}{
  \subsection{changed}{
    \itemize{
      \item initial public release via reaktanz.de
    }
  }
}
