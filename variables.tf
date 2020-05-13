variable "rancher_cluster_name" {
  description = "Name of the Rancher2 Cluster to add create the agents for."
  type        = string
}

variable "k8s_cluster_agent_pod_annotations" {
  description = "Additional annotations to be added to the cluster agent pod."
  type        = map(string)
  default     = {}
}

variable "k8s_cluster_agent_pod_labels" {
  description = "Additional labels to be added to the cluster agent pod."
  type        = map(string)
  default     = {}
}

variable "k8s_cluster_agent_node_selector" {
  description = "Node selector to be applied to the cluster agent pod."
  type        = map(string)
  default     = {}
}

variable "k8s_cluster_agent_tolerations" {
  description = "Tolerations to be applied to the cluster agent pod."
  type = list(object({
    effect   = string
    key      = string
    operator = string
    value    = string
  }))
  default = [
    {
      effect   = "NoSchedule"
      key      = "lifecycle"
      operator = "Equal"
      value    = "Ec2Spot"
    }
  ]
}

variable "k8s_node_agent_pod_annotations" {
  description = "Additional annotations to be added to the node agent pods."
  type        = map(string)
  default     = {}
}

variable "k8s_node_agent_pod_labels" {
  description = "Additional labels to be added to the node agent pods."
  type        = map(string)
  default     = {}
}

variable "k8s_node_agent_node_selector" {
  description = "Node selector to be applied to the cluster agent pods."
  type        = map(string)
  default     = {}
}

variable "k8s_node_agent_tolerations" {
  description = "Tolerations to be applied to the node agent pods."
  type = list(object({
    effect   = string
    key      = string
    operator = string
    value    = string
  }))
  default = [
    {
      effect   = null
      key      = null
      operator = "Exists"
      value    = null
    }
  ]
}
