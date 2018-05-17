class profile::ssh_server {
  package { 'openssh-server':
      ensure => present,
  }
  service { 'sshd':
      ensure => 'running',
      enable => 'true',
  }
  ssh_authorized_key {'root@master.puppet.vm':
      ensure => present,
      user   => 'root',
      type   =>  'ssh-rsa',
      key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC/XfxAjlO5ZUS1hiZO4AOXBDoax5ta7NifT/js1yGizXh7pGMwAGEP0CnKV7qNXlGDHgCNf04XUu/eemhycsLwEpTHaKPiXGQ1xrab/BjOEpop9BNy0qiYh/1OBebJ/ZOLdmkBNAsVnBLuXAUHXVzOmvuABO2a4GiMyW0ZpVBnKQVNjmdgHags5FgKOzXYMr4HciSQtheBJuyNkm1bshD/P14K5gnvg3i7RQOpxq+ByRoOY9AXYrgm5kyx5TFHNusEDvtXo7I4vNHxS3iVrSWDxRqbZg5wAmj61ctaUZDFbxmB21oIt5uIfvSZAPlSzC2p5QdfE1fdzhboFrGTXebN',
  }
}
