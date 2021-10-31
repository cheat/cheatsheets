# To concatenate all pdf files into one:
pdftk *.pdf cat output all.pdf

# To concatenate specific pdf files into one:
pdftk 1.pdf 2.pdf 3.pdf cat output 123.pdf

# To concatenate pages 1 to 5 of first.pdf with page 3 of second.pdf:
pdftk A=fist.pdf B=second.pdf cat A1-5 B3 output new.pdf

# To extract pages 2 to 3 from a file:
pdftk file.pdf cat 2-3 output file_with_page_2_and_3.pdf
