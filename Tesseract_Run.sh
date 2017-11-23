for f in *.png
do
    v2=${f::-4}

    for t in ${v2}-*
    do
        v3=${t::-4}
        tesseract $t $v3
    done

    for c in ${v3}-*
    do
        final="${v2}.txt"
        cat $c >> $final
    done

done