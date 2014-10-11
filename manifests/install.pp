class cgit::install inherits cgit {

  package { ['cgit','highlight','policycoreutils-python']:
    ensure => $version,
  }

  File <| title == $git_home |> {
    mode => '0755',
  }

  file { "${git_home}/projects.list":
    mode => '0644',
  }
}
