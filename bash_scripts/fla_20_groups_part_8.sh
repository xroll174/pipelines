sub=(189349  159845  311320  161832  111514  965367  148335  837964  299760  800941  172534  611938  163129  173536  816653  163331  117930  578057  220721  188145  889579  468050  559053  160931  349244  350330  153429  774663  119833  559457  133928  114823  152427  114116  103515  192641  137027  143224  521331  686969  329844  173233  151930  599065  178849  164030  959574  569965  128127  163432)
for ((i=0; i<${#sub[@]};i++))
do
    echo ${sub[i]}
    oarsub -l /nodes=1/core=4,walltime=1:0:0 "octave --eval \"addpath /udd/xarollan/spm12-r7487; addpath /udd/xarollan/src; first_level_analysis_octave(${sub[i]},5,6,1) \""

done
