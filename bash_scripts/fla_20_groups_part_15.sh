sub=(166438  814649  891667  141119  116423  148941  141422  182032  545345  742549  994273  208024  622236  633847  694362  297655  429040  175540  698168  594156  971160  126628  211316  419239  592455  204622  103212  281135  107321  177645  103111  613235  143426  627852  679568  947668  571144)
for ((i=0; i<${#sub[@]};i++))
do
    echo ${sub[i]}
    oarsub -l /nodes=1/core=4,walltime=1:0:0 "octave --eval \"addpath /udd/xarollan/spm12-r7487; addpath /udd/xarollan/src; first_level_analysis_octave(${sub[i]},5,6,1) \""

done
