@echo on
REM Here you must specify the name of the cluster
set "cluster_name=name of the cluster"
REM Here you must specify the id of the subscription
set "subscription_id=id of the subscription"
REM Here you must specify the name of the resource group
set "resource_group_name=name of the resource group"
REM Here you must specify the name of the resource
set "resource_name=name of the resource"

call az login
echo Login into azure...
call az account set --subscription %subscription_id%
call az aks get-credentials --resource-group %resource_group_name% --name %resource_name% --overwrite-existing
call kubelogin convert-kubeconfig -l azurecli
call kubectl get pod -n %cluster_name%
echo Please enter the name of the pod you want to connect to:
set /p podName=
echo Connecting to pod %podName%...
call kubectl exec -n %cluster_name% %podName% -it -- /bin/sh
cmd /k