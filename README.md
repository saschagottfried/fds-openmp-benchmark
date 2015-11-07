# fds-openmp-benchmark

Assess OpenMP speedup for latest versions of FDS.

This project is inspired by [OpenMP benchmark conducted by Thunderhead Engineering in 08/2014](http://www.thunderheadeng.com/2014/08/openmp-benchmarks/). Run this benchmark when newer FDS versions are released.

## The model
A simple burner that uses 1 mesh with 1.5 million cells and simulates 10 seconds of model time. This model was designed to give good OpenMP performance based on guidance in the NIST wiki document [Running FDS with OpenMP](https://github.com/firemodels/fds-smv/wiki/OpenMP-Notes) which suggests that cell counts in the 0.5 million to 2 million cell range will demonstrate the most speedup as additional threads are added.


![Image of FDS Model](/images/burner-model.png)

## Benchmark OpenMP speed up

* compare OpenMP speedup of latest three versions of FDS (6.1, 6.2, 6.3)
* run model using 1-4 OpenMP threads (upper limit corresponds to available cores)
* we do not run in Hyperthreading mode


## Data Exploration & Visualization

* Interactive Data Exploration using Smokeview & IPython Notebook
* Script creation of 2D & 3D resources


## Bootstrapping FDS Runtime Environment using fds-vagrant kit
* support multiple version of FDS to run the model
  * [complete list of releases](http://firemodels.github.io/fds-smv/downloads.html)
* manage MPI installation/configuration
* manage environment variables like `LD_LIBRARY_PATH` 
  * `export LD_LIBRARY_PATH=$PATH_TO_FDS_INSTALLATION/bin/LIB64:$LD_LIBRARY_PATH` 
  * manage user limits for Linux and MacOSX systems


## Reaching your audience

Introduction Page
* [Writing an intoduction page with GitHub Markdown]()


Write Larger Documentation 
* [Getting Started with GitHub Pages](https://guides.github.com/features/pages)
* 

Continuous Documentation
* [Getting Started with Read The Docs](https://read-the-docs.readthedocs.org/en/latest/getting_started.html#getting-started)


## Future work

Add more examples
* Thunderhead Engineering provides plenty of [Pyrosim Tutorials](http://www.thunderheadeng.com/pyrosim/fundamentals/)


## Add features to improve working environment

Managing FDS processes with Supervisor
* [A buildout recipe to install supervisor](https://pypi.python.org/pypi/collective.recipe.supervisor)
* [Monitoring Processes with Supervisord](https://serversforhackers.com/monitoring-processes-with-supervisord)


Planning multiple jobs using a job/task queue system
* http://python-rq.org/patterns/supervisor/

## Learning resources
* [Get Python using Miniconda](https://github.com/nicholsn/ansible-role-miniconda)
* [Get OpenMPI for multi-mesh workloads](https://github.com/mrahtz/mpi-vagrant)