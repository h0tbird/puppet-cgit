class cgit (

  $version  = undef,
  $git_home = undef,

) {

  contain "${module_name}::install"
  contain "${module_name}::config"
}
