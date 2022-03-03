<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_redis"></a> [redis](#module\_redis) | ./modules/elasticache |  |
| <a name="module_security_group"></a> [security\_group](#module\_security\_group) | terraform-aws-modules/security-group/aws | ~> 4 |

## Resources

| Name | Type |
|------|------|
| [kubernetes_secret.secret](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/secret) | resource |
| [aws_eks_cluster.eks](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster) | data source |
| [aws_eks_cluster_auth.eks](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster_auth) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auth_token"></a> [auth\_token](#input\_auth\_token) | Password for the master DB user. Note that this may show up in logs, and it will be stored in the state file | `string` | `null` | no |
| <a name="input_create_elasticache_instance"></a> [create\_elasticache\_instance](#input\_create\_elasticache\_instance) | Whether to create a cache instance | `bool` | `true` | no |
| <a name="input_create_elasticache_parameter_group"></a> [create\_elasticache\_parameter\_group](#input\_create\_elasticache\_parameter\_group) | Whether to create a database parameter group | `bool` | `true` | no |
| <a name="input_create_elasticache_subnet_group"></a> [create\_elasticache\_subnet\_group](#input\_create\_elasticache\_subnet\_group) | Whether to create a elasticache subnet group | `bool` | `true` | no |
| <a name="input_create_random_auth_token"></a> [create\_random\_auth\_token](#input\_create\_random\_auth\_token) | Whether to create random password for RDS primary cluster | `bool` | `false` | no |
| <a name="input_elasticache_instance_tags"></a> [elasticache\_instance\_tags](#input\_elasticache\_instance\_tags) | Additional tags for the ElastiCache instance | `map(string)` | `{}` | no |
| <a name="input_elasticache_option_group_tags"></a> [elasticache\_option\_group\_tags](#input\_elasticache\_option\_group\_tags) | Additional tags for the ElastiCache option group | `map(string)` | `{}` | no |
| <a name="input_elasticache_parameter_group_tags"></a> [elasticache\_parameter\_group\_tags](#input\_elasticache\_parameter\_group\_tags) | Additional tags for the  ElastiCache parameter group | `map(string)` | `{}` | no |
| <a name="input_elasticache_subnet_group_description"></a> [elasticache\_subnet\_group\_description](#input\_elasticache\_subnet\_group\_description) | Description of the ElastiCache subnet group to create | `string` | `""` | no |
| <a name="input_elasticache_subnet_group_name"></a> [elasticache\_subnet\_group\_name](#input\_elasticache\_subnet\_group\_name) | Name of ElastiCache subnet group. ElastiCache instance will be created in the VPC associated with the ElastiCache subnet group. If unspecified, will be created in the default VPC | `string` | `null` | no |
| <a name="input_elasticache_subnet_group_tags"></a> [elasticache\_subnet\_group\_tags](#input\_elasticache\_subnet\_group\_tags) | Additional tags for the ElastiCache subnet group | `map(string)` | `{}` | no |
| <a name="input_elasticache_subnet_group_use_name_prefix"></a> [elasticache\_subnet\_group\_use\_name\_prefix](#input\_elasticache\_subnet\_group\_use\_name\_prefix) | Determines whether to use `subnet_group_name` as is or create a unique name beginning with the `subnet_group_name` as the prefix | `bool` | `true` | no |
| <a name="input_engine"></a> [engine](#input\_engine) | he name of the cache engine to be used for the clusters in this replication group. The only valid value is redis | `string` | `"redis"` | no |
| <a name="input_engine_version"></a> [engine\_version](#input\_engine\_version) | The engine version that your ElastiCache Cluster will use. This will differ between the use of 'redis' or 'memcached'. The default is '5.0.6' with redis being the assumed engine. | `string` | `"6.x"` | no |
| <a name="input_family"></a> [family](#input\_family) | The family of the ElastiCache parameter group | `string` | `""` | no |
| <a name="input_ingress_cidr_blocks"></a> [ingress\_cidr\_blocks](#input\_ingress\_cidr\_blocks) | List of IPv4 CIDR ranges to use on all ingress rules | `list(string)` | `[]` | no |
| <a name="input_kubernetes_cluster_name"></a> [kubernetes\_cluster\_name](#input\_kubernetes\_cluster\_name) | Name of the EKS cluster to use (AWS cluster name) | `string` | n/a | yes |
| <a name="input_kubernetes_namespace"></a> [kubernetes\_namespace](#input\_kubernetes\_namespace) | kubernetes namespace where to place resources | `string` | n/a | yes |
| <a name="input_multi_az"></a> [multi\_az](#input\_multi\_az) | Specifies if the ElastiCache cluster is multi-AZ | `bool` | `false` | no |
| <a name="input_node_type"></a> [node\_type](#input\_node\_type) | The instance type of the ElastiCache instance | `string` | n/a | yes |
| <a name="input_number_cache_clusters"></a> [number\_cache\_clusters](#input\_number\_cache\_clusters) | The number of cache clusters (primary and replicas) this replication group will have. If Multi-AZ is enabled, the value of this parameter must be at least 2. | `number` | `"2"` | no |
| <a name="input_parameter_group_description"></a> [parameter\_group\_description](#input\_parameter\_group\_description) | Description of the ElastiCache parameter group to create | `string` | `""` | no |
| <a name="input_parameter_group_name"></a> [parameter\_group\_name](#input\_parameter\_group\_name) | Name of the parameter group to associate with this cache cluster. Again this will differ between the use of 'redis' or 'memcached' and your engine version. The default is 'default.redis6.x'. | `string` | `null` | no |
| <a name="input_parameters"></a> [parameters](#input\_parameters) | A list of ElastiCache parameters (map) to apply | `list(map(string))` | `[]` | no |
| <a name="input_port"></a> [port](#input\_port) | The port on which the ElastiCache accepts connections | `string` | n/a | yes |
| <a name="input_replication_group_description"></a> [replication\_group\_description](#input\_replication\_group\_description) | A user-created description for the replication group. | `string` | n/a | yes |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | A list of VPC subnet IDs | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to all resources | `map(string)` | `{}` | no |
| <a name="input_transit_encryption_enabled"></a> [transit\_encryption\_enabled](#input\_transit\_encryption\_enabled) | Whether to enable encryption in transit. | `bool` | `null` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | ID of  the VPC where to create security groups | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_auth_token"></a> [auth\_token](#output\_auth\_token) | The password used to access the Redis protected server. |
| <a name="output_configuration_endpoint_address"></a> [configuration\_endpoint\_address](#output\_configuration\_endpoint\_address) | The configuration endpoint address to allow host discovery. |
| <a name="output_member_clusters"></a> [member\_clusters](#output\_member\_clusters) | The identifiers of all the nodes that are part of this replication group. |
| <a name="output_primary_endpoint_address"></a> [primary\_endpoint\_address](#output\_primary\_endpoint\_address) | The address of the endpoint for the primary node in the replication group, if the cluster mode is disabled. |
<!-- END_TF_DOCS -->