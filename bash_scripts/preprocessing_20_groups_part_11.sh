sub=(101309  908860  195647  379657  346137  878776  792867  927359  965771  123824  145834  214019  413934  256540  525541  154936  461743  152831  105620  167743  623137  201414  833148  127731  421226  213421  123420  715647  628248  325129  283543  802844  391748  481951  210112  284646  453441  206727  555348  336841  161630  169949  692964  212318  165638  339847  153025  287248  467351  788876)
for ((i=0; i<${#sub[@]};i++))
do
    echo ${sub[i]}
    oarsub -l /nodes=1/core=4,walltime=1:0:0 "octave --eval \"addpath /udd/xarollan/spm12-r7487; addpath /udd/xarollan/src; preprocessing_octave(${sub[i]},5) \""

done
