#!/bin/bash
echo "Searching for files:"
goofile -d $target -f pdf > REPORT/pdf.csv >> REPORT/report.txt
goofile -d $target -f txt > REPORT/txt.csv >> REPORT/report.txt
goofile -d $target -f php > REPORT/php.csv >> REPORT/report.txt
goofile -d $target -f id > REPORT/id.csv >> REPORT/report.txt

