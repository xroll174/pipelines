sub=(761957  530635  188549  173132  112516  289555  970764  567052  151728  175237  118932  127933  996782  115724  146533  195950  663755  131217  118730  529549  392447  958976  207123  106319  100307  804646  212823  120010  170934  432332  138130  348545  310621  251833  154229  217126  107422  558960  579867  351938  285446  445543  901442  194746  562446  385046  108525  196851  187345  134728)
for ((i=0; i<${#sub[@]};i++))
do
    echo ${sub[i]}
    oarsub -l /nodes=1/core=4,walltime=1:0:0 "octave --eval \"addpath /udd/xarollan/spm12-r7487; addpath /udd/xarollan/src; first_level_analysis_octave(${sub[i]},5,6,1) \""

done
