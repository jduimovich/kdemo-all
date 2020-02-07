STATUS=$(kubectl get experiment  -n $TEKTON_DEMO_NS -o jsonpath='{.items[0].status.phase}')
until [ $STATUS == 'Running' ] || [ $STATUS == 'Completed' ] ; do 
echo Waiting for tekton-dashboard, STATUS = $STATUS 
kubectl get experiment  -n $TEKTON_DEMO_NS
sleep 1
STATUS=$(kubectl get experiment  -n $TEKTON_DEMO_NS -o jsonpath='{.items[0].status.phase}')
done 
kubectl get experiment  -n $TEKTON_DEMO_NS