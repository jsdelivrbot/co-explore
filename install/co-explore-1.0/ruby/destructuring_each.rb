line_width = 80
col_width = line_width / 3

toc = [
    ['Chap1', 'subt1', 'pg1'], 
    ['Chap2', 'subt2', 'pg2'], 
    ['Chap3', 'subt3', 'pg3'],
    ['Chap4', 'subt4', 'pg4']
]

toc.each { |(chap, subt, page)| 
   puts chap.rjust(col_width) + subt.center(col_width) + page.ljust(col_width)
}

