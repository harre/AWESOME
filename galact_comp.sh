#! /bin/bash
sudo perl -MCPAN -e 'install Switch'
sudo perl -MCPAN -e 'install XML::Simple'
sudo perl -MCPAN -e 'install Sort::Topological'
sudo perl -MCPAN -e 'install Data::Dumper' (wird nicht gefunden, wird in 0.9.1 auch nicht mehr angegeben)
sudo perl -MCPAN -e 'install IO::Compress::Bzip2'
sudo perl -MCPAN -e 'install Text::Table'
sudo perl -MCPAN -e 'install PDL'
sudo perl -MCPAN -e 'install Math::SigFigs'
sudo perl -MCPAN -e 'force("install","Astro::Cosmology")'
# HDF5 installieren 
wget http://www.ctcp.caltech.edu/galacticus/tools/PDL-IO-HDF5-0.6.tar.gz
tar xvfz PDL-IO-HDF5-0.6.tar.gz
cd PDL-IO-HDF5-0.6/
perl Makefile.PL
make
make test
sudo make install
cd ..
wget http://www.lrz.de/services/software/mathematik/gsl/fortran/fgsl-0.9.4.tar.gz
tar xvfz fgsl-0.9.4.tar.gz
cd fgsl-0.9.4
./configure --f90 gfortran
make
sudo make install 