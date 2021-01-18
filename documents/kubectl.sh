pods=$(kubectl get pod -o=custom-columns=NAME:.metadata.name,NAMESPACE:.metadata.namespace,STATUS:.status.phase --all-namespaces)
echo "${pods}"
