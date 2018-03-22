# Copyright 2010-2018 Meik Michalke <meik.michalke@hhu.de>
#
# This file is part of the R package koRpus.lang.nl.
#
# koRpus.lang.nl is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# koRpus.lang.nl is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with koRpus.lang.nl.  If not, see <http://www.gnu.org/licenses/>.


# this script is providing additional support for language "nl".
# adjustments kindly provided by Christophe Bechet

#' Language support for Dutch
#' 
#' This function adds support for Dutch to the koRpus package. You should not
#' need to call it manually, as that is done automatically when this package is
#' being loaded.
#' 
#' In particular, this function adds the following:
#' \itemize{
#'  \item \code{lang}: The additional language "nl" to be used with koRpus
#'  \item \code{treetag}: The additional preset "nl", implemented according to the respective
#'    TreeTagger[1] script
#'  \item \code{POS tags}: An additional set of tags, implemented using the documentation for the corresponding
#'    TreeTagger parameter set[2]
#' }
#' Hyphenation patterns are provided by means of the \code{\link[sylly.nl:hyph.support.nl]{sylly.nl}} package.
#'
#' @param ... Optional arguments for \code{\link[koRpus:set.lang.support]{set.lang.support}}.
#' @references
#' [1] \url{http://www.cis.uni-muenchen.de/~schmid/tools/TreeTagger/}
#'
#' [2] \url{http://www.cis.uni-muenchen.de/~schmid/tools/TreeTagger/data/dutch-tagset.txt}
#' @export
#' @importFrom koRpus set.lang.support
#' @examples
#' lang.support.nl()

lang.support.nl <- function(...) {

  # here you have to adjust the parameters according to the contents of the TreeTagger
  # scripts for your language (see ?set.lang.support for details)
  #  - there is only UTF-8 scripts
  #  - add both the unix and windows equivalents
  #  - if some setting is missing, just set it to an empty vector (c())
  koRpus::set.lang.support(target="treetag",
    value=list(
      "nl"=list(
        ## preset: "nl"
        # tags UTF-8 encoded text files
        lang      = "nl",
        encoding  = "UTF-8",
        preset    = function(TT.cmd, TT.bin, TT.lib, unix.OS){
          if(isTRUE(unix.OS)){
            # preset for unix systems

            # note: these objects are set here for convenience, the
            # actual important part is the return value below
            TT.abbrev   <- file.path(TT.lib, "dutch-abbreviations")
            return(
              list(
                # you should change these according to the TreeTagger script
                TT.tokenizer        = file.path(TT.cmd, "utf8-tokenize.perl"),
                TT.tagger           = file.path(TT.bin, "tree-tagger"),
                TT.abbrev           = TT.abbrev,
                TT.params           = file.path(TT.lib, "dutch-utf8.par"),

                TT.tknz.opts        = paste("-a", TT.abbrev),
                TT.lookup.command   = c(),
                TT.filter.command   = c()
              )
            )
          } else {
            # preset for windows systems
            TT.abbrev   <- file.path(TT.lib, "dutch-abbreviations")
            return(
              list(
                TT.tokenizer        = file.path(TT.cmd, "utf8-tokenize.perl"),
                TT.tagger           = file.path(TT.bin, "tree-tagger.exe"),
                TT.abbrev           = TT.abbrev,
                TT.params           = file.path(TT.lib, "dutch-utf8.par"),

                TT.tknz.opts        = paste("-a", TT.abbrev),
                TT.lookup.command   = c(),
                TT.filter.command   = c()
              )
            )
          }
        }
      )
    ),
    ...
  )


  # finally, add the POS tagset information (see ?set.lang.support for details)
  # the list is split into three parts, to be able to distinct between
  # words (including numbers etc.), normal punctuation and sentence ending punctuation.
  # this is mainly used for filtering purposes and statistics.
  #
  # note that each tag must be defined by three values:
  #   - the original TreeTagger abbreviation
  #   - a global "word class" definition like "noun", "verb" etc.
  #   - a human readable explaination of the abbreviation
  koRpus::set.lang.support(target="kRp.POS.tags",
    ## tag and class definitions
    # nl -- Dutch
    # see <http://www.cis.uni-muenchen.de/~schmid/tools/TreeTagger/data/dutch-tagset.txt>, but also 
    # see <https://www.sketchengine.co.uk/xdocumentation/wiki/tagsets/dutch_treetagger>
    value=list(
      "nl"=list(
        tag.class.def.words=matrix(c(
        # tag           class           meaning
          "adj",        "adjective",    "Adjective",
          "adj*kop",    "adjective",    "Truncated adjective",
          "adjabbr",    "adjective",    "Abbreviated adjective",
          "adv",        "adverb",       "Adverb",
          "advabbr",    "adverb" ,      "Abbreviated adverb",
          "conjcoord",  "conjunction",  "Coordinating conjunction",
          "conjsubo",   "conjunction",  "Subordinating conjunction",
          "det__art",   "determiner",   "Article",
          "det__demo",  "determiner",   "Attributively used demonstrative pronoun",
          "det__indef", "determiner",   "Attributively used indefinite pronoun",
          "det__poss",  "determiner",   "Attributively used possessive pronoun",
          "det__excl",  "determiner",   "Exclamative determiner", # (e.g. "zulk", "z'n")
          "det__quest", "pronoun",      "Attributively used question pronoun",
          "det__rel",   "pronoun",      "Attributively used relative pronoun",
          "int",        "interjection", "Interjection",
          "noun*kop",   "noun",         "Truncated noun",
          "nounabbr",   "noun",         "Abbreviated noun",
          "nounpl",     "noun",         "Plural noun",
          "nounprop",   "noun",         "Proper name",
          "nounsg",     "noun",         "Singular noun",
          "num__card",  "number",       "Cardinal number",
          "num__ord",   "number",       "Ordinal number",
          "partte",     "particle",     "particle te",
          "prep",       "preposition",  "Preposition",
          "prepabbr",   "preposition",  "Abbreviated preposition",
          "pronadv",    "adverb",       "Pronominal adverb",
          "prondemo",   "pronoun",      "demonstrative pronoun used substitutively",
          "pronindef",  "pronoun",      "Indefined pronoun",
          "pronpers",   "pronoun",      "Personal pronoun",
          "pronposs",   "pronoun",      "Possessive pronoun",
          "pronquest",  "pronoun",      "Interrogative pronoun",
          "pronrefl",   "pronoun",      "Reflexive pronoun",
          "pronrel",    "pronoun",      "Relative prounoun",
          "verbinf",    "verb",         "Infinitival verb",
          "verbpapa",   "verb",         "Past participle verb",
          "verbpastpl", "verb",         "Plural past tense verb",
          "verbpastsg", "verb",         "Singular past tense verb",
          "verbpresp",  "verb",         "present participle verb",
          "verbprespl", "verb",         "Plural present tense verb",
          "verbpressg", "verb",         "Singular present tense verb"
          ), ncol = 3, byrow = TRUE, dimnames = list(c(), c("tag", "wclass", "desc"))),
        tag.class.def.punct=matrix(c(
        # tag           class           meaning
          "pun",        "punctuation",  "Non-sentential punctuation", # (e.g. comma)
          "punc",       "punctuation",  "punctuation"
          ), ncol = 3, byrow = TRUE, dimnames = list(c(), c("tag", "wclass", "desc"))),
        tag.class.def.sentc=matrix(c(
        # tag           class           meaning
          "$.",       "fullstop",     "Sentence-final punctuation"
          ), ncol = 3, byrow = TRUE, dimnames = list(c(), c("tag", "wclass", "desc")))
      )
    ),
    ...
  )
}

# this internal, non-exported function causes the language support to be
# properly added when the package gets loaded
#' @importFrom sylly.nl hyph.support.nl
.onAttach <- function(...) {
  lang.support.nl()
  sylly.nl::hyph.support.nl()
}
