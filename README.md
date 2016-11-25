# Infrastructure as Code

- Code examples of 'Infrastructure as Code' presentation.
- [Slides 'Infrastructure as Code'](http://slides.com/snahider/infrastructure-as-code)

## Vagrant

Ingresar al contenedor Docker

	$ docker run -v $PWD:/puppet-modules -it ubuntu-puppet bash 

Ingresar a la máquina Vagrant

	$ vagrant up
	$ vagrant ssh

## Puppet

Aplicar los recursos de un archivo (ingresar primero a la máquina vagrant)

	$ cd {/vagrant, /puppet-modules}
	$ sudo puppet apply --modulepath=. apache/examples/init.pp

Agregar de manera 'inline' lo que se quiere aplicar

	$ sudo puppet apply -e 'include apache' --modulepath=.

## Beaker

### Cómo crear Ambientes de Pruebas

	https://github.com/puppetlabs/beaker/blob/master/docs/tutorials/creating_a_test_environment.md

A) Vagrant Environment

https://github.com/puppetlabs/beaker/blob/master/docs/how_to/hypervisors/vagrant.md

B) Docker Environment

https://github.com/puppetlabs/beaker/blob/master/docs/how_to/hypervisors/docker.md

### Cómo crear una prueba

	https://github.com/puppetlabs/beaker/blob/master/docs/tutorials/lets_write_a_test.md

### Cómo ejecutar pruebas

Listar los nodos disponibles
	
	$ rake beaker_nodes

Ejecutar pruebas funcionales

	$ rake beaker

Otros parámetros de Beaker

	$ beaker --host spec/acceptance/nodesets/docker-ubuntu-1604-x64.yml --pre-suite install.rb --test mytest.rb

## Mejoras

- Actualizar los paquetes desde el spec_helper.

http://www.rubydoc.info/github/puppetlabs/beaker/Beaker/DSL/Helpers/HostHelpers#on-instance_method
