class apache{
	package{ 'apache2':
		ensure => installed
	}

	service{ 'apache2':
		ensure => running,
		require =>Package['apache2']
	}

	file { '/var/www/html/index.html':
		content => '<h1>Hello World</h1>',
		mode => '644',
		ensure => present
	}
}