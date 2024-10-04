# @summary A defined type wrapper for spawning
#   [puppetlabs/firewall](https://github.com/puppetlabs/puppetlabs-firewall)
#   resources for arrays of certain inputs.
#
# @param [Array] source An array of source IPs or CIDRs.
# @param [Array] destination An array of destination IPs or CIDRs.
# @param [Array] proto An array of proto's.
# @param [Array] icmp An array of ICMP types.
#
define firewall_multi (
  $ensure                      = undef,
  $burst                       = undef,
  $bytecode                    = undef,
  $cgroup                      = undef,
  $chain                       = undef,
  $checksum_fill               = undef,
  $clamp_mss_to_pmtu           = undef,
  $clusterip_clustermac        = undef,
  $clusterip_hash_init         = undef,
  $clusterip_hashmode          = undef,
  $clusterip_local_node        = undef,
  $clusterip_new               = undef,
  $clusterip_total_nodes       = undef,
  $condition                   = undef,
  $connlimit_above             = undef,
  $connlimit_mask              = undef,
  $connlimit_upto              = undef,
  $connmark                    = undef,
  $ctdir                       = undef,
  $ctexpire                    = undef,
  $ctorigdst                   = undef,
  $ctorigdstport               = undef,
  $ctorigsrc                   = undef,
  $ctorigsrcport               = undef,
  $ctproto                     = undef,
  $ctrepldst                   = undef,
  $ctrepldstport               = undef,
  $ctreplsrc                   = undef,
  $ctreplsrcport               = undef,
  $ctstate                     = undef,
  $ctstatus                    = undef,
  $ctmask                      = undef,
  $date_start                  = undef,
  $date_stop                   = undef,
  $destination                 = undef,
  $dport                       = undef,
  $dst_cc                      = undef,
  $dst_range                   = undef,
  $dst_type                    = undef,
  $gateway                     = undef,
  $gid                         = undef,
  $goto                        = undef,
  $hashlimit_above             = undef,
  $hashlimit_burst             = undef,
  $hashlimit_dstmask           = undef,
  $hashlimit_htable_expire     = undef,
  $hashlimit_htable_gcinterval = undef,
  $hashlimit_htable_max        = undef,
  $hashlimit_htable_size       = undef,
  $hashlimit_mode              = undef,
  $hashlimit_name              = undef,
  $hashlimit_srcmask           = undef,
  $hashlimit_upto              = undef,
  $helper                      = undef,
  $hop_limit                   = undef,
  $icmp                        = undef,
  $iniface                     = undef,
  $ipsec_dir                   = undef,
  $ipsec_policy                = undef,
  $ipset                       = undef,
  $ipvs                        = undef,
  $isfirstfrag                 = undef,
  $isfragment                  = undef,
  $ishasmorefrags              = undef,
  $islastfrag                  = undef,
  $jump                        = undef,
  $kernel_timezone             = undef,
  $length                      = undef,
  $limit                       = undef,
  $line                        = undef,
  $log_ip_options              = undef,
  $log_level                   = undef,
  $log_prefix                  = undef,
  $log_tcp_options             = undef,
  $log_tcp_sequence            = undef,
  $log_uid                     = undef,
  $mac_source                  = undef,
  $mask                        = undef,
  $match_mark                  = undef,
  $month_days                  = undef,
  $mss                         = undef,
  $nflog_group                 = undef,
  $nflog_prefix                = undef,
  $nflog_range                 = undef,
  $nflog_size                  = undef,
  $nflog_threshold             = undef,
  $nfmask                      = undef,
  $notrack                     = undef,
  $outiface                    = undef,
  $physdev_in                  = undef,
  $physdev_is_bridged          = undef,
  $physdev_is_in               = undef,
  $physdev_is_out              = undef,
  $physdev_out                 = undef,
  $pkttype                     = undef,
  $proto                       = undef,
  $protocol                    = undef,
  $queue_bypass                = undef,
  $queue_num                   = undef,
  $random                      = undef,
  $random_fully                = undef,
  $rdest                       = undef,
  $reap                        = undef,
  $recent                      = undef,
  $reject                      = undef,
  $rhitcount                   = undef,
  $rname                       = undef,
  $rpfilter                    = undef,
  $rseconds                    = undef,
  $rsource                     = undef,
  $rttl                        = undef,
  $set_dscp                    = undef,
  $set_dscp_class              = undef,
  $set_mark                    = undef,
  $restore_mark                = undef,
  $set_mss                     = undef,
  $socket                      = undef,
  $source                      = undef,
  $sport                       = undef,
  $src_cc                      = undef,
  $src_range                   = undef,
  $src_type                    = undef,
  $stat_every                  = undef,
  $stat_mode                   = undef,
  $stat_packet                 = undef,
  $stat_probability            = undef,
  $state                       = undef,
  $string                      = undef,
  $string_algo                 = undef,
  $string_from                 = undef,
  $string_hex                  = undef,
  $string_to                   = undef,
  $table                       = undef,
  $tcp_flags                   = undef,
  $tcp_option                  = undef,
  $time_contiguous             = undef,
  $time_start                  = undef,
  $time_stop                   = undef,
  $to                          = undef,
  $todest                      = undef,
  $toports                     = undef,
  $tosource                    = undef,
  $u32                         = undef,
  $uid                         = undef,
  $week_days                   = undef,
  $zone                        = undef,
) {

  $firewalls = firewall_multi(
    {
      $name => {
        ensure                       =>  $ensure,
        burst                        =>  $burst,
        bytecode                     =>  $bytecode,
        cgroup                       =>  $cgroup,
        chain                        =>  $chain,
        checksum_fill                =>  $checksum_fill,
        clamp_mss_to_pmtu            =>  $clamp_mss_to_pmtu,
        clusterip_clustermac         =>  $clusterip_clustermac,
        clusterip_hash_init          =>  $clusterip_hash_init,
        clusterip_hashmode           =>  $clusterip_hashmode,
        clusterip_local_node         =>  $clusterip_local_node,
        clusterip_new                =>  $clusterip_new,
        clusterip_total_nodes        =>  $clusterip_total_nodes,
        condition                    =>  $condition,
        connlimit_above              =>  $connlimit_above,
        connlimit_mask               =>  $connlimit_mask,
        connlimit_upto               =>  $connlimit_upto,
        connmark                     =>  $connmark,
        ctdir                        =>  $ctdir,
        ctexpire                     =>  $ctexpire,
        ctorigdst                    =>  $ctorigdst,
        ctorigdstport                =>  $ctorigdstport,
        ctorigsrc                    =>  $ctorigsrc,
        ctorigsrcport                =>  $ctorigsrcport,
        ctproto                      =>  $ctproto,
        ctrepldst                    =>  $ctrepldst,
        ctrepldstport                =>  $ctrepldstport,
        ctreplsrc                    =>  $ctreplsrc,
        ctreplsrcport                =>  $ctreplsrcport,
        ctstate                      =>  $ctstate,
        ctstatus                     =>  $ctstatus,
        ctmask                       =>  $ctmask,
        date_start                   =>  $date_start,
        date_stop                    =>  $date_stop,
        destination                  =>  $destination,
        dport                        =>  $dport,
        dst_cc                       =>  $dst_cc,
        dst_range                    =>  $dst_range,
        dst_type                     =>  $dst_type,
        gateway                      =>  $gateway,
        gid                          =>  $gid,
        goto                         =>  $goto,
        hashlimit_above              =>  $hashlimit_above,
        hashlimit_burst              =>  $hashlimit_burst,
        hashlimit_dstmask            =>  $hashlimit_dstmask,
        hashlimit_htable_expire      =>  $hashlimit_htable_expire,
        hashlimit_htable_gcinterval  =>  $hashlimit_htable_gcinterval,
        hashlimit_htable_max         =>  $hashlimit_htable_max,
        hashlimit_htable_size        =>  $hashlimit_htable_size,
        hashlimit_mode               =>  $hashlimit_mode,
        hashlimit_name               =>  $hashlimit_name,
        hashlimit_srcmask            =>  $hashlimit_srcmask,
        hashlimit_upto               =>  $hashlimit_upto,
        helper                       =>  $helper,
        hop_limit                    =>  $hop_limit,
        icmp                         =>  $icmp,
        iniface                      =>  $iniface,
        ipsec_dir                    =>  $ipsec_dir,
        ipsec_policy                 =>  $ipsec_policy,
        ipset                        =>  $ipset,
        ipvs                         =>  $ipvs,
        isfirstfrag                  =>  $isfirstfrag,
        isfragment                   =>  $isfragment,
        ishasmorefrags               =>  $ishasmorefrags,
        islastfrag                   =>  $islastfrag,
        jump                         =>  $jump,
        kernel_timezone              =>  $kernel_timezone,
        length                       =>  $length,
        limit                        =>  $limit,
        line                         =>  $line,
        log_ip_options               =>  $log_ip_options,
        log_level                    =>  $log_level,
        log_prefix                   =>  $log_prefix,
        log_tcp_options              =>  $log_tcp_options,
        log_tcp_sequence             =>  $log_tcp_sequence,
        log_uid                      =>  $log_uid,
        mac_source                   =>  $mac_source,
        mask                         =>  $mask,
        match_mark                   =>  $match_mark,
        month_days                   =>  $month_days,
        mss                          =>  $mss,
        nflog_group                  =>  $nflog_group,
        nflog_prefix                 =>  $nflog_prefix,
        nflog_range                  =>  $nflog_range,
        nflog_size                   =>  $nflog_size,
        nflog_threshold              =>  $nflog_threshold,
        nfmask                       =>  $nfmask,
        notrack                      =>  $notrack,
        outiface                     =>  $outiface,
        physdev_in                   =>  $physdev_in,
        physdev_is_bridged           =>  $physdev_is_bridged,
        physdev_is_in                =>  $physdev_is_in,
        physdev_is_out               =>  $physdev_is_out,
        physdev_out                  =>  $physdev_out,
        pkttype                      =>  $pkttype,
        proto                        =>  $proto,
        protocol                     =>  $protocol,
        queue_bypass                 =>  $queue_bypass,
        queue_num                    =>  $queue_num,
        random                       =>  $random,
        random_fully                 =>  $random_fully,
        rdest                        =>  $rdest,
        reap                         =>  $reap,
        recent                       =>  $recent,
        reject                       =>  $reject,
        rhitcount                    =>  $rhitcount,
        rname                        =>  $rname,
        rpfilter                     =>  $rpfilter,
        rseconds                     =>  $rseconds,
        rsource                      =>  $rsource,
        rttl                         =>  $rttl,
        set_dscp                     =>  $set_dscp,
        set_dscp_class               =>  $set_dscp_class,
        set_mark                     =>  $set_mark,
        restore_mark                 =>  $restore_mark,
        set_mss                      =>  $set_mss,
        socket                       =>  $socket,
        source                       =>  $source,
        sport                        =>  $sport,
        src_cc                       =>  $src_cc,
        src_range                    =>  $src_range,
        src_type                     =>  $src_type,
        stat_every                   =>  $stat_every,
        stat_mode                    =>  $stat_mode,
        stat_packet                  =>  $stat_packet,
        stat_probability             =>  $stat_probability,
        state                        =>  $state,
        string                       =>  $string,
        string_algo                  =>  $string_algo,
        string_from                  =>  $string_from,
        string_hex                   =>  $string_hex,
        string_to                    =>  $string_to,
        table                        =>  $table,
        tcp_flags                    =>  $tcp_flags,
        tcp_option                   =>  $tcp_option,
        time_contiguous              =>  $time_contiguous,
        time_start                   =>  $time_start,
        time_stop                    =>  $time_stop,
        to                           =>  $to,
        todest                       =>  $todest,
        toports                      =>  $toports,
        tosource                     =>  $tosource,
        u32                          =>  $u32,
        uid                          =>  $uid,
        week_days                    =>  $week_days,
        zone                         =>  $zone,
      }
    }
  )

  create_resources(firewall, $firewalls)
}
