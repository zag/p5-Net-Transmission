use Module::Build;
Module::Build->new
    ( module_name => 'Net::Transmission',
    license => 'perl',
   prereq => {
	      'Collection'=>'0.43'
	       },
    create_makefile_pl=>$ENV{DO_OUTCPAN} ? 'traditional':'passthrough'
    )->create_build_script;
