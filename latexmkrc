#!/usr/bin/perl
$pdflatex = 'lualatex %O %S';
$pdf_mode = 1;
# $biber = 'biber --bblencoding=utf8 -u -U';
$bibtex = 'pbibtex %O %B';
$bibtex_use = 2;
$makeindex = 'upmendex %O -o %D %S';
if ($^O eq 'darwin') {
  # -g: Do not bring the application to the foreground.
  $pdf_previewer = 'open -g -a /Applications/Skim.app';
} else {
  $pdf_previewer = 'okular --unique';
}
$clean_ext .= '%R.bbl %R.ltjruby %R.nav %R.snm %R.vrb %R.run.xml';
