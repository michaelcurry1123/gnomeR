% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/oncokb.R
\name{oncokb}
\alias{oncokb}
\title{OncoKB annotate}
\usage{
oncokb(
  maf = NULL,
  fusion = NULL,
  cna = NULL,
  token = Sys.getenv("ONCOKB_TOKEN"),
  clin.file = NULL
)
}
\arguments{
\item{maf}{A maf file to be annotated}

\item{fusion}{A fusion file to be annotated}

\item{cna}{A CNA file to be annotated}

\item{token}{Required token to access OncoKB API, see https://www.oncokb.org/ for details.}

\item{clin.file}{Optional dataframe containing the cancer types of the samples to be annotated.}
}
\value{
OncoKB annotated files
}
\description{
Enables oncokb annotation of MAF, fusions and CNA files. This is performed using the OncoKB annotator found at https://github.com/oncokb/oncokb-annotator.
See details there for file formats.
}
\examples{
\dontrun{
library(gnomeR)
test <- oncokb(maf = mut[1:100,], token = 'YOUR TOKEN')
test$maf_oncokb$oncogenic
}
}
