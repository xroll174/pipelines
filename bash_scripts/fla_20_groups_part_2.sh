sub=(115017  113619  894774  303119  130013  133827  161327  567759  549757  147030  139233  728454  169040  178243  453542  701535  645551  737960  203418  221218  158540  984472  173435  149842  212217  769064  304727  168341  172130  172635  849264  448347  705341  194140  102109  118023  389357  355239  201515  133019  211114  749058  615744  165234  579665  894067  201111  992774  214524  978578)
for ((i=0; i<${#sub[@]};i++))
do
    echo ${sub[i]}
    oarsub -l /nodes=1/core=4,walltime=1:0:0 "octave --eval \"addpath /udd/xarollan/spm12-r7487; addpath /udd/xarollan/src; first_level_analysis_octave(${sub[i]},5,6,1) \""

done
