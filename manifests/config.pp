class cgit::config inherits cgit {

  file { '/etc/cgitrc':
    ensure  => present,
    content => template("${module_name}/cgitrc.erb"),
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
  }
}
