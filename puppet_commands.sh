#Aplicar los recursos de un archivo
sudo puppet apply --modulepath=. apache/examples/init.pp

#Agregar de manera 'inline' lo que se quiere aplicar
sudo puppet apply -e 'include apache' --modulepath=.