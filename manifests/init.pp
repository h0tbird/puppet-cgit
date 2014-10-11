class cgit (

  $version  = undef,
  $git_user = undef,

) {

  contain "${module_name}::install"
  contain "${module_name}::config"
}
