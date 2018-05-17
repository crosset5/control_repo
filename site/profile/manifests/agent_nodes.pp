class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'web.puppet.vm':}
  dockeragent::node {'db.puppet':}
  dockeragent::node {'minetest.puppet.vm':}
  host {'web.puppet.vm':
    ensure => present,
    ip     => '172.18.0.2'
  }
  host {'db.puppet':
    ensure => present,
    ip     => '172.18.0.3'
  }
  
}
