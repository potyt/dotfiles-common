# customize your R prompt with username and hostname in this format: user@hostname [R]
options(prompt = paste(paste (Sys.info () [c ("user", "nodename")], collapse = "@"),"[R] "))
options(digits = 4)
options(stringsAsFactors = FALSE)
options(show.signif.stars = FALSE)
# post-mortem debugiging facilities
error = quote(dump.frames("${R_HOME_USER}/testdump", TRUE))
