for dpi in $(seq 10 500)
do 
    for q in $(seq 1 100)
    do 
            convert -verbose -density $dpi PDF_Sample_File.pdf -quality PDF_Converted_$dpi_$q.png
    done
done