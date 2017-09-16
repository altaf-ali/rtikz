# ---- capture_text ----

capture_text <- function(text, filename, width=1, height=1, res=300, pointsize=2, units="in") {
  captured_text <- capture.output(text)

  png(filename, width=width, height=height, res=res, pointsize=pointsize, units=units)
  gplots::textplot(captured_text, mar=c(0,0,0,0))
  invisible(dev.off())
}

