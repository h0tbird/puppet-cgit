class cgit::install inherits cgit {

  package { ['cgit','highlight','policycoreutils-python']:
    ensure => $version,
  }

  file { "/home/$git_user":
    mode    => '0755',
    require => User[$git_user],
  } ->

  file { "/home/${git_user}/projects.list":
    mode => '0644',
  }
}
