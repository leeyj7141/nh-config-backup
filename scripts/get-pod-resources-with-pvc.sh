#!/bin/bash 


(
  echo -e "POD_NAME\tCONTAINER_NAME\tLIMITS_CPU\tLIMITS_EPHEMERAL_STORAGE\tLIMITS_MEMORY\tREQUESTS_CPU\tREQUESTS_EPHEMERAL_STORAGE\tREQUESTS_MEMORY\tPVC"
  kubectl get pods -n $1 -o=json | jq -r '
  .items[] | 
  {
    pod_name: .metadata.name,
    containers: .spec.containers[] | 
    {
      container_name: .name,
      limits: .resources.limits, 
      requests: .resources.requests,
      pvc: (if .spec.volumes then (.spec.volumes | map(select(.persistentVolumeClaim != null)) | .[0].persistentVolumeClaim.claimName // "N/A") else "N/A" end)
    }
  } | 
  [
    .pod_name, 
    .containers.container_name,
    (.containers.limits.cpu // "N/A"), 
    (.containers.limits["ephemeral-storage"] // "N/A"), 
    (.containers.limits.memory // "N/A"), 
    (.containers.requests.cpu // "N/A"), 
    (.containers.requests["ephemeral-storage"] // "N/A"), 
    (.containers.requests.memory // "N/A"),
    .containers.pvc
  ] | 
  @tsv'
) | column -t


#(
#  echo -e "NAME\tLIMITS_CPU\tLIMITS_EPHEMERAL_STORAGE\tLIMITS_MEMORY\tREQUESTS_CPU\tREQUESTS_EPHEMERAL_STORAGE\tREQUESTS_MEMORY\tPVC"
#  kubectl get pods -n $1 -o=json | jq -r '
#  .items[] | 
#  {
#    name: .metadata.name, 
#    limits: .spec.containers[].resources.limits, 
#    requests: .spec.containers[].resources.requests,
#    pvc: (if .spec.volumes then (.spec.volumes | map(select(.persistentVolumeClaim != null)) | .[0].persistentVolumeClaim.claimName // "N/A") else "N/A" end)
#  } | 
#  [
#    .name, 
#    (.limits.cpu // "N/A"), 
#    (.limits["ephemeral-storage"] // "N/A"), 
#    (.limits.memory // "N/A"), 
#    (.requests.cpu // "N/A"), 
#    (.requests["ephemeral-storage"] // "N/A"), 
#    (.requests.memory // "N/A"),
#    .pvc
#  ] | 
#  @tsv'
#) | column -t
#
