proposal<-"satRdays"
proposal.file<-"isc-proposal.Rmd"
author<-"Steph Locke"

# Proposal
rmarkdown::render(proposal.file, output_format="html_document",
                  output_dir="out", quiet=TRUE)
rmarkdown::render(proposal.file, output_format="pdf_document",
                  output_dir="out", quiet=TRUE)

# Additional docs
rmarkdown::render("satRday_organiser.Rmd", output_format="html_document",
                  output_dir="out", quiet=TRUE)
rmarkdown::render("index.Rmd", output_format="html_document",
                  output_dir="out", quiet=TRUE)
rmarkdown::render("ConferenceCodeOfConduct.Rmd", output_format="html_document",
                  output_dir="out", quiet=TRUE)
