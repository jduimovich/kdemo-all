echo ITER8 Shell Param $1
TEMPLATE=$1
ID=$2
STABLE=$3
CANDIDATE=$4
yq write --inplace $TEMPLATE metadata.name $ID
yq write --inplace $TEMPLATE  spec.targetService.baseline $STABLE
yq write --inplace $TEMPLATE  spec.targetService.candidate $CANDIDATE
cat $TEMPLATE