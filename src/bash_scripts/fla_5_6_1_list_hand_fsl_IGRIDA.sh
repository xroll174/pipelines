sub=($@)

DIR=$( dirname ${BASH_SOURCE})

for ((i=0; i<${#sub[@]};i++))
do
    oarsub -l /nodes=1/core=4,walltime=1:0:0 -p 'mem_node > 10*1024' "$DIR/fla_5_6_1_list_hand_fsl.sh ${sub[i]}"
done
