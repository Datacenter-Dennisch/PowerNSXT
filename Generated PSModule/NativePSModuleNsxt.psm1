
Function New-Nsxt_ip_prefix_list_logical_router_id {
    Param
    (
        $bridgeendpointprofile_id,
        $bridge_endpoint_profile,
        $Definition,
        $Documentation,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        bridgeendpointprofile_id = $bridgeendpointprofile_id
        bridge_endpoint_profile = $bridge_endpoint_profile
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.logical_routers.routing.ip_prefix_lists
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_ip_prefix_list_logical_router_id {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $id,
        $logical_router_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        id = $id
        logical_router_id = $logical_router_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.logical_routers.routing.ip_prefix_lists
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_ip_prefix_list_logical_router_id {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $logical_router_id,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        logical_router_id = $logical_router_id
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.logical_routers.routing.ip_prefix_lists
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_ip_prefix_list_logical_router_id {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $id,
        $ip_prefix_list,
        $logical_router_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        id = $id
        ip_prefix_list = $ip_prefix_list
        logical_router_id = $logical_router_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.logical_routers.routing.ip_prefix_lists
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_base_switching_profile {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $id,
        $ip_prefix_list,
        $logical_router_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        id = $id
        ip_prefix_list = $ip_prefix_list
        logical_router_id = $logical_router_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.switching_profiles
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_base_switching_profile {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $switching_profile_id,
        $unbind
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        switching_profile_id = $switching_profile_id
        unbind = $unbind
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.switching_profiles
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_base_switching_profile {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $include_system_owned,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by,
        $switching_profile_type
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        include_system_owned = $include_system_owned
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        switching_profile_type = $switching_profile_type
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.switching_profiles
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_base_switching_profile {
    Param
    (
        $base_switching_profile,
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $switching_profile_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        base_switching_profile = $base_switching_profile
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        switching_profile_id = $switching_profile_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.switching_profiles
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_dhcp_profile {
    Param
    (
        $description,
        $display_name,
        $edge_cluster_id,
        $edge_cluster_member_indexes,
        $enable_standby_relocation,
        $id,
        $resource_type,
        $revision,
        $self,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        description = $description
        display_name = $display_name
        edge_cluster_id = $edge_cluster_id
        edge_cluster_member_indexes = $edge_cluster_member_indexes
        enable_standby_relocation = $enable_standby_relocation
        id = $id
        resource_type = $resource_type
        revision = $revision
        self = $self
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.dhcp.server_profiles
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_dhcp_profile {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $profile_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        profile_id = $profile_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.dhcp.server_profiles
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_dhcp_profile {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.dhcp.server_profiles
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_dhcp_profile {
    Param
    (
        $Definition,
        $dhcp_profile,
        $Documentation,
        $Errors,
        $profile_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        dhcp_profile = $dhcp_profile
        Documentation = $Documentation
        Errors = $Errors
        profile_id = $profile_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.dhcp.server_profiles
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_base_service_instance_service_id {
    Param
    (
        $Definition,
        $dhcp_profile,
        $Documentation,
        $Errors,
        $profile_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        dhcp_profile = $dhcp_profile
        Documentation = $Documentation
        Errors = $Errors
        profile_id = $profile_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.services.service_instances
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_base_service_instance_service_id {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $service_id,
        $service_instance_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        service_id = $service_id
        service_instance_id = $service_instance_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.services.service_instances
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_base_service_instance_service_id {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $service_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        service_id = $service_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.services.service_instances
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_base_service_instance_service_id {
    Param
    (
        $base_service_instance,
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $service_id,
        $service_instance_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        base_service_instance = $base_service_instance
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        service_id = $service_id
        service_instance_id = $service_instance_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.services.service_instances
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_ns_service_group {
    Param
    (
        $description,
        $display_name,
        $id,
        $members,
        $resource_type,
        $revision,
        $self,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        description = $description
        display_name = $display_name
        id = $id
        members = $members
        resource_type = $resource_type
        revision = $revision
        self = $self
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ns_service_groups
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_ns_service_group {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $force,
        $ns_service_group_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        force = $force
        ns_service_group_id = $ns_service_group_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ns_service_groups
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_ns_service_group {
    Param
    (
        $cursor,
        $default_service,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        default_service = $default_service
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ns_service_groups
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_ns_service_group {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $ns_service_group,
        $ns_service_group_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        ns_service_group = $ns_service_group
        ns_service_group_id = $ns_service_group_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ns_service_groups
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_metadata_proxy {
    Param
    (
        $crypto_protocols,
        $description,
        $display_name,
        $edge_cluster_id,
        $edge_cluster_member_indexes,
        $enable_standby_relocation,
        $id,
        $metadata_server_ca_ids,
        $metadata_server_url,
        $resource_type,
        $revision,
        $secret,
        $self,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        crypto_protocols = $crypto_protocols
        description = $description
        display_name = $display_name
        edge_cluster_id = $edge_cluster_id
        edge_cluster_member_indexes = $edge_cluster_member_indexes
        enable_standby_relocation = $enable_standby_relocation
        id = $id
        metadata_server_ca_ids = $metadata_server_ca_ids
        metadata_server_url = $metadata_server_url
        resource_type = $resource_type
        revision = $revision
        secret = $secret
        self = $self
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.md_proxies
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_metadata_proxy {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $proxy_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        proxy_id = $proxy_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.md_proxies
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_metadata_proxy {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.md_proxies
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_metadata_proxy {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $metadata_proxy,
        $proxy_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        metadata_proxy = $metadata_proxy
        proxy_id = $proxy_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.md_proxies
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_b_GP_community_list_logical_router_id {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $metadata_proxy,
        $proxy_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        metadata_proxy = $metadata_proxy
        proxy_id = $proxy_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.logical_routers.routing.bgp.community_lists
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_b_GP_community_list_logical_router_id {
    Param
    (
        $community_list_id,
        $Definition,
        $Documentation,
        $Errors,
        $logical_router_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        community_list_id = $community_list_id
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        logical_router_id = $logical_router_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.logical_routers.routing.bgp.community_lists
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_b_GP_community_list_logical_router_id {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $logical_router_id,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        logical_router_id = $logical_router_id
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.logical_routers.routing.bgp.community_lists
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_b_GP_community_list_logical_router_id {
    Param
    (
        $b_GP_community_list,
        $community_list_id,
        $Definition,
        $Documentation,
        $Errors,
        $logical_router_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        b_GP_community_list = $b_GP_community_list
        community_list_id = $community_list_id
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        logical_router_id = $logical_router_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.logical_routers.routing.bgp.community_lists
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_ip_sec_VPN_tunnel_profile {
    Param
    (
        $description,
        $df_policy,
        $dh_groups,
        $digest_algorithms,
        $display_name,
        $enable_perfect_forward_secrecy,
        $encryption_algorithms,
        $id,
        $resource_type,
        $revision,
        $sa_life_time,
        $self,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        description = $description
        df_policy = $df_policy
        dh_groups = $dh_groups
        digest_algorithms = $digest_algorithms
        display_name = $display_name
        enable_perfect_forward_secrecy = $enable_perfect_forward_secrecy
        encryption_algorithms = $encryption_algorithms
        id = $id
        resource_type = $resource_type
        revision = $revision
        sa_life_time = $sa_life_time
        self = $self
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.vpn.ipsec.tunnel_profiles
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_ip_sec_VPN_tunnel_profile {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $force,
        $ipsec_vpn_tunnel_profile_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        force = $force
        ipsec_vpn_tunnel_profile_id = $ipsec_vpn_tunnel_profile_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.vpn.ipsec.tunnel_profiles
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_ip_sec_VPN_tunnel_profile {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.vpn.ipsec.tunnel_profiles
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_ip_sec_VPN_tunnel_profile {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $ipsec_vpn_tunnel_profile_id,
        $ip_sec_VPN_tunnel_profile,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        ipsec_vpn_tunnel_profile_id = $ipsec_vpn_tunnel_profile_id
        ip_sec_VPN_tunnel_profile = $ip_sec_VPN_tunnel_profile
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.vpn.ipsec.tunnel_profiles
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_logical_router_id_static_route {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $ipsec_vpn_tunnel_profile_id,
        $ip_sec_VPN_tunnel_profile,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        ipsec_vpn_tunnel_profile_id = $ipsec_vpn_tunnel_profile_id
        ip_sec_VPN_tunnel_profile = $ip_sec_VPN_tunnel_profile
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.logical_routers.routing.static_routes
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_logical_router_id_static_route {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $id,
        $logical_router_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        id = $id
        logical_router_id = $logical_router_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.logical_routers.routing.static_routes
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_logical_router_id_static_route {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $logical_router_id,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        logical_router_id = $logical_router_id
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.logical_routers.routing.static_routes
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_logical_router_id_static_route {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $id,
        $logical_router_id,
        $Returns,
        $static_route
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        id = $id
        logical_router_id = $logical_router_id
        Returns = $Returns
        static_route = $static_route
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.logical_routers.routing.static_routes
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_id_operation_p_BR_section {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $id,
        $logical_router_id,
        $Returns,
        $static_route
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        id = $id
        logical_router_id = $logical_router_id
        Returns = $Returns
        static_route = $static_route
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.pbr.sections
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_id_operation_p_BR_section {
    Param
    (
        $cascade,
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $section_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cascade = $cascade
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        section_id = $section_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.pbr.sections
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_id_operation_p_BR_section {
    Param
    (
        $applied_tos,
        $cursor,
        $Definition,
        $destinations,
        $Documentation,
        $Errors,
        $exclude_applied_to_type,
        $filter_type,
        $included_fields,
        $include_applied_to_type,
        $page_size,
        $Returns,
        $services,
        $sort_ascending,
        $sort_by,
        $sources
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        applied_tos = $applied_tos
        cursor = $cursor
        Definition = $Definition
        destinations = $destinations
        Documentation = $Documentation
        Errors = $Errors
        exclude_applied_to_type = $exclude_applied_to_type
        filter_type = $filter_type
        included_fields = $included_fields
        include_applied_to_type = $include_applied_to_type
        page_size = $page_size
        Returns = $Returns
        services = $services
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        sources = $sources
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.pbr.sections
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_id_operation_p_BR_section {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $p_BR_section,
        $Returns,
        $section_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        p_BR_section = $p_BR_section
        Returns = $Returns
        section_id = $section_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.pbr.sections
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_app_profile {
    Param
    (
        $app_profile_category,
        $app_profile_criteria,
        $default_app_profile,
        $description,
        $display_name,
        $id,
        $resource_type,
        $revision,
        $self,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        app_profile_category = $app_profile_category
        app_profile_criteria = $app_profile_criteria
        default_app_profile = $default_app_profile
        description = $description
        display_name = $display_name
        id = $id
        resource_type = $resource_type
        revision = $revision
        self = $self
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.app_discovery.app_profiles
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_app_profile {
    Param
    (
        $app_profile_id,
        $Definition,
        $Documentation,
        $Errors,
        $force,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        app_profile_id = $app_profile_id
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        force = $force
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.app_discovery.app_profiles
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_app_profile {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.app_discovery.app_profiles
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_app_profile {
    Param
    (
        $app_profile,
        $app_profile_id,
        $Definition,
        $Documentation,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        app_profile = $app_profile
        app_profile_id = $app_profile_id
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.app_discovery.app_profiles
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_lb_service {
    Param
    (
        $access_log_enabled,
        $attachment,
        $description,
        $display_name,
        $enabled,
        $error_log_level,
        $id,
        $resource_type,
        $revision,
        $self,
        $size,
        $tags,
        $virtual_server_ids
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        access_log_enabled = $access_log_enabled
        attachment = $attachment
        description = $description
        display_name = $display_name
        enabled = $enabled
        error_log_level = $error_log_level
        id = $id
        resource_type = $resource_type
        revision = $revision
        self = $self
        size = $size
        tags = $tags
        virtual_server_ids = $virtual_server_ids
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.loadbalancer.services
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_lb_service {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $service_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        service_id = $service_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.loadbalancer.services
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_lb_service {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $logical_router_id,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        logical_router_id = $logical_router_id
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.loadbalancer.services
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_lb_service {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $lb_service,
        $Returns,
        $service_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        lb_service = $lb_service
        Returns = $Returns
        service_id = $service_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.loadbalancer.services
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_firewall_rule_id_operation_section_id {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $lb_service,
        $Returns,
        $service_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        lb_service = $lb_service
        Returns = $Returns
        service_id = $service_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.firewall.sections.rules
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_firewall_rule_id_operation_section_id {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $rule_id,
        $section_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        rule_id = $rule_id
        section_id = $section_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.firewall.sections.rules
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_firewall_rule_id_operation_section_id {
    Param
    (
        $applied_tos,
        $context_profiles,
        $cursor,
        $deep_search,
        $Definition,
        $destinations,
        $Documentation,
        $Errors,
        $extended_sources,
        $filter_type,
        $included_fields,
        $page_size,
        $Returns,
        $search_invalid_references,
        $section_id,
        $services,
        $sort_ascending,
        $sort_by,
        $sources
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        applied_tos = $applied_tos
        context_profiles = $context_profiles
        cursor = $cursor
        deep_search = $deep_search
        Definition = $Definition
        destinations = $destinations
        Documentation = $Documentation
        Errors = $Errors
        extended_sources = $extended_sources
        filter_type = $filter_type
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        search_invalid_references = $search_invalid_references
        section_id = $section_id
        services = $services
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        sources = $sources
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.firewall.sections.rules
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_firewall_rule_id_operation_section_id {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $firewall_rule,
        $Returns,
        $rule_id,
        $section_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        firewall_rule = $firewall_rule
        Returns = $Returns
        rule_id = $rule_id
        section_id = $section_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.firewall.sections.rules
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_base_service_profile_service_id {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $firewall_rule,
        $Returns,
        $rule_id,
        $section_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        firewall_rule = $firewall_rule
        Returns = $Returns
        rule_id = $rule_id
        section_id = $section_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.services.service_profiles
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_base_service_profile_service_id {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $service_id,
        $service_profile_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        service_id = $service_id
        service_profile_id = $service_profile_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.services.service_profiles
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_base_service_profile_service_id {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $service_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        service_id = $service_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.services.service_profiles
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_bgp_neighbor_logical_router_id {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $service_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        service_id = $service_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.logical_routers.routing.bgp.neighbors
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_bgp_neighbor_logical_router_id {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $id,
        $logical_router_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        id = $id
        logical_router_id = $logical_router_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.logical_routers.routing.bgp.neighbors
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_bgp_neighbor_logical_router_id {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $logical_router_id,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        logical_router_id = $logical_router_id
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.logical_routers.routing.bgp.neighbors
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_bgp_neighbor_logical_router_id {
    Param
    (
        $bgp_neighbor,
        $Definition,
        $Documentation,
        $Errors,
        $id,
        $logical_router_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        bgp_neighbor = $bgp_neighbor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        id = $id
        logical_router_id = $logical_router_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.logical_routers.routing.bgp.neighbors
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_cursor_included_fields_page_size_search_string_sort_ascending_sort_by {
    Param
    (
        $bgp_neighbor,
        $Definition,
        $Documentation,
        $Errors,
        $id,
        $logical_router_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        bgp_neighbor = $bgp_neighbor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        id = $id
        logical_router_id = $logical_router_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.aaa.vidm.search
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_n_DRA_profile {
    Param
    (
        $description,
        $display_name,
        $dns_config,
        $id,
        $ra_config,
        $ra_mode,
        $reachable_timer,
        $resource_type,
        $retransmit_interval,
        $revision,
        $self,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        description = $description
        display_name = $display_name
        dns_config = $dns_config
        id = $id
        ra_config = $ra_config
        ra_mode = $ra_mode
        reachable_timer = $reachable_timer
        resource_type = $resource_type
        retransmit_interval = $retransmit_interval
        revision = $revision
        self = $self
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ipv6.nd_ra_profiles
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_n_DRA_profile {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $nd_ra_profile_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        nd_ra_profile_id = $nd_ra_profile_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ipv6.nd_ra_profiles
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_n_DRA_profile {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ipv6.nd_ra_profiles
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_n_DRA_profile {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $nd_ra_profile_id,
        $n_DRA_profile,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        nd_ra_profile_id = $nd_ra_profile_id
        n_DRA_profile = $n_DRA_profile
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ipv6.nd_ra_profiles
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_service_deployment_service_id {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $nd_ra_profile_id,
        $n_DRA_profile,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        nd_ra_profile_id = $nd_ra_profile_id
        n_DRA_profile = $n_DRA_profile
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.services.service_deployments
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_service_deployment_service_id {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $force,
        $Returns,
        $service_deployment_id,
        $service_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        force = $force
        Returns = $Returns
        service_deployment_id = $service_deployment_id
        service_id = $service_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.services.service_deployments
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_service_deployment_service_id {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $service_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        service_id = $service_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.services.service_deployments
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_service_deployment_service_id {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $service_deployment,
        $service_deployment_id,
        $service_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        service_deployment = $service_deployment
        service_deployment_id = $service_deployment_id
        service_id = $service_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.services.service_deployments
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_compute_collection_transport_node_template {
    Param
    (
        $compute_collection_ids,
        $description,
        $display_name,
        $host_switch_spec,
        $id,
        $network_migration_spec_ids,
        $resource_type,
        $revision,
        $self,
        $tags,
        $transport_zone_endpoints
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        compute_collection_ids = $compute_collection_ids
        description = $description
        display_name = $display_name
        host_switch_spec = $host_switch_spec
        id = $id
        network_migration_spec_ids = $network_migration_spec_ids
        resource_type = $resource_type
        revision = $revision
        self = $self
        tags = $tags
        transport_zone_endpoints = $transport_zone_endpoints
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.compute_collection_transport_node_templates
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_compute_collection_transport_node_template {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $template_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        template_id = $template_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.compute_collection_transport_node_templates
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_compute_collection_transport_node_template {
    Param
    (
        $compute_collection_id,
        $Definition,
        $Documentation,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        compute_collection_id = $compute_collection_id
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.compute_collection_transport_node_templates
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_compute_collection_transport_node_template {
    Param
    (
        $compute_collection_transport_node_template,
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $template_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        compute_collection_transport_node_template = $compute_collection_transport_node_template
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        template_id = $template_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.compute_collection_transport_node_templates
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_view_id_widget_configuration {
    Param
    (
        $compute_collection_transport_node_template,
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $template_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        compute_collection_transport_node_template = $compute_collection_transport_node_template
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        template_id = $template_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ui_views.widgetconfigurations
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_view_id_widget_configuration {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $view_id,
        $widgetconfiguration_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        view_id = $view_id
        widgetconfiguration_id = $widgetconfiguration_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ui_views.widgetconfigurations
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_view_id_widget_configuration {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $view_id,
        $widgetconfiguration_id,
        $widget_configuration
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        view_id = $view_id
        widgetconfiguration_id = $widgetconfiguration_id
        widget_configuration = $widget_configuration
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ui_views.widgetconfigurations
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_dhcp_static_binding_server_id {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $view_id,
        $widgetconfiguration_id,
        $widget_configuration
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        view_id = $view_id
        widgetconfiguration_id = $widgetconfiguration_id
        widget_configuration = $widget_configuration
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.dhcp.servers.static_bindings
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_dhcp_static_binding_server_id {
    Param
    (
        $binding_id,
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $server_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        binding_id = $binding_id
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        server_id = $server_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.dhcp.servers.static_bindings
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_dhcp_static_binding_server_id {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $server_id,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        server_id = $server_id
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.dhcp.servers.static_bindings
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_dhcp_static_binding_server_id {
    Param
    (
        $binding_id,
        $Definition,
        $dhcp_static_binding,
        $Documentation,
        $Errors,
        $Returns,
        $server_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        binding_id = $binding_id
        Definition = $Definition
        dhcp_static_binding = $dhcp_static_binding
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        server_id = $server_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.dhcp.servers.static_bindings
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_ip_set {
    Param
    (
        $description,
        $display_name,
        $id,
        $ip_addresses,
        $resource_type,
        $revision,
        $self,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        description = $description
        display_name = $display_name
        id = $id
        ip_addresses = $ip_addresses
        resource_type = $resource_type
        revision = $revision
        self = $self
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ip_sets
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_ip_set {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $force,
        $ip_set_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        force = $force
        ip_set_id = $ip_set_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ip_sets
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_ip_set {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ip_sets
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_ip_set {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $ip_set,
        $ip_set_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        ip_set = $ip_set
        ip_set_id = $ip_set_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ip_sets
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_lb_virtual_server {
    Param
    (
        $access_log_enabled,
        $application_profile_id,
        $client_ssl_profile_binding,
        $client_tcp_profile_id,
        $default_pool_member_port,
        $default_pool_member_ports,
        $description,
        $display_name,
        $enabled,
        $id,
        $ip_address,
        $ip_protocol,
        $max_concurrent_connections,
        $max_new_connection_rate,
        $persistence_profile_id,
        $pool_id,
        $port,
        $ports,
        $resource_type,
        $revision,
        $rule_ids,
        $self,
        $server_ssl_profile_binding,
        $server_tcp_profile_id,
        $sorry_pool_id,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        access_log_enabled = $access_log_enabled
        application_profile_id = $application_profile_id
        client_ssl_profile_binding = $client_ssl_profile_binding
        client_tcp_profile_id = $client_tcp_profile_id
        default_pool_member_port = $default_pool_member_port
        default_pool_member_ports = $default_pool_member_ports
        description = $description
        display_name = $display_name
        enabled = $enabled
        id = $id
        ip_address = $ip_address
        ip_protocol = $ip_protocol
        max_concurrent_connections = $max_concurrent_connections
        max_new_connection_rate = $max_new_connection_rate
        persistence_profile_id = $persistence_profile_id
        pool_id = $pool_id
        port = $port
        ports = $ports
        resource_type = $resource_type
        revision = $revision
        rule_ids = $rule_ids
        self = $self
        server_ssl_profile_binding = $server_ssl_profile_binding
        server_tcp_profile_id = $server_tcp_profile_id
        sorry_pool_id = $sorry_pool_id
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.loadbalancer.virtual_servers
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_lb_virtual_server {
    Param
    (
        $Definition,
        $delete_associated_rules,
        $Documentation,
        $Errors,
        $Returns,
        $virtual_server_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        delete_associated_rules = $delete_associated_rules
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        virtual_server_id = $virtual_server_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.loadbalancer.virtual_servers
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_lb_virtual_server {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.loadbalancer.virtual_servers
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_lb_virtual_server {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $lb_virtual_server,
        $Returns,
        $virtual_server_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        lb_virtual_server = $lb_virtual_server
        Returns = $Returns
        virtual_server_id = $virtual_server_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.loadbalancer.virtual_servers
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_lb_app_profile {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $lb_virtual_server_with_rule,
        $Returns,
        $virtual_server_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        lb_virtual_server_with_rule = $lb_virtual_server_with_rule
        Returns = $Returns
        virtual_server_id = $virtual_server_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.loadbalancer.application_profiles
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_lb_app_profile {
    Param
    (
        $application_profile_id,
        $Definition,
        $Documentation,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        application_profile_id = $application_profile_id
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.loadbalancer.application_profiles
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_lb_app_profile {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by,
        $type
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        type = $type
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.loadbalancer.application_profiles
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_lb_app_profile {
    Param
    (
        $application_profile_id,
        $Definition,
        $Documentation,
        $Errors,
        $lb_app_profile,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        application_profile_id = $application_profile_id
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        lb_app_profile = $lb_app_profile
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.loadbalancer.application_profiles
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_principal_identity {
    Param
    (
        $certificate_id,
        $description,
        $display_name,
        $id,
        $is_protected,
        $name,
        $node_id,
        $permission_group,
        $resource_type,
        $revision,
        $role,
        $self,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        certificate_id = $certificate_id
        description = $description
        display_name = $display_name
        id = $id
        is_protected = $is_protected
        name = $name
        node_id = $node_id
        permission_group = $permission_group
        resource_type = $resource_type
        revision = $revision
        role = $role
        self = $self
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.trust_management.principal_identities
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_principal_identity {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $principal_identity_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        principal_identity_id = $principal_identity_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.trust_management.principal_identities
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_principal_identity {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.trust_management.principal_identities
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_logical_router {
    Param
    (
        $advanced_config,
        $allocation_profile,
        $description,
        $display_name,
        $edge_cluster_id,
        $edge_cluster_member_indices,
        $failover_mode,
        $high_availability_mode,
        $id,
        $ipv6_profiles,
        $preferred_edge_cluster_member_index,
        $resource_type,
        $revision,
        $router_type,
        $self,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        advanced_config = $advanced_config
        allocation_profile = $allocation_profile
        description = $description
        display_name = $display_name
        edge_cluster_id = $edge_cluster_id
        edge_cluster_member_indices = $edge_cluster_member_indices
        failover_mode = $failover_mode
        high_availability_mode = $high_availability_mode
        id = $id
        ipv6_profiles = $ipv6_profiles
        preferred_edge_cluster_member_index = $preferred_edge_cluster_member_index
        resource_type = $resource_type
        revision = $revision
        router_type = $router_type
        self = $self
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.logical_routers
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_logical_router {
    Param
    (
        $cascade_delete_linked_ports,
        $Definition,
        $Documentation,
        $Errors,
        $force,
        $logical_router_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cascade_delete_linked_ports = $cascade_delete_linked_ports
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        force = $force
        logical_router_id = $logical_router_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.logical_routers
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_logical_router {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $router_type,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        router_type = $router_type
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.logical_routers
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_logical_router {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $logical_router,
        $logical_router_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        logical_router = $logical_router
        logical_router_id = $logical_router_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.logical_routers
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_bridge_endpoint {
    Param
    (
        $bridge_cluster_id,
        $bridge_endpoint_profile_id,
        $description,
        $display_name,
        $ha_enable,
        $id,
        $resource_type,
        $revision,
        $self,
        $tags,
        $uplink_teaming_policy_name,
        $vlan,
        $vlan_transport_zone_id,
        $vlan_trunk_spec
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        bridge_cluster_id = $bridge_cluster_id
        bridge_endpoint_profile_id = $bridge_endpoint_profile_id
        description = $description
        display_name = $display_name
        ha_enable = $ha_enable
        id = $id
        resource_type = $resource_type
        revision = $revision
        self = $self
        tags = $tags
        uplink_teaming_policy_name = $uplink_teaming_policy_name
        vlan = $vlan
        vlan_transport_zone_id = $vlan_transport_zone_id
        vlan_trunk_spec = $vlan_trunk_spec
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.bridge_endpoints
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_bridge_endpoint {
    Param
    (
        $bridgeendpoint_id,
        $Definition,
        $Documentation,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        bridgeendpoint_id = $bridgeendpoint_id
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.bridge_endpoints
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_bridge_endpoint {
    Param
    (
        $bridge_cluster_id,
        $bridge_endpoint_profile_id,
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $logical_switch_id,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by,
        $vlan_transport_zone_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        bridge_cluster_id = $bridge_cluster_id
        bridge_endpoint_profile_id = $bridge_endpoint_profile_id
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        logical_switch_id = $logical_switch_id
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        vlan_transport_zone_id = $vlan_transport_zone_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.bridge_endpoints
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_bridge_endpoint {
    Param
    (
        $bridgeendpoint_id,
        $bridge_endpoint,
        $Definition,
        $Documentation,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        bridgeendpoint_id = $bridgeendpoint_id
        bridge_endpoint = $bridge_endpoint
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.bridge_endpoints
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_principal_identity_with_certificate {
    Param
    (
        $certificate_id,
        $certificate_pem,
        $description,
        $display_name,
        $id,
        $is_protected,
        $name,
        $node_id,
        $permission_group,
        $resource_type,
        $revision,
        $role,
        $self,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        certificate_id = $certificate_id
        certificate_pem = $certificate_pem
        description = $description
        display_name = $display_name
        id = $id
        is_protected = $is_protected
        name = $name
        node_id = $node_id
        permission_group = $permission_group
        resource_type = $resource_type
        revision = $revision
        role = $role
        self = $self
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.trust_management.principal_identities.with_certificate
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_firewall_section_id_operation {
    Param
    (
        $certificate_id,
        $certificate_pem,
        $description,
        $display_name,
        $id,
        $is_protected,
        $name,
        $node_id,
        $permission_group,
        $resource_type,
        $revision,
        $role,
        $self,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        certificate_id = $certificate_id
        certificate_pem = $certificate_pem
        description = $description
        display_name = $display_name
        id = $id
        is_protected = $is_protected
        name = $name
        node_id = $node_id
        permission_group = $permission_group
        resource_type = $resource_type
        revision = $revision
        role = $role
        self = $self
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.firewall.sections
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_firewall_section_id_operation {
    Param
    (
        $cascade,
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $section_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cascade = $cascade
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        section_id = $section_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.firewall.sections
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_firewall_section_id_operation {
    Param
    (
        $applied_tos,
        $context_profiles,
        $cursor,
        $deep_search,
        $Definition,
        $destinations,
        $Documentation,
        $enforced_on,
        $Errors,
        $exclude_applied_to_type,
        $extended_sources,
        $filter_type,
        $included_fields,
        $include_applied_to_type,
        $locked,
        $page_size,
        $Returns,
        $search_invalid_references,
        $search_scope,
        $services,
        $sort_ascending,
        $sort_by,
        $sources,
        $type
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        applied_tos = $applied_tos
        context_profiles = $context_profiles
        cursor = $cursor
        deep_search = $deep_search
        Definition = $Definition
        destinations = $destinations
        Documentation = $Documentation
        enforced_on = $enforced_on
        Errors = $Errors
        exclude_applied_to_type = $exclude_applied_to_type
        extended_sources = $extended_sources
        filter_type = $filter_type
        included_fields = $included_fields
        include_applied_to_type = $include_applied_to_type
        locked = $locked
        page_size = $page_size
        Returns = $Returns
        search_invalid_references = $search_invalid_references
        search_scope = $search_scope
        services = $services
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        sources = $sources
        type = $type
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.firewall.sections
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_firewall_section_id_operation {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $firewall_section,
        $Returns,
        $section_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        firewall_section = $firewall_section
        Returns = $Returns
        section_id = $section_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.firewall.sections
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_logical_router_port {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $firewall_section_rule_list,
        $Returns,
        $section_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        firewall_section_rule_list = $firewall_section_rule_list
        Returns = $Returns
        section_id = $section_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.logical_router_ports
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_logical_router_port {
    Param
    (
        $cascade_delete_linked_ports,
        $Definition,
        $Documentation,
        $Errors,
        $force,
        $logical_router_port_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cascade_delete_linked_ports = $cascade_delete_linked_ports
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        force = $force
        logical_router_port_id = $logical_router_port_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.logical_router_ports
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_logical_router_port {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $logical_router_id,
        $logical_switch_id,
        $page_size,
        $resource_type,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        logical_router_id = $logical_router_id
        logical_switch_id = $logical_switch_id
        page_size = $page_size
        resource_type = $resource_type
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.logical_router_ports
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_logical_router_port {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $logical_router_port,
        $logical_router_port_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        logical_router_port = $logical_router_port
        logical_router_port_id = $logical_router_port_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.logical_router_ports
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_ipfix_collector_upm_profile {
    Param
    (
        $collectors,
        $description,
        $display_name,
        $id,
        $resource_type,
        $revision,
        $self,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        collectors = $collectors
        description = $description
        display_name = $display_name
        id = $id
        resource_type = $resource_type
        revision = $revision
        self = $self
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ipfix_collector_profiles
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_ipfix_collector_upm_profile {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $ipfix_collector_profile_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        ipfix_collector_profile_id = $ipfix_collector_profile_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ipfix_collector_profiles
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_ipfix_collector_upm_profile {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $profile_types,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        profile_types = $profile_types
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ipfix_collector_profiles
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_ipfix_collector_upm_profile {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $ipfix_collector_profile_id,
        $ipfix_collector_upm_profile,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        ipfix_collector_profile_id = $ipfix_collector_profile_id
        ipfix_collector_upm_profile = $ipfix_collector_upm_profile
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ipfix_collector_profiles
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_service_config_list {
    Param
    (
        $service_configs
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        service_configs = $service_configs
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.service_configs.batch
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_upgrade_task_properties {
    Param
    (
        $bundle_name,
        $step
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        bundle_name = $bundle_name
        step = $step
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.node.upgrade.performtask
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_ipfix_collector_config {
    Param
    (
        $collectors,
        $description,
        $display_name,
        $id,
        $resource_type,
        $revision,
        $self,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        collectors = $collectors
        description = $description
        display_name = $display_name
        id = $id
        resource_type = $resource_type
        revision = $revision
        self = $self
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ipfix.collectorconfigs
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_ipfix_collector_config {
    Param
    (
        $collector_config_id,
        $Definition,
        $Documentation,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        collector_config_id = $collector_config_id
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ipfix.collectorconfigs
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_ipfix_collector_config {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ipfix.collectorconfigs
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_ipfix_collector_config {
    Param
    (
        $collector_config_id,
        $Definition,
        $Documentation,
        $Errors,
        $ipfix_collector_config,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        collector_config_id = $collector_config_id
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        ipfix_collector_config = $ipfix_collector_config
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ipfix.collectorconfigs
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_transport_node {
    Param
    (
        $description,
        $display_name,
        $failure_domain_id,
        $host_switches,
        $host_switch_spec,
        $id,
        $node_deployment_info,
        $node_id,
        $resource_type,
        $revision,
        $self,
        $tags,
        $transport_zone_endpoints
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        description = $description
        display_name = $display_name
        failure_domain_id = $failure_domain_id
        host_switches = $host_switches
        host_switch_spec = $host_switch_spec
        id = $id
        node_deployment_info = $node_deployment_info
        node_id = $node_id
        resource_type = $resource_type
        revision = $revision
        self = $self
        tags = $tags
        transport_zone_endpoints = $transport_zone_endpoints
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.transport_nodes
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_transport_node {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $force,
        $Returns,
        $transport_node_id,
        $unprepare_host
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        force = $force
        Returns = $Returns
        transport_node_id = $transport_node_id
        unprepare_host = $unprepare_host
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.transport_nodes
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_transport_node {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $in_maintenance_mode,
        $node_id,
        $node_ip,
        $node_types,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by,
        $transport_zone_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        in_maintenance_mode = $in_maintenance_mode
        node_id = $node_id
        node_ip = $node_ip
        node_types = $node_types
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        transport_zone_id = $transport_zone_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.transport_nodes
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_transport_node {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $esx_mgmt_if_migration_dest,
        $if_id,
        $ping_ip,
        $Returns,
        $transport_node,
        $transport_node_id,
        $vnic,
        $vnic_migration_dest
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        esx_mgmt_if_migration_dest = $esx_mgmt_if_migration_dest
        if_id = $if_id
        ping_ip = $ping_ip
        Returns = $Returns
        transport_node = $transport_node
        transport_node_id = $transport_node_id
        vnic = $vnic
        vnic_migration_dest = $vnic_migration_dest
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.transport_nodes
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_csr {
    Param
    (
        $algorithm,
        $description,
        $display_name,
        $id,
        $key_size,
        $resource_type,
        $revision,
        $self,
        $subject,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        algorithm = $algorithm
        description = $description
        display_name = $display_name
        id = $id
        key_size = $key_size
        resource_type = $resource_type
        revision = $revision
        self = $self
        subject = $subject
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.trust_management.csrs
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_csr {
    Param
    (
        $csr_id,
        $Definition,
        $Documentation,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        csr_id = $csr_id
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.trust_management.csrs
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_csr {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.trust_management.csrs
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_role_binding {
    Param
    (
        $description,
        $display_name,
        $id,
        $resource_type,
        $revision,
        $self,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        description = $description
        display_name = $display_name
        id = $id
        resource_type = $resource_type
        revision = $revision
        self = $self
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.aaa.role_bindings
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_role_binding {
    Param
    (
        $binding_id,
        $Definition,
        $Documentation,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        binding_id = $binding_id
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.aaa.role_bindings
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_role_binding {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $name,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by,
        $type
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        name = $name
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        type = $type
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.aaa.role_bindings
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_role_binding {
    Param
    (
        $binding_id,
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $role_binding
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        binding_id = $binding_id
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        role_binding = $role_binding
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.aaa.role_bindings
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_ns_profile {
    Param
    (
        $description,
        $display_name,
        $id,
        $nsprofile_attribute,
        $resource_type,
        $revision,
        $self,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        description = $description
        display_name = $display_name
        id = $id
        nsprofile_attribute = $nsprofile_attribute
        resource_type = $resource_type
        revision = $revision
        self = $self
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ns_profiles
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_ns_profile {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $force,
        $ns_profile_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        force = $force
        ns_profile_id = $ns_profile_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ns_profiles
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_ns_profile {
    Param
    (
        $attribute_type,
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        attribute_type = $attribute_type
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ns_profiles
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_ns_profile {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $ns_profile,
        $ns_profile_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        ns_profile = $ns_profile
        ns_profile_id = $ns_profile_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ns_profiles
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_logical_router_id_static_hop_bfd_peer {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $ns_profile,
        $ns_profile_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        ns_profile = $ns_profile
        ns_profile_id = $ns_profile_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.logical_routers.routing.static_routes.bfd_peers
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_logical_router_id_static_hop_bfd_peer {
    Param
    (
        $bfd_peer_id,
        $Definition,
        $Documentation,
        $Errors,
        $force,
        $logical_router_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        bfd_peer_id = $bfd_peer_id
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        force = $force
        logical_router_id = $logical_router_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.logical_routers.routing.static_routes.bfd_peers
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_logical_router_id_static_hop_bfd_peer {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $logical_router_id,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        logical_router_id = $logical_router_id
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.logical_routers.routing.static_routes.bfd_peers
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_logical_router_id_static_hop_bfd_peer {
    Param
    (
        $bfd_peer_id,
        $Definition,
        $Documentation,
        $Errors,
        $logical_router_id,
        $Returns,
        $static_hop_bfd_peer
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        bfd_peer_id = $bfd_peer_id
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        logical_router_id = $logical_router_id
        Returns = $Returns
        static_hop_bfd_peer = $static_hop_bfd_peer
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.logical_routers.routing.static_routes.bfd_peers
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_ns_group {
    Param
    (
        $description,
        $display_name,
        $id,
        $members,
        $membership_criteria,
        $resource_type,
        $revision,
        $self,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        description = $description
        display_name = $display_name
        id = $id
        members = $members
        membership_criteria = $membership_criteria
        resource_type = $resource_type
        revision = $revision
        self = $self
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ns_groups
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_ns_group {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $force,
        $ns_group_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        force = $force
        ns_group_id = $ns_group_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ns_groups
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_ns_group {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $member_types,
        $page_size,
        $populate_references,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        member_types = $member_types
        page_size = $page_size
        populate_references = $populate_references
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ns_groups
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_ns_group {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $ns_group,
        $ns_group_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        ns_group = $ns_group
        ns_group_id = $ns_group_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ns_groups
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_service_manager {
    Param
    (
        $authentication_scheme,
        $description,
        $display_name,
        $id,
        $port,
        $resource_type,
        $revision,
        $self,
        $server,
        $service_ids,
        $tags,
        $thumbprint,
        $uri
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        authentication_scheme = $authentication_scheme
        description = $description
        display_name = $display_name
        id = $id
        port = $port
        resource_type = $resource_type
        revision = $revision
        self = $self
        server = $server
        service_ids = $service_ids
        tags = $tags
        thumbprint = $thumbprint
        uri = $uri
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.service_managers
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_service_manager {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $service_manager_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        service_manager_id = $service_manager_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.service_managers
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_service_manager {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.service_managers
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_service_manager {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $service_manager,
        $service_manager_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        service_manager = $service_manager
        service_manager_id = $service_manager_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.service_managers
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_node {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $service_manager,
        $service_manager_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        service_manager = $service_manager
        service_manager_id = $service_manager_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.fabric.nodes
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_node {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $node_id,
        $Returns,
        $unprepare_host
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        node_id = $node_id
        Returns = $Returns
        unprepare_host = $unprepare_host
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.fabric.nodes
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_node {
    Param
    (
        $cursor,
        $Definition,
        $discovered_node_id,
        $display_name,
        $Documentation,
        $Errors,
        $external_id,
        $hardware_id,
        $hypervisor_os_type,
        $included_fields,
        $ip_address,
        $page_size,
        $resource_type,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        discovered_node_id = $discovered_node_id
        display_name = $display_name
        Documentation = $Documentation
        Errors = $Errors
        external_id = $external_id
        hardware_id = $hardware_id
        hypervisor_os_type = $hypervisor_os_type
        included_fields = $included_fields
        ip_address = $ip_address
        page_size = $page_size
        resource_type = $resource_type
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.fabric.nodes
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_node {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $node,
        $node_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        node = $node
        node_id = $node_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.fabric.nodes
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_logical_port {
    Param
    (
        $address_bindings,
        $admin_state,
        $attachment,
        $description,
        $display_name,
        $extra_configs,
        $id,
        $ignore_address_bindings,
        $init_state,
        $logical_switch_id,
        $resource_type,
        $revision,
        $self,
        $switching_profile_ids,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        address_bindings = $address_bindings
        admin_state = $admin_state
        attachment = $attachment
        description = $description
        display_name = $display_name
        extra_configs = $extra_configs
        id = $id
        ignore_address_bindings = $ignore_address_bindings
        init_state = $init_state
        logical_switch_id = $logical_switch_id
        resource_type = $resource_type
        revision = $revision
        self = $self
        switching_profile_ids = $switching_profile_ids
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.logical_ports
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_logical_port {
    Param
    (
        $Definition,
        $detach,
        $Documentation,
        $Errors,
        $lport_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        detach = $detach
        Documentation = $Documentation
        Errors = $Errors
        lport_id = $lport_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.logical_ports
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_logical_port {
    Param
    (
        $attachment_id,
        $attachment_type,
        $bridge_cluster_id,
        $container_ports_only,
        $cursor,
        $Definition,
        $diagnostic,
        $Documentation,
        $Errors,
        $included_fields,
        $logical_switch_id,
        $page_size,
        $parent_vif_id,
        $Returns,
        $sort_ascending,
        $sort_by,
        $switching_profile_id,
        $transport_node_id,
        $transport_zone_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        attachment_id = $attachment_id
        attachment_type = $attachment_type
        bridge_cluster_id = $bridge_cluster_id
        container_ports_only = $container_ports_only
        cursor = $cursor
        Definition = $Definition
        diagnostic = $diagnostic
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        logical_switch_id = $logical_switch_id
        page_size = $page_size
        parent_vif_id = $parent_vif_id
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        switching_profile_id = $switching_profile_id
        transport_node_id = $transport_node_id
        transport_zone_id = $transport_zone_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.logical_ports
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_logical_port {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $logical_port,
        $lport_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        logical_port = $logical_port
        lport_id = $lport_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.logical_ports
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_action_instance_runtime_id_service_id_service_instance_id_unhealthy_reason {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $logical_port,
        $lport_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        logical_port = $logical_port
        lport_id = $lport_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.services.service_instances.instance_runtimes
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_action_instance_runtime_id_service_id_service_instance_id_unhealthy_reason {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $service_id,
        $service_instance_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        service_id = $service_id
        service_instance_id = $service_instance_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.services.service_instances.instance_runtimes
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_action_instance_runtime_id_service_id_service_instance_id_unhealthy_reason {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $service_id,
        $service_instance_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        service_id = $service_id
        service_instance_id = $service_instance_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.services.service_instances.instance_runtimes
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_id_operation_p_BR_rule_section_id {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $service_id,
        $service_instance_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        service_id = $service_id
        service_instance_id = $service_instance_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.pbr.sections.rules
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_id_operation_p_BR_rule_section_id {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $rule_id,
        $section_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        rule_id = $rule_id
        section_id = $section_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.pbr.sections.rules
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_id_operation_p_BR_rule_section_id {
    Param
    (
        $applied_tos,
        $cursor,
        $Definition,
        $destinations,
        $Documentation,
        $Errors,
        $filter_type,
        $included_fields,
        $page_size,
        $Returns,
        $section_id,
        $services,
        $sort_ascending,
        $sort_by,
        $sources
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        applied_tos = $applied_tos
        cursor = $cursor
        Definition = $Definition
        destinations = $destinations
        Documentation = $Documentation
        Errors = $Errors
        filter_type = $filter_type
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        section_id = $section_id
        services = $services
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        sources = $sources
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.pbr.sections.rules
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_id_operation_p_BR_rule_section_id {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $p_BR_rule,
        $Returns,
        $rule_id,
        $section_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        p_BR_rule = $p_BR_rule
        Returns = $Returns
        rule_id = $rule_id
        section_id = $section_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.pbr.sections.rules
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_d_AD_profile {
    Param
    (
        $dad_mode,
        $description,
        $display_name,
        $id,
        $ns_retries,
        $resource_type,
        $revision,
        $self,
        $tags,
        $wait_time
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        dad_mode = $dad_mode
        description = $description
        display_name = $display_name
        id = $id
        ns_retries = $ns_retries
        resource_type = $resource_type
        revision = $revision
        self = $self
        tags = $tags
        wait_time = $wait_time
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ipv6.dad_profiles
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_d_AD_profile {
    Param
    (
        $dad_profile_id,
        $Definition,
        $Documentation,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        dad_profile_id = $dad_profile_id
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ipv6.dad_profiles
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_d_AD_profile {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ipv6.dad_profiles
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_d_AD_profile {
    Param
    (
        $dad_profile_id,
        $Definition,
        $Documentation,
        $d_AD_profile,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        dad_profile_id = $dad_profile_id
        Definition = $Definition
        Documentation = $Documentation
        d_AD_profile = $d_AD_profile
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ipv6.dad_profiles
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_add_intelligence_cluster_node_VM_info {
    Param
    (
        $deployment_requests
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        deployment_requests = $deployment_requests
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.intelligence.nodes.deployments
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_add_intelligence_cluster_node_VM_info {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $force_delete,
        $node_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        force_delete = $force_delete
        node_id = $node_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.intelligence.nodes.deployments
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_add_intelligence_cluster_node_VM_info {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.intelligence.nodes.deployments
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_port_mirroring_session {
    Param
    (
        $description,
        $direction,
        $display_name,
        $encapsulation_vlan_id,
        $id,
        $mirror_destination,
        $mirror_sources,
        $port_mirroring_filters,
        $preserve_original_vlan,
        $resource_type,
        $revision,
        $self,
        $session_type,
        $snap_length,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        description = $description
        direction = $direction
        display_name = $display_name
        encapsulation_vlan_id = $encapsulation_vlan_id
        id = $id
        mirror_destination = $mirror_destination
        mirror_sources = $mirror_sources
        port_mirroring_filters = $port_mirroring_filters
        preserve_original_vlan = $preserve_original_vlan
        resource_type = $resource_type
        revision = $revision
        self = $self
        session_type = $session_type
        snap_length = $snap_length
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.mirror_sessions
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_port_mirroring_session {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $mirror_session_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        mirror_session_id = $mirror_session_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.mirror_sessions
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_port_mirroring_session {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.mirror_sessions
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_port_mirroring_session {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $mirror_session_id,
        $port_mirroring_session,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        mirror_session_id = $mirror_session_id
        port_mirroring_session = $port_mirroring_session
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.mirror_sessions
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_dns_forwarder {
    Param
    (
        $cache_size,
        $conditional_forwarders,
        $default_forwarder,
        $description,
        $display_name,
        $enabled,
        $id,
        $listener_ip,
        $logical_router_id,
        $log_level,
        $resource_type,
        $revision,
        $self,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cache_size = $cache_size
        conditional_forwarders = $conditional_forwarders
        default_forwarder = $default_forwarder
        description = $description
        display_name = $display_name
        enabled = $enabled
        id = $id
        listener_ip = $listener_ip
        logical_router_id = $logical_router_id
        log_level = $log_level
        resource_type = $resource_type
        revision = $revision
        self = $self
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.dns.forwarders
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_dns_forwarder {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $forwarder_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        forwarder_id = $forwarder_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.dns.forwarders
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_dns_forwarder {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.dns.forwarders
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_dns_forwarder {
    Param
    (
        $Definition,
        $dns_forwarder,
        $Documentation,
        $Errors,
        $forwarder_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        dns_forwarder = $dns_forwarder
        Documentation = $Documentation
        Errors = $Errors
        forwarder_id = $forwarder_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.dns.forwarders
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_node_route_properties {
    Param
    (
        $destination,
        $from_address,
        $gateway,
        $interface_id,
        $metric,
        $netmask,
        $proto,
        $route_type,
        $scope,
        $self,
        $src
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        destination = $destination
        from_address = $from_address
        gateway = $gateway
        interface_id = $interface_id
        metric = $metric
        netmask = $netmask
        proto = $proto
        route_type = $route_type
        scope = $scope
        self = $self
        src = $src
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.node.network.routes
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_node_route_properties {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $route_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        route_id = $route_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.node.network.routes
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_node_route_properties {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.node.network.routes
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_ip_sec_VPNDPD_profile {
    Param
    (
        $description,
        $display_name,
        $dpd_probe_interval,
        $enabled,
        $id,
        $resource_type,
        $revision,
        $self,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        description = $description
        display_name = $display_name
        dpd_probe_interval = $dpd_probe_interval
        enabled = $enabled
        id = $id
        resource_type = $resource_type
        revision = $revision
        self = $self
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.vpn.ipsec.dpd_profiles
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_ip_sec_VPNDPD_profile {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $force,
        $ipsec_vpn_dpd_profile_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        force = $force
        ipsec_vpn_dpd_profile_id = $ipsec_vpn_dpd_profile_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.vpn.ipsec.dpd_profiles
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_ip_sec_VPNDPD_profile {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.vpn.ipsec.dpd_profiles
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_ip_sec_VPNDPD_profile {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $ipsec_vpn_dpd_profile_id,
        $ip_sec_VPNDPD_profile,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        ipsec_vpn_dpd_profile_id = $ipsec_vpn_dpd_profile_id
        ip_sec_VPNDPD_profile = $ip_sec_VPNDPD_profile
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.vpn.ipsec.dpd_profiles
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_id_operation_service_insertion_section {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $ipsec_vpn_dpd_profile_id,
        $ip_sec_VPNDPD_profile,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        ipsec_vpn_dpd_profile_id = $ipsec_vpn_dpd_profile_id
        ip_sec_VPNDPD_profile = $ip_sec_VPNDPD_profile
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.sections
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_id_operation_service_insertion_section {
    Param
    (
        $cascade,
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $section_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cascade = $cascade
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        section_id = $section_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.sections
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_id_operation_service_insertion_section {
    Param
    (
        $applied_tos,
        $cursor,
        $Definition,
        $destinations,
        $Documentation,
        $Errors,
        $exclude_applied_to_type,
        $filter_type,
        $included_fields,
        $include_applied_to_type,
        $page_size,
        $Returns,
        $services,
        $sort_ascending,
        $sort_by,
        $sources,
        $type
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        applied_tos = $applied_tos
        cursor = $cursor
        Definition = $Definition
        destinations = $destinations
        Documentation = $Documentation
        Errors = $Errors
        exclude_applied_to_type = $exclude_applied_to_type
        filter_type = $filter_type
        included_fields = $included_fields
        include_applied_to_type = $include_applied_to_type
        page_size = $page_size
        Returns = $Returns
        services = $services
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        sources = $sources
        type = $type
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.sections
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_id_operation_service_insertion_section {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $section_id,
        $service_insertion_section
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        section_id = $section_id
        service_insertion_section = $service_insertion_section
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.sections
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_ipfix_upm_profile {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $section_id,
        $service_insertion_section_rule_list
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        section_id = $section_id
        service_insertion_section_rule_list = $service_insertion_section_rule_list
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ipfix_profiles
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_ipfix_upm_profile {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $ipfix_profile_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        ipfix_profile_id = $ipfix_profile_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ipfix_profiles
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_ipfix_upm_profile {
    Param
    (
        $applied_to_entity_id,
        $applied_to_entity_type,
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $profile_types,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        applied_to_entity_id = $applied_to_entity_id
        applied_to_entity_type = $applied_to_entity_type
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        profile_types = $profile_types
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ipfix_profiles
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_ipfix_upm_profile {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $ipfix_profile_id,
        $ipfix_upm_profile,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        ipfix_profile_id = $ipfix_profile_id
        ipfix_upm_profile = $ipfix_upm_profile
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ipfix_profiles
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_logical_router_id_route_map {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $ipfix_profile_id,
        $ipfix_upm_profile,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        ipfix_profile_id = $ipfix_profile_id
        ipfix_upm_profile = $ipfix_upm_profile
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.logical_routers.routing.route_maps
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_logical_router_id_route_map {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $id,
        $logical_router_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        id = $id
        logical_router_id = $logical_router_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.logical_routers.routing.route_maps
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_logical_router_id_route_map {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $logical_router_id,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        logical_router_id = $logical_router_id
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.logical_routers.routing.route_maps
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_logical_router_id_route_map {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $id,
        $logical_router_id,
        $Returns,
        $route_map
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        id = $id
        logical_router_id = $logical_router_id
        Returns = $Returns
        route_map = $route_map
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.logical_routers.routing.route_maps
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_upgrade_bundle_fetch_request {
    Param
    (
        $url
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        url = $url
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.upgrade.bundles
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_migration_unit_group {
    Param
    (
        $description,
        $display_name,
        $enabled,
        $extended_configuration,
        $id,
        $migration_units,
        $parallel,
        $resource_type,
        $revision,
        $self,
        $tags,
        $type
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        description = $description
        display_name = $display_name
        enabled = $enabled
        extended_configuration = $extended_configuration
        id = $id
        migration_units = $migration_units
        parallel = $parallel
        resource_type = $resource_type
        revision = $revision
        self = $self
        tags = $tags
        type = $type
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.migration.migration_unit_groups
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_migration_unit_group {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $group_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        group_id = $group_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.migration.migration_unit_groups
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_migration_unit_group {
    Param
    (
        $component_type,
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by,
        $summary,
        $sync
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        component_type = $component_type
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        summary = $summary
        sync = $sync
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.migration.migration_unit_groups
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_migration_unit_group {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $group_id,
        $migration_unit_group,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        group_id = $group_id
        migration_unit_group = $migration_unit_group
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.migration.migration_unit_groups
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_switching_to_vmc_mode_parameters {
    Param
    (
        $auth_code,
        $base_url,
        $basic_auth_whitelist_ips,
        $csp_client_credential,
        $csp_client_incoming_credentials,
        $csp_org_uri,
        $csp_time_drift,
        $default_org_id,
        $ea_org,
        $gss_org,
        $mode_change_only,
        $mode_id,
        $proxy_host,
        $proxy_port,
        $resource_type,
        $sddc_id,
        $service_definition_id,
        $sre_org
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        auth_code = $auth_code
        base_url = $base_url
        basic_auth_whitelist_ips = $basic_auth_whitelist_ips
        csp_client_credential = $csp_client_credential
        csp_client_incoming_credentials = $csp_client_incoming_credentials
        csp_org_uri = $csp_org_uri
        csp_time_drift = $csp_time_drift
        default_org_id = $default_org_id
        ea_org = $ea_org
        gss_org = $gss_org
        mode_change_only = $mode_change_only
        mode_id = $mode_id
        proxy_host = $proxy_host
        proxy_port = $proxy_port
        resource_type = $resource_type
        sddc_id = $sddc_id
        service_definition_id = $service_definition_id
        sre_org = $sre_org
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.configs.node.mode
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_instance_endpoint_service_id_service_instance_id {
    Param
    (
        $auth_code,
        $base_url,
        $basic_auth_whitelist_ips,
        $csp_client_credential,
        $csp_client_incoming_credentials,
        $csp_org_uri,
        $csp_time_drift,
        $default_org_id,
        $ea_org,
        $gss_org,
        $mode_change_only,
        $mode_id,
        $proxy_host,
        $proxy_port,
        $resource_type,
        $sddc_id,
        $service_definition_id,
        $sre_org
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        auth_code = $auth_code
        base_url = $base_url
        basic_auth_whitelist_ips = $basic_auth_whitelist_ips
        csp_client_credential = $csp_client_credential
        csp_client_incoming_credentials = $csp_client_incoming_credentials
        csp_org_uri = $csp_org_uri
        csp_time_drift = $csp_time_drift
        default_org_id = $default_org_id
        ea_org = $ea_org
        gss_org = $gss_org
        mode_change_only = $mode_change_only
        mode_id = $mode_id
        proxy_host = $proxy_host
        proxy_port = $proxy_port
        resource_type = $resource_type
        sddc_id = $sddc_id
        service_definition_id = $service_definition_id
        sre_org = $sre_org
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.services.service_instances.instance_endpoints
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_instance_endpoint_service_id_service_instance_id {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $instance_endpoint_id,
        $Returns,
        $service_id,
        $service_instance_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        instance_endpoint_id = $instance_endpoint_id
        Returns = $Returns
        service_id = $service_id
        service_instance_id = $service_instance_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.services.service_instances.instance_endpoints
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_instance_endpoint_service_id_service_instance_id {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $service_id,
        $service_instance_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        service_id = $service_id
        service_instance_id = $service_instance_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.services.service_instances.instance_endpoints
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_failure_domain {
    Param
    (
        $description,
        $display_name,
        $id,
        $preferred_active_edge_services,
        $resource_type,
        $revision,
        $self,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        description = $description
        display_name = $display_name
        id = $id
        preferred_active_edge_services = $preferred_active_edge_services
        resource_type = $resource_type
        revision = $revision
        self = $self
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.failure_domains
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_failure_domain {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $failure_domain_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        failure_domain_id = $failure_domain_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.failure_domains
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_failure_domain {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.failure_domains
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_failure_domain {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $failure_domain,
        $failure_domain_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        failure_domain = $failure_domain
        failure_domain_id = $failure_domain_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.failure_domains
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_lb_monitor {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $failure_domain,
        $failure_domain_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        failure_domain = $failure_domain
        failure_domain_id = $failure_domain_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.loadbalancer.monitors
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_lb_monitor {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $monitor_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        monitor_id = $monitor_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.loadbalancer.monitors
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_lb_monitor {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by,
        $type
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        type = $type
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.loadbalancer.monitors
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_lb_monitor {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $lb_monitor,
        $monitor_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        lb_monitor = $lb_monitor
        monitor_id = $monitor_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.loadbalancer.monitors
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_action_add_cluster_node_spec {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $lb_monitor,
        $monitor_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        lb_monitor = $lb_monitor
        monitor_id = $monitor_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.cluster.nodes
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_action_add_cluster_node_spec {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $node_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        node_id = $node_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.cluster.nodes
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_action_add_cluster_node_spec {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.cluster.nodes
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_lb_pool {
    Param
    (
        $active_monitor_ids,
        $algorithm,
        $description,
        $display_name,
        $id,
        $members,
        $member_group,
        $min_active_members,
        $passive_monitor_id,
        $resource_type,
        $revision,
        $self,
        $snat_translation,
        $tags,
        $tcp_multiplexing_enabled,
        $tcp_multiplexing_number
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        active_monitor_ids = $active_monitor_ids
        algorithm = $algorithm
        description = $description
        display_name = $display_name
        id = $id
        members = $members
        member_group = $member_group
        min_active_members = $min_active_members
        passive_monitor_id = $passive_monitor_id
        resource_type = $resource_type
        revision = $revision
        self = $self
        snat_translation = $snat_translation
        tags = $tags
        tcp_multiplexing_enabled = $tcp_multiplexing_enabled
        tcp_multiplexing_number = $tcp_multiplexing_number
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.loadbalancer.pools
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_lb_pool {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $pool_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        pool_id = $pool_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.loadbalancer.pools
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_lb_pool {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.loadbalancer.pools
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_lb_pool {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $lb_pool,
        $pool_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        lb_pool = $lb_pool
        pool_id = $pool_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.loadbalancer.pools
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_compute_manager {
    Param
    (
        $credential,
        $description,
        $display_name,
        $id,
        $origin_type,
        $resource_type,
        $revision,
        $self,
        $server,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        credential = $credential
        description = $description
        display_name = $display_name
        id = $id
        origin_type = $origin_type
        resource_type = $resource_type
        revision = $revision
        self = $self
        server = $server
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.fabric.compute_managers
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_compute_manager {
    Param
    (
        $compute_manager_id,
        $Definition,
        $Documentation,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        compute_manager_id = $compute_manager_id
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.fabric.compute_managers
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_compute_manager {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $origin_type,
        $page_size,
        $Returns,
        $server,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        origin_type = $origin_type
        page_size = $page_size
        Returns = $Returns
        server = $server
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.fabric.compute_managers
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_compute_manager {
    Param
    (
        $compute_manager,
        $compute_manager_id,
        $Definition,
        $Documentation,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        compute_manager = $compute_manager
        compute_manager_id = $compute_manager_id
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.fabric.compute_managers
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_bridge_cluster {
    Param
    (
        $bridge_nodes,
        $cluster_profile_bindings,
        $description,
        $display_name,
        $id,
        $resource_type,
        $revision,
        $self,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        bridge_nodes = $bridge_nodes
        cluster_profile_bindings = $cluster_profile_bindings
        description = $description
        display_name = $display_name
        id = $id
        resource_type = $resource_type
        revision = $revision
        self = $self
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.bridge_clusters
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_bridge_cluster {
    Param
    (
        $bridgecluster_id,
        $Definition,
        $Documentation,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        bridgecluster_id = $bridgecluster_id
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.bridge_clusters
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_bridge_cluster {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.bridge_clusters
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_bridge_cluster {
    Param
    (
        $bridgecluster_id,
        $bridge_cluster,
        $Definition,
        $Documentation,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        bridgecluster_id = $bridgecluster_id
        bridge_cluster = $bridge_cluster
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.bridge_clusters
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_service_attachment {
    Param
    (
        $attachment_status,
        $deployed_to,
        $description,
        $display_name,
        $id,
        $local_ips,
        $logical_switch,
        $resource_type,
        $revision,
        $self,
        $service_port,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        attachment_status = $attachment_status
        deployed_to = $deployed_to
        description = $description
        display_name = $display_name
        id = $id
        local_ips = $local_ips
        logical_switch = $logical_switch
        resource_type = $resource_type
        revision = $revision
        self = $self
        service_port = $service_port
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.service_attachments
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_service_attachment {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $service_attachment_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        service_attachment_id = $service_attachment_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.service_attachments
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_service_attachment {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.service_attachments
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_session_id_session_reclassification_parameter {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.app_discovery.sessions.re_classify
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_service_definition {
    Param
    (
        $attachment_point,
        $description,
        $display_name,
        $functionalities,
        $id,
        $implementations,
        $on_failure_policy,
        $resource_type,
        $revision,
        $self,
        $service_capability,
        $service_deployment_spec,
        $tags,
        $transports,
        $vendor_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        attachment_point = $attachment_point
        description = $description
        display_name = $display_name
        functionalities = $functionalities
        id = $id
        implementations = $implementations
        on_failure_policy = $on_failure_policy
        resource_type = $resource_type
        revision = $revision
        self = $self
        service_capability = $service_capability
        service_deployment_spec = $service_deployment_spec
        tags = $tags
        transports = $transports
        vendor_id = $vendor_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.services
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_service_definition {
    Param
    (
        $cascade,
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $service_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cascade = $cascade
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        service_id = $service_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.services
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_service_definition {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.services
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_service_definition {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $service_definition,
        $service_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        service_definition = $service_definition
        service_id = $service_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.services
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_directory_domain {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $service_definition,
        $service_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        service_definition = $service_definition
        service_id = $service_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.directory.domains
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_directory_domain {
    Param
    (
        $Definition,
        $Documentation,
        $domain_id,
        $Errors,
        $force,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        domain_id = $domain_id
        Errors = $Errors
        force = $force
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.directory.domains
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_directory_domain {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.directory.domains
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_directory_domain {
    Param
    (
        $Definition,
        $directory_domain,
        $Documentation,
        $domain_id,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        directory_domain = $directory_domain
        Documentation = $Documentation
        domain_id = $domain_id
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.directory.domains
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_action_cc_ext_id {
    Param
    (
        $Definition,
        $directory_domain,
        $Documentation,
        $domain_id,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        directory_domain = $directory_domain
        Documentation = $Documentation
        domain_id = $domain_id
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.fabric.compute_collections
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_action_cc_ext_id {
    Param
    (
        $cm_local_id,
        $cursor,
        $Definition,
        $discovered_node_id,
        $display_name,
        $Documentation,
        $Errors,
        $external_id,
        $included_fields,
        $node_id,
        $origin_id,
        $origin_type,
        $owner_id,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cm_local_id = $cm_local_id
        cursor = $cursor
        Definition = $Definition
        discovered_node_id = $discovered_node_id
        display_name = $display_name
        Documentation = $Documentation
        Errors = $Errors
        external_id = $external_id
        included_fields = $included_fields
        node_id = $node_id
        origin_id = $origin_id
        origin_type = $origin_type
        owner_id = $owner_id
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.fabric.compute_collections
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_logical_switch {
    Param
    (
        $address_bindings,
        $admin_state,
        $description,
        $display_name,
        $extra_configs,
        $hybrid,
        $id,
        $ip_pool_id,
        $mac_pool_id,
        $replication_mode,
        $resource_type,
        $revision,
        $self,
        $switching_profile_ids,
        $switch_type,
        $tags,
        $transport_zone_id,
        $uplink_teaming_policy_name,
        $vlan,
        $vlan_trunk_spec,
        $vni
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        address_bindings = $address_bindings
        admin_state = $admin_state
        description = $description
        display_name = $display_name
        extra_configs = $extra_configs
        hybrid = $hybrid
        id = $id
        ip_pool_id = $ip_pool_id
        mac_pool_id = $mac_pool_id
        replication_mode = $replication_mode
        resource_type = $resource_type
        revision = $revision
        self = $self
        switching_profile_ids = $switching_profile_ids
        switch_type = $switch_type
        tags = $tags
        transport_zone_id = $transport_zone_id
        uplink_teaming_policy_name = $uplink_teaming_policy_name
        vlan = $vlan
        vlan_trunk_spec = $vlan_trunk_spec
        vni = $vni
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.logical_switches
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_logical_switch {
    Param
    (
        $cascade,
        $Definition,
        $detach,
        $Documentation,
        $Errors,
        $lswitch_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cascade = $cascade
        Definition = $Definition
        detach = $detach
        Documentation = $Documentation
        Errors = $Errors
        lswitch_id = $lswitch_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.logical_switches
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_logical_switch {
    Param
    (
        $cursor,
        $Definition,
        $diagnostic,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by,
        $switching_profile_id,
        $transport_type,
        $transport_zone_id,
        $uplink_teaming_policy_name,
        $vlan,
        $vni
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        diagnostic = $diagnostic
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        switching_profile_id = $switching_profile_id
        transport_type = $transport_type
        transport_zone_id = $transport_zone_id
        uplink_teaming_policy_name = $uplink_teaming_policy_name
        vlan = $vlan
        vni = $vni
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.logical_switches
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_logical_switch {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $logical_switch,
        $lswitch_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        logical_switch = $logical_switch
        lswitch_id = $lswitch_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.logical_switches
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_lb_client_ssl_profile {
    Param
    (
        $ciphers,
        $cipher_group_label,
        $description,
        $display_name,
        $id,
        $prefer_server_ciphers,
        $protocols,
        $resource_type,
        $revision,
        $self,
        $session_cache_enabled,
        $session_cache_timeout,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        ciphers = $ciphers
        cipher_group_label = $cipher_group_label
        description = $description
        display_name = $display_name
        id = $id
        prefer_server_ciphers = $prefer_server_ciphers
        protocols = $protocols
        resource_type = $resource_type
        revision = $revision
        self = $self
        session_cache_enabled = $session_cache_enabled
        session_cache_timeout = $session_cache_timeout
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.loadbalancer.client_ssl_profiles
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_lb_client_ssl_profile {
    Param
    (
        $client_ssl_profile_id,
        $Definition,
        $Documentation,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        client_ssl_profile_id = $client_ssl_profile_id
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.loadbalancer.client_ssl_profiles
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_lb_client_ssl_profile {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.loadbalancer.client_ssl_profiles
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_lb_client_ssl_profile {
    Param
    (
        $client_ssl_profile_id,
        $Definition,
        $Documentation,
        $Errors,
        $lb_client_ssl_profile,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        client_ssl_profile_id = $client_ssl_profile_id
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        lb_client_ssl_profile = $lb_client_ssl_profile
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.loadbalancer.client_ssl_profiles
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_compute_collection_fabric_template {
    Param
    (
        $auto_install_nsx,
        $compute_collection_id,
        $description,
        $display_name,
        $id,
        $resource_type,
        $revision,
        $self,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        auto_install_nsx = $auto_install_nsx
        compute_collection_id = $compute_collection_id
        description = $description
        display_name = $display_name
        id = $id
        resource_type = $resource_type
        revision = $revision
        self = $self
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.fabric.compute_collection_fabric_templates
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_compute_collection_fabric_template {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $fabric_template_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        fabric_template_id = $fabric_template_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.fabric.compute_collection_fabric_templates
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_compute_collection_fabric_template {
    Param
    (
        $compute_collection_id,
        $Definition,
        $Documentation,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        compute_collection_id = $compute_collection_id
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.fabric.compute_collection_fabric_templates
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_compute_collection_fabric_template {
    Param
    (
        $compute_collection_fabric_template,
        $Definition,
        $Documentation,
        $Errors,
        $fabric_template_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        compute_collection_fabric_template = $compute_collection_fabric_template
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        fabric_template_id = $fabric_template_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.fabric.compute_collection_fabric_templates
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_ns_service {
    Param
    (
        $description,
        $display_name,
        $id,
        $nsservice_element,
        $resource_type,
        $revision,
        $self,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        description = $description
        display_name = $display_name
        id = $id
        nsservice_element = $nsservice_element
        resource_type = $resource_type
        revision = $revision
        self = $self
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ns_services
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_ns_service {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $force,
        $ns_service_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        force = $force
        ns_service_id = $ns_service_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ns_services
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_ns_service {
    Param
    (
        $cursor,
        $default_service,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        default_service = $default_service
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ns_services
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_ns_service {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $ns_service,
        $ns_service_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        ns_service = $ns_service
        ns_service_id = $ns_service_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ns_services
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_ip_block_subnet {
    Param
    (
        $block_id,
        $description,
        $display_name,
        $id,
        $resource_type,
        $revision,
        $self,
        $size,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        block_id = $block_id
        description = $description
        display_name = $display_name
        id = $id
        resource_type = $resource_type
        revision = $revision
        self = $self
        size = $size
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.pools.ip_subnets
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_ip_block_subnet {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $subnet_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        subnet_id = $subnet_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.pools.ip_subnets
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_ip_block_subnet {
    Param
    (
        $block_id,
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        block_id = $block_id
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.pools.ip_subnets
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_view {
    Param
    (
        $description,
        $display_name,
        $exclude_roles,
        $id,
        $include_roles,
        $resource_type,
        $revision,
        $self,
        $shared,
        $tags,
        $weight,
        $widgets
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        description = $description
        display_name = $display_name
        exclude_roles = $exclude_roles
        id = $id
        include_roles = $include_roles
        resource_type = $resource_type
        revision = $revision
        self = $self
        shared = $shared
        tags = $tags
        weight = $weight
        widgets = $widgets
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ui_views
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_view {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $view_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        view_id = $view_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ui_views
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_view {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $view,
        $view_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        view = $view
        view_id = $view_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ui_views
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_edge_cluster {
    Param
    (
        $allocation_rules,
        $cluster_profile_bindings,
        $description,
        $display_name,
        $id,
        $members,
        $resource_type,
        $revision,
        $self,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        allocation_rules = $allocation_rules
        cluster_profile_bindings = $cluster_profile_bindings
        description = $description
        display_name = $display_name
        id = $id
        members = $members
        resource_type = $resource_type
        revision = $revision
        self = $self
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.edge_clusters
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_edge_cluster {
    Param
    (
        $Definition,
        $Documentation,
        $edge_cluster_id,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        edge_cluster_id = $edge_cluster_id
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.edge_clusters
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_edge_cluster {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.edge_clusters
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_edge_cluster {
    Param
    (
        $Definition,
        $Documentation,
        $edge_cluster,
        $edge_cluster_id,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        edge_cluster = $edge_cluster
        edge_cluster_id = $edge_cluster_id
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.edge_clusters
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_transport_zone {
    Param
    (
        $description,
        $display_name,
        $host_switch_mode,
        $host_switch_name,
        $id,
        $is_default,
        $nested_nsx,
        $resource_type,
        $revision,
        $self,
        $tags,
        $transport_type,
        $transport_zone_profile_ids,
        $uplink_teaming_policy_names
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        description = $description
        display_name = $display_name
        host_switch_mode = $host_switch_mode
        host_switch_name = $host_switch_name
        id = $id
        is_default = $is_default
        nested_nsx = $nested_nsx
        resource_type = $resource_type
        revision = $revision
        self = $self
        tags = $tags
        transport_type = $transport_type
        transport_zone_profile_ids = $transport_zone_profile_ids
        uplink_teaming_policy_names = $uplink_teaming_policy_names
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.transport_zones
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_transport_zone {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $zone_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        zone_id = $zone_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.transport_zones
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_transport_zone {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $is_default,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by,
        $transport_type,
        $uplink_teaming_policy_name
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        is_default = $is_default
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        transport_type = $transport_type
        uplink_teaming_policy_name = $uplink_teaming_policy_name
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.transport_zones
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_transport_zone {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $transport_zone,
        $zone_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        transport_zone = $transport_zone
        zone_id = $zone_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.transport_zones
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_ipfix_config {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $transport_zone,
        $zone_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        transport_zone = $transport_zone
        zone_id = $zone_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ipfix.configs
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_ipfix_config {
    Param
    (
        $config_id,
        $Definition,
        $Documentation,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        config_id = $config_id
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ipfix.configs
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_ipfix_config {
    Param
    (
        $applied_to,
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $ipfix_config_type,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        applied_to = $applied_to
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        ipfix_config_type = $ipfix_config_type
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ipfix.configs
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_ipfix_config {
    Param
    (
        $config_id,
        $Definition,
        $Documentation,
        $Errors,
        $ipfix_config,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        config_id = $config_id
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        ipfix_config = $ipfix_config
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.ipfix.configs
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_lb_persistence_profile {
    Param
    (
        $config_id,
        $Definition,
        $Documentation,
        $Errors,
        $ipfix_config,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        config_id = $config_id
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        ipfix_config = $ipfix_config
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.loadbalancer.persistence_profiles
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_lb_persistence_profile {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $persistence_profile_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        persistence_profile_id = $persistence_profile_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.loadbalancer.persistence_profiles
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_lb_persistence_profile {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by,
        $type
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        type = $type
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.loadbalancer.persistence_profiles
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_lb_persistence_profile {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $lb_persistence_profile,
        $persistence_profile_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        lb_persistence_profile = $lb_persistence_profile
        persistence_profile_id = $persistence_profile_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.loadbalancer.persistence_profiles
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_start_app_discovery_session_parameters {
    Param
    (
        $app_profile_ids,
        $ns_group_ids
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        app_profile_ids = $app_profile_ids
        ns_group_ids = $ns_group_ids
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.app_discovery.sessions
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_start_app_discovery_session_parameters {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $session_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        session_id = $session_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.app_discovery.sessions
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_start_app_discovery_session_parameters {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $group_id,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by,
        $status
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        group_id = $group_id
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        status = $status
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.app_discovery.sessions
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_service_id_vendor_template {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $group_id,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by,
        $status
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        group_id = $group_id
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        status = $status
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.services.vendor_templates
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_service_id_vendor_template {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $service_id,
        $vendor_template_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        service_id = $service_id
        vendor_template_id = $vendor_template_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.services.vendor_templates
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_service_id_vendor_template {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $service_id,
        $vendor_template_name
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        service_id = $service_id
        vendor_template_name = $vendor_template_name
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.services.vendor_templates
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_crl_distribution_point {
    Param
    (
        $description,
        $display_name,
        $id,
        $resource_type,
        $revision,
        $self,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        description = $description
        display_name = $display_name
        id = $id
        resource_type = $resource_type
        revision = $revision
        self = $self
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.trust_management.crl_distribution_points
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_crl_distribution_point {
    Param
    (
        $crl_distribution_point_id,
        $Definition,
        $Documentation,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        crl_distribution_point_id = $crl_distribution_point_id
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.trust_management.crl_distribution_points
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_crl_distribution_point {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.trust_management.crl_distribution_points
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_crl_distribution_point {
    Param
    (
        $crl_distribution_point,
        $crl_distribution_point_id,
        $Definition,
        $Documentation,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        crl_distribution_point = $crl_distribution_point
        crl_distribution_point_id = $crl_distribution_point_id
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.trust_management.crl_distribution_points
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_service_id_solution_config {
    Param
    (
        $crl_distribution_point,
        $crl_distribution_point_id,
        $Definition,
        $Documentation,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        crl_distribution_point = $crl_distribution_point
        crl_distribution_point_id = $crl_distribution_point_id
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.services.solution_configs
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_service_id_solution_config {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $service_id,
        $solution_config_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        service_id = $service_id
        solution_config_id = $solution_config_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.services.solution_configs
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_service_id_solution_config {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $service_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        service_id = $service_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.services.solution_configs
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_service_id_solution_config {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $service_id,
        $solution_config,
        $solution_config_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        service_id = $service_id
        solution_config = $solution_config
        solution_config_id = $solution_config_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.services.solution_configs
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_id_operation_section_id_service_insertion_rule {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $service_id,
        $solution_config,
        $solution_config_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        service_id = $service_id
        solution_config = $solution_config
        solution_config_id = $solution_config_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.sections.rules
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_id_operation_section_id_service_insertion_rule {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $rule_id,
        $section_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        rule_id = $rule_id
        section_id = $section_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.sections.rules
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_id_operation_section_id_service_insertion_rule {
    Param
    (
        $applied_tos,
        $cursor,
        $Definition,
        $destinations,
        $Documentation,
        $Errors,
        $filter_type,
        $included_fields,
        $page_size,
        $Returns,
        $section_id,
        $services,
        $sort_ascending,
        $sort_by,
        $sources
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        applied_tos = $applied_tos
        cursor = $cursor
        Definition = $Definition
        destinations = $destinations
        Documentation = $Documentation
        Errors = $Errors
        filter_type = $filter_type
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        section_id = $section_id
        services = $services
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        sources = $sources
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.sections.rules
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_id_operation_section_id_service_insertion_rule {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $rule_id,
        $section_id,
        $service_insertion_rule
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        rule_id = $rule_id
        section_id = $section_id
        service_insertion_rule = $service_insertion_rule
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.sections.rules
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_ip_sec_VPNIKE_profile {
    Param
    (
        $description,
        $dh_groups,
        $digest_algorithms,
        $display_name,
        $encryption_algorithms,
        $id,
        $ike_version,
        $resource_type,
        $revision,
        $sa_life_time,
        $self,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        description = $description
        dh_groups = $dh_groups
        digest_algorithms = $digest_algorithms
        display_name = $display_name
        encryption_algorithms = $encryption_algorithms
        id = $id
        ike_version = $ike_version
        resource_type = $resource_type
        revision = $revision
        sa_life_time = $sa_life_time
        self = $self
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.vpn.ipsec.ike_profiles
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_ip_sec_VPNIKE_profile {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $force,
        $ipsec_vpn_ike_profile_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        force = $force
        ipsec_vpn_ike_profile_id = $ipsec_vpn_ike_profile_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.vpn.ipsec.ike_profiles
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_ip_sec_VPNIKE_profile {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.vpn.ipsec.ike_profiles
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_ip_sec_VPNIKE_profile {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $ipsec_vpn_ike_profile_id,
        $ip_sec_VPNIKE_profile,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        ipsec_vpn_ike_profile_id = $ipsec_vpn_ike_profile_id
        ip_sec_VPNIKE_profile = $ip_sec_VPNIKE_profile
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.vpn.ipsec.ike_profiles
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_base_firewall_profile {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $ipsec_vpn_ike_profile_id,
        $ip_sec_VPNIKE_profile,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        ipsec_vpn_ike_profile_id = $ipsec_vpn_ike_profile_id
        ip_sec_VPNIKE_profile = $ip_sec_VPNIKE_profile
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.firewall.profiles
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_base_firewall_profile {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $profile_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        profile_id = $profile_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.firewall.profiles
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_base_firewall_profile {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $resource_type,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        resource_type = $resource_type
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.firewall.profiles
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_base_firewall_profile {
    Param
    (
        $base_firewall_profile,
        $Definition,
        $Documentation,
        $Errors,
        $profile_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        base_firewall_profile = $base_firewall_profile
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        profile_id = $profile_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.firewall.profiles
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_transport_zone_profile {
    Param
    (
        $base_firewall_profile,
        $Definition,
        $Documentation,
        $Errors,
        $profile_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        base_firewall_profile = $base_firewall_profile
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        profile_id = $profile_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.transportzone_profiles
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_transport_zone_profile {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $transportzone_profile_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        transportzone_profile_id = $transportzone_profile_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.transportzone_profiles
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_transport_zone_profile {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $include_system_owned,
        $page_size,
        $resource_type,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        include_system_owned = $include_system_owned
        page_size = $page_size
        resource_type = $resource_type
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.transportzone_profiles
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_transport_zone_profile {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $transportzone_profile_id,
        $transport_zone_profile
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        transportzone_profile_id = $transportzone_profile_id
        transport_zone_profile = $transport_zone_profile
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.transportzone_profiles
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_transport_node_collection {
    Param
    (
        $compute_collection_id,
        $description,
        $display_name,
        $id,
        $resource_type,
        $revision,
        $self,
        $tags,
        $transport_node_profile_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        compute_collection_id = $compute_collection_id
        description = $description
        display_name = $display_name
        id = $id
        resource_type = $resource_type
        revision = $revision
        self = $self
        tags = $tags
        transport_node_profile_id = $transport_node_profile_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.transport_node_collections
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_transport_node_collection {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $transport_node_collection_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        transport_node_collection_id = $transport_node_collection_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.transport_node_collections
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_transport_node_collection {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.transport_node_collections
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_transport_node_collection {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $transport_node_collection,
        $transport_node_collection_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        transport_node_collection = $transport_node_collection
        transport_node_collection_id = $transport_node_collection_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.transport_node_collections
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_cluster_profile {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $transport_node_collection,
        $transport_node_collection_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        transport_node_collection = $transport_node_collection
        transport_node_collection_id = $transport_node_collection_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.cluster_profiles
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_cluster_profile {
    Param
    (
        $cluster_profile_id,
        $Definition,
        $Documentation,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cluster_profile_id = $cluster_profile_id
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.cluster_profiles
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_cluster_profile {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $include_system_owned,
        $page_size,
        $resource_type,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        include_system_owned = $include_system_owned
        page_size = $page_size
        resource_type = $resource_type
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.cluster_profiles
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_cluster_profile {
    Param
    (
        $cluster_profile,
        $cluster_profile_id,
        $Definition,
        $Documentation,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cluster_profile = $cluster_profile
        cluster_profile_id = $cluster_profile_id
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.cluster_profiles
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_logical_router_id_nat_rule {
    Param
    (
        $cluster_profile,
        $cluster_profile_id,
        $Definition,
        $Documentation,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cluster_profile = $cluster_profile
        cluster_profile_id = $cluster_profile_id
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.logical_routers.nat.rules
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_logical_router_id_nat_rule {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $logical_router_id,
        $Returns,
        $rule_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        logical_router_id = $logical_router_id
        Returns = $Returns
        rule_id = $rule_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.logical_routers.nat.rules
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_logical_router_id_nat_rule {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $logical_router_id,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        logical_router_id = $logical_router_id
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.logical_routers.nat.rules
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_logical_router_id_nat_rule {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $logical_router_id,
        $nat_rule,
        $Returns,
        $rule_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        logical_router_id = $logical_router_id
        nat_rule = $nat_rule
        Returns = $Returns
        rule_id = $rule_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.logical_routers.nat.rules
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_mac_set_id_m_AC_address_element {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $logical_router_id,
        $nat_rule,
        $Returns,
        $rule_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        logical_router_id = $logical_router_id
        nat_rule = $nat_rule
        Returns = $Returns
        rule_id = $rule_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.mac_sets.members
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_mac_set_id_m_AC_address_element {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $mac_address,
        $mac_set_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        mac_address = $mac_address
        mac_set_id = $mac_set_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.mac_sets.members
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_mac_set_id_m_AC_address_element {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $mac_set_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        mac_set_id = $mac_set_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.mac_sets.members
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_ip_sec_VPN_session {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $mac_set_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        mac_set_id = $mac_set_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.vpn.ipsec.sessions
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_ip_sec_VPN_session {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $force,
        $ipsec_vpn_session_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        force = $force
        ipsec_vpn_session_id = $ipsec_vpn_session_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.vpn.ipsec.sessions
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_ip_sec_VPN_session {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $ipsec_vpn_service_id,
        $logical_router_id,
        $page_size,
        $Returns,
        $session_type,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        ipsec_vpn_service_id = $ipsec_vpn_service_id
        logical_router_id = $logical_router_id
        page_size = $page_size
        Returns = $Returns
        session_type = $session_type
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.vpn.ipsec.sessions
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_ip_sec_VPN_session {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $ipsec_vpn_session_id,
        $ip_sec_VPN_session,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        ipsec_vpn_session_id = $ipsec_vpn_session_id
        ip_sec_VPN_session = $ip_sec_VPN_session
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.vpn.ipsec.sessions
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_ip_block {
    Param
    (
        $cidr,
        $description,
        $display_name,
        $id,
        $resource_type,
        $revision,
        $self,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cidr = $cidr
        description = $description
        display_name = $display_name
        id = $id
        resource_type = $resource_type
        revision = $revision
        self = $self
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.pools.ip_blocks
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_ip_block {
    Param
    (
        $block_id,
        $Definition,
        $Documentation,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        block_id = $block_id
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.pools.ip_blocks
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_ip_block {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.pools.ip_blocks
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_ip_block {
    Param
    (
        $block_id,
        $Definition,
        $Documentation,
        $Errors,
        $ip_block,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        block_id = $block_id
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        ip_block = $ip_block
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.pools.ip_blocks
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_action_directory_ldap_server {
    Param
    (
        $block_id,
        $Definition,
        $Documentation,
        $Errors,
        $ip_block,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        block_id = $block_id
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        ip_block = $ip_block
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.directory.ldap_server
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_atomic_batch_request {
    Param
    (
        $block_id,
        $Definition,
        $Documentation,
        $Errors,
        $ip_block,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        block_id = $block_id
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        ip_block = $ip_block
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.batch
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_upgrade_unit_group {
    Param
    (
        $description,
        $display_name,
        $enabled,
        $extended_configuration,
        $id,
        $parallel,
        $resource_type,
        $revision,
        $self,
        $tags,
        $type,
        $upgrade_units
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        description = $description
        display_name = $display_name
        enabled = $enabled
        extended_configuration = $extended_configuration
        id = $id
        parallel = $parallel
        resource_type = $resource_type
        revision = $revision
        self = $self
        tags = $tags
        type = $type
        upgrade_units = $upgrade_units
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.upgrade.upgrade_unit_groups
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_upgrade_unit_group {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $group_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        group_id = $group_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.upgrade.upgrade_unit_groups
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_upgrade_unit_group {
    Param
    (
        $component_type,
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by,
        $summary,
        $sync
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        component_type = $component_type
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        summary = $summary
        sync = $sync
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.upgrade.upgrade_unit_groups
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_upgrade_unit_group {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $group_id,
        $Returns,
        $upgrade_unit_group
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        group_id = $group_id
        Returns = $Returns
        upgrade_unit_group = $upgrade_unit_group
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.upgrade.upgrade_unit_groups
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_ip_sec_VPN_service {
    Param
    (
        $bypass_rules,
        $description,
        $display_name,
        $enabled,
        $id,
        $ike_log_level,
        $logical_router_id,
        $resource_type,
        $revision,
        $self,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        bypass_rules = $bypass_rules
        description = $description
        display_name = $display_name
        enabled = $enabled
        id = $id
        ike_log_level = $ike_log_level
        logical_router_id = $logical_router_id
        resource_type = $resource_type
        revision = $revision
        self = $self
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.vpn.ipsec.services
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_ip_sec_VPN_service {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $force,
        $ipsec_vpn_service_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        force = $force
        ipsec_vpn_service_id = $ipsec_vpn_service_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.vpn.ipsec.services
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_ip_sec_VPN_service {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.vpn.ipsec.services
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_ip_sec_VPN_service {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $ipsec_vpn_service_id,
        $ip_sec_VPN_service,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        ipsec_vpn_service_id = $ipsec_vpn_service_id
        ip_sec_VPN_service = $ip_sec_VPN_service
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.vpn.ipsec.services
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_network_migration_spec {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $ipsec_vpn_service_id,
        $ip_sec_VPN_service,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        ipsec_vpn_service_id = $ipsec_vpn_service_id
        ip_sec_VPN_service = $ip_sec_VPN_service
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.network_migration_specs
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_network_migration_spec {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $template_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        template_id = $template_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.network_migration_specs
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_network_migration_spec {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $include_system_owned,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by,
        $type
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        include_system_owned = $include_system_owned
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        type = $type
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.network_migration_specs
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_network_migration_spec {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $network_migration_spec,
        $Returns,
        $template_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        network_migration_spec = $network_migration_spec
        Returns = $Returns
        template_id = $template_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.network_migration_specs
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_target_node_id_target_uri {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.cluster
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_target_node_id_target_uri {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $target_node_id,
        $target_uri
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        target_node_id = $target_node_id
        target_uri = $target_uri
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.cluster
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_target_node_id_target_uri {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $target_node_id,
        $target_uri
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        target_node_id = $target_node_id
        target_uri = $target_uri
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.cluster
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_lb_server_ssl_profile {
    Param
    (
        $ciphers,
        $cipher_group_label,
        $description,
        $display_name,
        $id,
        $protocols,
        $resource_type,
        $revision,
        $self,
        $session_cache_enabled,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        ciphers = $ciphers
        cipher_group_label = $cipher_group_label
        description = $description
        display_name = $display_name
        id = $id
        protocols = $protocols
        resource_type = $resource_type
        revision = $revision
        self = $self
        session_cache_enabled = $session_cache_enabled
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.loadbalancer.server_ssl_profiles
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_lb_server_ssl_profile {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $server_ssl_profile_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        server_ssl_profile_id = $server_ssl_profile_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.loadbalancer.server_ssl_profiles
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_lb_server_ssl_profile {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.loadbalancer.server_ssl_profiles
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_lb_server_ssl_profile {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $lb_server_ssl_profile,
        $Returns,
        $server_ssl_profile_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        lb_server_ssl_profile = $lb_server_ssl_profile
        Returns = $Returns
        server_ssl_profile_id = $server_ssl_profile_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.loadbalancer.server_ssl_profiles
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_ip_sec_VPN_local_endpoint {
    Param
    (
        $certificate_id,
        $description,
        $display_name,
        $id,
        $ipsec_vpn_service_id,
        $local_address,
        $local_id,
        $resource_type,
        $revision,
        $self,
        $tags,
        $trust_ca_ids,
        $trust_crl_ids
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        certificate_id = $certificate_id
        description = $description
        display_name = $display_name
        id = $id
        ipsec_vpn_service_id = $ipsec_vpn_service_id
        local_address = $local_address
        local_id = $local_id
        resource_type = $resource_type
        revision = $revision
        self = $self
        tags = $tags
        trust_ca_ids = $trust_ca_ids
        trust_crl_ids = $trust_crl_ids
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.vpn.ipsec.local_endpoints
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_ip_sec_VPN_local_endpoint {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $force,
        $ipsec_vpn_local_endpoint_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        force = $force
        ipsec_vpn_local_endpoint_id = $ipsec_vpn_local_endpoint_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.vpn.ipsec.local_endpoints
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_ip_sec_VPN_local_endpoint {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $ipsec_vpn_service_id,
        $logical_router_id,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        ipsec_vpn_service_id = $ipsec_vpn_service_id
        logical_router_id = $logical_router_id
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.vpn.ipsec.local_endpoints
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_ip_sec_VPN_local_endpoint {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $ipsec_vpn_local_endpoint_id,
        $ip_sec_VPN_local_endpoint,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        ipsec_vpn_local_endpoint_id = $ipsec_vpn_local_endpoint_id
        ip_sec_VPN_local_endpoint = $ip_sec_VPN_local_endpoint
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.vpn.ipsec.local_endpoints
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_dhcp_ip_pool_server_id {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $ipsec_vpn_local_endpoint_id,
        $ip_sec_VPN_local_endpoint,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        ipsec_vpn_local_endpoint_id = $ipsec_vpn_local_endpoint_id
        ip_sec_VPN_local_endpoint = $ip_sec_VPN_local_endpoint
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.dhcp.servers.ip_pools
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_dhcp_ip_pool_server_id {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $pool_id,
        $Returns,
        $server_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        pool_id = $pool_id
        Returns = $Returns
        server_id = $server_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.dhcp.servers.ip_pools
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_dhcp_ip_pool_server_id {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $server_id,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        server_id = $server_id
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.dhcp.servers.ip_pools
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_dhcp_ip_pool_server_id {
    Param
    (
        $Definition,
        $dhcp_ip_pool,
        $Documentation,
        $Errors,
        $pool_id,
        $Returns,
        $server_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        dhcp_ip_pool = $dhcp_ip_pool
        Documentation = $Documentation
        Errors = $Errors
        pool_id = $pool_id
        Returns = $Returns
        server_id = $server_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.dhcp.servers.ip_pools
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_service_chain {
    Param
    (
        $description,
        $display_name,
        $forward_path_service_profiles,
        $id,
        $on_failure_policy,
        $path_selection_policy,
        $resource_type,
        $reverse_path_service_profiles,
        $revision,
        $self,
        $service_attachments,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        description = $description
        display_name = $display_name
        forward_path_service_profiles = $forward_path_service_profiles
        id = $id
        on_failure_policy = $on_failure_policy
        path_selection_policy = $path_selection_policy
        resource_type = $resource_type
        reverse_path_service_profiles = $reverse_path_service_profiles
        revision = $revision
        self = $self
        service_attachments = $service_attachments
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.service_chains
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_service_chain {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $service_chain_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        service_chain_id = $service_chain_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.service_chains
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_service_chain {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.serviceinsertion.service_chains
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_dhcp_relay_service {
    Param
    (
        $description,
        $dhcp_relay_profile_id,
        $display_name,
        $id,
        $resource_type,
        $revision,
        $self,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        description = $description
        dhcp_relay_profile_id = $dhcp_relay_profile_id
        display_name = $display_name
        id = $id
        resource_type = $resource_type
        revision = $revision
        self = $self
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.dhcp.relays
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_dhcp_relay_service {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $relay_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        relay_id = $relay_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.dhcp.relays
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_dhcp_relay_service {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.dhcp.relays
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_dhcp_relay_service {
    Param
    (
        $Definition,
        $dhcp_relay_service,
        $Documentation,
        $Errors,
        $relay_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        dhcp_relay_service = $dhcp_relay_service
        Documentation = $Documentation
        Errors = $Errors
        relay_id = $relay_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.dhcp.relays
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_add_cluster_node_VM_info {
    Param
    (
        $clustering_config,
        $deployment_requests
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        clustering_config = $clustering_config
        deployment_requests = $deployment_requests
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.cluster.nodes.deployments
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_add_cluster_node_VM_info {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $force_delete,
        $node_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        force_delete = $force_delete
        node_id = $node_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.cluster.nodes.deployments
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_add_cluster_node_VM_info {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.cluster.nodes.deployments
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_base_host_switch_profile {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.host_switch_profiles
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_base_host_switch_profile {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $host_switch_profile_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        host_switch_profile_id = $host_switch_profile_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.host_switch_profiles
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_base_host_switch_profile {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $hostswitch_profile_type,
        $included_fields,
        $include_system_owned,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by,
        $uplink_teaming_policy_name
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        hostswitch_profile_type = $hostswitch_profile_type
        included_fields = $included_fields
        include_system_owned = $include_system_owned
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        uplink_teaming_policy_name = $uplink_teaming_policy_name
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.host_switch_profiles
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_base_host_switch_profile {
    Param
    (
        $base_host_switch_profile,
        $Definition,
        $Documentation,
        $Errors,
        $host_switch_profile_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        base_host_switch_profile = $base_host_switch_profile
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        host_switch_profile_id = $host_switch_profile_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.host_switch_profiles
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_notification_watcher {
    Param
    (
        $authentication_scheme,
        $certificate_sha256_thumbprint,
        $description,
        $display_name,
        $max_send_uri_count,
        $method,
        $port,
        $resource_type,
        $revision,
        $self,
        $send_interval,
        $send_timeout,
        $server,
        $tags,
        $uri,
        $use_https
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        authentication_scheme = $authentication_scheme
        certificate_sha256_thumbprint = $certificate_sha256_thumbprint
        description = $description
        display_name = $display_name
        max_send_uri_count = $max_send_uri_count
        method = $method
        port = $port
        resource_type = $resource_type
        revision = $revision
        self = $self
        send_interval = $send_interval
        send_timeout = $send_timeout
        server = $server
        tags = $tags
        uri = $uri
        use_https = $use_https
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.notification_watchers
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_notification_watcher {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $watcher_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        watcher_id = $watcher_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.notification_watchers
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_notification_watcher {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.notification_watchers
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_notification_watcher {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $notification_watcher,
        $Returns,
        $watcher_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        notification_watcher = $notification_watcher
        Returns = $Returns
        watcher_id = $watcher_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.notification_watchers
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_l2_vpn_service {
    Param
    (
        $description,
        $display_name,
        $enable_full_mesh,
        $enable_hub,
        $id,
        $logical_router_id,
        $logical_tap_ip_pool,
        $mode,
        $resource_type,
        $revision,
        $self,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        description = $description
        display_name = $display_name
        enable_full_mesh = $enable_full_mesh
        enable_hub = $enable_hub
        id = $id
        logical_router_id = $logical_router_id
        logical_tap_ip_pool = $logical_tap_ip_pool
        mode = $mode
        resource_type = $resource_type
        revision = $revision
        self = $self
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.vpn.l2vpn.services
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_l2_vpn_service {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $force,
        $l2vpn_service_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        force = $force
        l2vpn_service_id = $l2vpn_service_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.vpn.l2vpn.services
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_l2_vpn_service {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.vpn.l2vpn.services
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_l2_vpn_service {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $l2vpn_service_id,
        $l2_vpn_service,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        l2vpn_service_id = $l2vpn_service_id
        l2_vpn_service = $l2_vpn_service
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.vpn.l2vpn.services
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_lb_tcp_profile {
    Param
    (
        $description,
        $display_name,
        $fin_wait2_timeout,
        $id,
        $max_syn_retransmissions,
        $nagle_algorithm_enabled,
        $receive_window_size,
        $resource_type,
        $revision,
        $self,
        $tags,
        $transmit_window_size
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        description = $description
        display_name = $display_name
        fin_wait2_timeout = $fin_wait2_timeout
        id = $id
        max_syn_retransmissions = $max_syn_retransmissions
        nagle_algorithm_enabled = $nagle_algorithm_enabled
        receive_window_size = $receive_window_size
        resource_type = $resource_type
        revision = $revision
        self = $self
        tags = $tags
        transmit_window_size = $transmit_window_size
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.loadbalancer.tcp_profiles
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_lb_tcp_profile {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $tcp_profile_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        tcp_profile_id = $tcp_profile_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.loadbalancer.tcp_profiles
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_lb_tcp_profile {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.loadbalancer.tcp_profiles
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_lb_tcp_profile {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $lb_tcp_profile,
        $Returns,
        $tcp_profile_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        lb_tcp_profile = $lb_tcp_profile
        Returns = $Returns
        tcp_profile_id = $tcp_profile_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.loadbalancer.tcp_profiles
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_l2_vpn_session {
    Param
    (
        $description,
        $display_name,
        $enabled,
        $id,
        $l2vpn_service_id,
        $resource_type,
        $revision,
        $self,
        $tags,
        $transport_tunnels,
        $tunnel_encapsulation
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        description = $description
        display_name = $display_name
        enabled = $enabled
        id = $id
        l2vpn_service_id = $l2vpn_service_id
        resource_type = $resource_type
        revision = $revision
        self = $self
        tags = $tags
        transport_tunnels = $transport_tunnels
        tunnel_encapsulation = $tunnel_encapsulation
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.vpn.l2vpn.sessions
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_l2_vpn_session {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $l2vpn_session_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        l2vpn_session_id = $l2vpn_session_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.vpn.l2vpn.sessions
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_l2_vpn_session {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $l2vpn_service_id,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        l2vpn_service_id = $l2vpn_service_id
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.vpn.l2vpn.sessions
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_l2_vpn_session {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $l2vpn_session_id,
        $l2_vpn_session,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        l2vpn_session_id = $l2vpn_session_id
        l2_vpn_session = $l2_vpn_session
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.vpn.l2vpn.sessions
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_ip_sec_VPN_peer_endpoint {
    Param
    (
        $authentication_mode,
        $connection_initiation_mode,
        $description,
        $display_name,
        $dpd_profile_id,
        $id,
        $ike_profile_id,
        $ipsec_tunnel_profile_id,
        $peer_address,
        $peer_id,
        $psk,
        $resource_type,
        $revision,
        $self,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        authentication_mode = $authentication_mode
        connection_initiation_mode = $connection_initiation_mode
        description = $description
        display_name = $display_name
        dpd_profile_id = $dpd_profile_id
        id = $id
        ike_profile_id = $ike_profile_id
        ipsec_tunnel_profile_id = $ipsec_tunnel_profile_id
        peer_address = $peer_address
        peer_id = $peer_id
        psk = $psk
        resource_type = $resource_type
        revision = $revision
        self = $self
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.vpn.ipsec.peer_endpoints
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_ip_sec_VPN_peer_endpoint {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $force,
        $ipsec_vpn_peer_endpoint_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        force = $force
        ipsec_vpn_peer_endpoint_id = $ipsec_vpn_peer_endpoint_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.vpn.ipsec.peer_endpoints
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_ip_sec_VPN_peer_endpoint {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.vpn.ipsec.peer_endpoints
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_ip_sec_VPN_peer_endpoint {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $ipsec_vpn_peer_endpoint_id,
        $ip_sec_VPN_peer_endpoint,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        ipsec_vpn_peer_endpoint_id = $ipsec_vpn_peer_endpoint_id
        ip_sec_VPN_peer_endpoint = $ip_sec_VPN_peer_endpoint
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.vpn.ipsec.peer_endpoints
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_ip_pool {
    Param
    (
        $description,
        $display_name,
        $id,
        $pool_usage,
        $resource_type,
        $revision,
        $self,
        $subnets,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        description = $description
        display_name = $display_name
        id = $id
        pool_usage = $pool_usage
        resource_type = $resource_type
        revision = $revision
        self = $self
        subnets = $subnets
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.pools.ip_pools
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_ip_pool {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $force,
        $pool_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        force = $force
        pool_id = $pool_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.pools.ip_pools
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_ip_pool {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.pools.ip_pools
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_ip_pool {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $ip_pool,
        $pool_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        ip_pool = $ip_pool
        pool_id = $pool_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.pools.ip_pools
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_lb_rule {
    Param
    (
        $actions,
        $description,
        $display_name,
        $id,
        $match_conditions,
        $match_strategy,
        $phase,
        $resource_type,
        $revision,
        $self,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        actions = $actions
        description = $description
        display_name = $display_name
        id = $id
        match_conditions = $match_conditions
        match_strategy = $match_strategy
        phase = $phase
        resource_type = $resource_type
        revision = $revision
        self = $self
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.loadbalancer.rules
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_lb_rule {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $rule_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        rule_id = $rule_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.loadbalancer.rules
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_lb_rule {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.loadbalancer.rules
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_lb_rule {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $lb_rule,
        $Returns,
        $rule_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        lb_rule = $lb_rule
        Returns = $Returns
        rule_id = $rule_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.loadbalancer.rules
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_node_syslog_exporter_properties {
    Param
    (
        $exporter_name,
        $facilities,
        $level,
        $msgids,
        $port,
        $protocol,
        $self,
        $server,
        $structured_data,
        $tls_ca_pem,
        $tls_cert_pem,
        $tls_client_ca_pem,
        $tls_key_pem
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        exporter_name = $exporter_name
        facilities = $facilities
        level = $level
        msgids = $msgids
        port = $port
        protocol = $protocol
        self = $self
        server = $server
        structured_data = $structured_data
        tls_ca_pem = $tls_ca_pem
        tls_cert_pem = $tls_cert_pem
        tls_client_ca_pem = $tls_client_ca_pem
        tls_key_pem = $tls_key_pem
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.node.services.syslog.exporters
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_node_syslog_exporter_properties {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $exporter_name,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        exporter_name = $exporter_name
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.node.services.syslog.exporters
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_node_syslog_exporter_properties {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.node.services.syslog.exporters
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_traceflow_request {
    Param
    (
        $lport_id,
        $packet,
        $timeout
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        lport_id = $lport_id
        packet = $packet
        timeout = $timeout
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.traceflows
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_traceflow_request {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $traceflow_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        traceflow_id = $traceflow_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.traceflows
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_traceflow_request {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $lport_id,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        lport_id = $lport_id
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.traceflows
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_directory_ldap_server_domain_id {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $lport_id,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        lport_id = $lport_id
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.directory.domains.ldap_servers
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_directory_ldap_server_domain_id {
    Param
    (
        $Definition,
        $Documentation,
        $domain_id,
        $Errors,
        $Returns,
        $server_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        domain_id = $domain_id
        Errors = $Errors
        Returns = $Returns
        server_id = $server_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.directory.domains.ldap_servers
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_directory_ldap_server_domain_id {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $domain_id,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        domain_id = $domain_id
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.directory.domains.ldap_servers
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_directory_ldap_server_domain_id {
    Param
    (
        $Definition,
        $directory_ldap_server,
        $Documentation,
        $domain_id,
        $Errors,
        $Returns,
        $server_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        directory_ldap_server = $directory_ldap_server
        Documentation = $Documentation
        domain_id = $domain_id
        Errors = $Errors
        Returns = $Returns
        server_id = $server_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.directory.domains.ldap_servers
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_audit_log_request_cursor_fields_page_size {
    Param
    (
        $Definition,
        $directory_ldap_server,
        $Documentation,
        $domain_id,
        $Errors,
        $Returns,
        $server_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        directory_ldap_server = $directory_ldap_server
        Documentation = $Documentation
        domain_id = $domain_id
        Errors = $Errors
        Returns = $Returns
        server_id = $server_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.administration.audit_logs
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_m_AC_set {
    Param
    (
        $description,
        $display_name,
        $id,
        $mac_addresses,
        $resource_type,
        $revision,
        $self,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        description = $description
        display_name = $display_name
        id = $id
        mac_addresses = $mac_addresses
        resource_type = $resource_type
        revision = $revision
        self = $self
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.mac_sets
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_m_AC_set {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $force,
        $mac_set_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        force = $force
        mac_set_id = $mac_set_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.mac_sets
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_m_AC_set {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.mac_sets
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_m_AC_set {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $mac_set_id,
        $m_AC_set,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        mac_set_id = $mac_set_id
        m_AC_set = $m_AC_set
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.mac_sets
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_packet_capture_request {
    Param
    (
        $capamount,
        $capcore,
        $capduration,
        $capfilesize,
        $capmode,
        $cappoint,
        $caprate,
        $capsnaplen,
        $capsource,
        $capvalue,
        $direction,
        $filtertype,
        $node,
        $node_ip,
        $options,
        $streamaddress,
        $streamport
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        capamount = $capamount
        capcore = $capcore
        capduration = $capduration
        capfilesize = $capfilesize
        capmode = $capmode
        cappoint = $cappoint
        caprate = $caprate
        capsnaplen = $capsnaplen
        capsource = $capsource
        capvalue = $capvalue
        direction = $direction
        filtertype = $filtertype
        node = $node
        node_ip = $node_ip
        options = $options
        streamaddress = $streamaddress
        streamport = $streamport
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.pktcap.session
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_packet_capture_request {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $session_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        session_id = $session_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.pktcap.session
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_transport_node_profile {
    Param
    (
        $description,
        $display_name,
        $host_switch_spec,
        $id,
        $resource_type,
        $revision,
        $self,
        $tags,
        $transport_zone_endpoints
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        description = $description
        display_name = $display_name
        host_switch_spec = $host_switch_spec
        id = $id
        resource_type = $resource_type
        revision = $revision
        self = $self
        tags = $tags
        transport_zone_endpoints = $transport_zone_endpoints
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.transport_node_profiles
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_transport_node_profile {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $transport_node_profile_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        transport_node_profile_id = $transport_node_profile_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.transport_node_profiles
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_transport_node_profile {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.transport_node_profiles
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_transport_node_profile {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $esx_mgmt_if_migration_dest,
        $if_id,
        $ping_ip,
        $Returns,
        $transport_node_profile,
        $transport_node_profile_id,
        $vnic,
        $vnic_migration_dest
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        esx_mgmt_if_migration_dest = $esx_mgmt_if_migration_dest
        if_id = $if_id
        ping_ip = $ping_ip
        Returns = $Returns
        transport_node_profile = $transport_node_profile
        transport_node_profile_id = $transport_node_profile_id
        vnic = $vnic
        vnic_migration_dest = $vnic_migration_dest
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.transport_node_profiles
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_dhcp_relay_profile {
    Param
    (
        $description,
        $display_name,
        $id,
        $resource_type,
        $revision,
        $self,
        $server_addresses,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        description = $description
        display_name = $display_name
        id = $id
        resource_type = $resource_type
        revision = $revision
        self = $self
        server_addresses = $server_addresses
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.dhcp.relay_profiles
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_dhcp_relay_profile {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $relay_profile_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        relay_profile_id = $relay_profile_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.dhcp.relay_profiles
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_dhcp_relay_profile {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.dhcp.relay_profiles
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_dhcp_relay_profile {
    Param
    (
        $Definition,
        $dhcp_relay_profile,
        $Documentation,
        $Errors,
        $relay_profile_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        dhcp_relay_profile = $dhcp_relay_profile
        Documentation = $Documentation
        Errors = $Errors
        relay_profile_id = $relay_profile_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.dhcp.relay_profiles
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_service_config {
    Param
    (
        $applied_to,
        $description,
        $display_name,
        $id,
        $precedence,
        $profiles,
        $resource_type,
        $revision,
        $self,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        applied_to = $applied_to
        description = $description
        display_name = $display_name
        id = $id
        precedence = $precedence
        profiles = $profiles
        resource_type = $resource_type
        revision = $revision
        self = $self
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.service_configs
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_service_config {
    Param
    (
        $config_set_id,
        $Definition,
        $Documentation,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        config_set_id = $config_set_id
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.service_configs
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_service_config {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $profile_type,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        profile_type = $profile_type
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.service_configs
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_service_config {
    Param
    (
        $config_set_id,
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $service_config
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        config_set_id = $config_set_id
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        service_config = $service_config
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.service_configs
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_logical_dhcp_server {
    Param
    (
        $description,
        $dhcp_profile_id,
        $display_name,
        $id,
        $ipv4_dhcp_server,
        $resource_type,
        $revision,
        $self,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        description = $description
        dhcp_profile_id = $dhcp_profile_id
        display_name = $display_name
        id = $id
        ipv4_dhcp_server = $ipv4_dhcp_server
        resource_type = $resource_type
        revision = $revision
        self = $self
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.dhcp.servers
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_logical_dhcp_server {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns,
        $server_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        server_id = $server_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.dhcp.servers
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_logical_dhcp_server {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.dhcp.servers
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_logical_dhcp_server {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $logical_dhcp_server,
        $Returns,
        $server_id
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        logical_dhcp_server = $logical_dhcp_server
        Returns = $Returns
        server_id = $server_id
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.dhcp.servers
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_license {
    Param
    (
        $license_key,
        $self
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        license_key = $license_key
        self = $self
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.licenses
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_license {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $license_key,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        license_key = $license_key
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.licenses
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_license {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.licenses
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_license {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $license,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        license = $license
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.licenses
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_manual_health_check {
    Param
    (
        $description,
        $display_name,
        $id,
        $resource_type,
        $result,
        $revision,
        $self,
        $tags,
        $transport_zone_id,
        $vlans
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        description = $description
        display_name = $display_name
        id = $id
        resource_type = $resource_type
        result = $result
        revision = $revision
        self = $self
        tags = $tags
        transport_zone_id = $transport_zone_id
        vlans = $vlans
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.manual_health_checks
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_manual_health_check {
    Param
    (
        $Definition,
        $Documentation,
        $Errors,
        $manual_health_check_id,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        manual_health_check_id = $manual_health_check_id
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.manual_health_checks
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_manual_health_check {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $Errors,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.manual_health_checks
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function New-Nsxt_bridge_endpoint_profile {
    Param
    (
        $description,
        $display_name,
        $edge_cluster_id,
        $edge_cluster_member_indexes,
        $failover_mode,
        $high_availability_mode,
        $id,
        $resource_type,
        $revision,
        $self,
        $tags
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        description = $description
        display_name = $display_name
        edge_cluster_id = $edge_cluster_id
        edge_cluster_member_indexes = $edge_cluster_member_indexes
        failover_mode = $failover_mode
        high_availability_mode = $high_availability_mode
        id = $id
        resource_type = $resource_type
        revision = $revision
        self = $self
        tags = $tags
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.bridge_endpoint_profiles
        $NSXTService.create($Specification)
    }

    End
    {}
} #End of Function


Function Remove-Nsxt_bridge_endpoint_profile {
    Param
    (
        $bridgeendpointprofile_id,
        $Definition,
        $Documentation,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        bridgeendpointprofile_id = $bridgeendpointprofile_id
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.bridge_endpoint_profiles
        $NSXTService.delete($Specification)
    }

    End
    {}
} #End of Function


Function Get-Nsxt_bridge_endpoint_profile {
    Param
    (
        $cursor,
        $Definition,
        $Documentation,
        $edge_cluster_id,
        $Errors,
        $failover_mode,
        $included_fields,
        $page_size,
        $Returns,
        $sort_ascending,
        $sort_by
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        cursor = $cursor
        Definition = $Definition
        Documentation = $Documentation
        edge_cluster_id = $edge_cluster_id
        Errors = $Errors
        failover_mode = $failover_mode
        included_fields = $included_fields
        page_size = $page_size
        Returns = $Returns
        sort_ascending = $sort_ascending
        sort_by = $sort_by
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.bridge_endpoint_profiles
        $NSXTService.list($Specification)
    }

    End
    {}
} #End of Function


Function Set-Nsxt_bridge_endpoint_profile {
    Param
    (
        $bridgeendpointprofile_id,
        $bridge_endpoint_profile,
        $Definition,
        $Documentation,
        $Errors,
        $Returns
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        bridgeendpointprofile_id = $bridgeendpointprofile_id
        bridge_endpoint_profile = $bridge_endpoint_profile
        Definition = $Definition
        Documentation = $Documentation
        Errors = $Errors
        Returns = $Returns
        
        }
        $NSXTService = get-nsxtservice -name com.vmware.nsx.bridge_endpoint_profiles
        $NSXTService.update($Specification)
    }

    End
    {}
} #End of Function

