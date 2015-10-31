# fds-openmp-benchmark

Answer the question on OpenMP speedup in any custom environment. This project is inspired by [OpenMP benchmark conducted by Thunderhead Engineering in 08/2014](http://www.thunderheadeng.com/2014/08/openmp-benchmarks/). Based on the assumption that the initial answer depends on lots of circumstances people want to re-run this benchmark when newer FDS version were released.

## The model
 a simple burner that uses 1 mesh with 1.5 million cells and simulates 10 seconds of model time. This model was designed to give good OpenMP performance based on guidance in the NIST wiki document [Running FDS with OpenMP](https://github.com/firemodels/fds-smv/wiki/OpenMP-Notes) which suggests that cell counts in the 0.5 million to 2 million cell range will demonstrate the most speedup as additional threads are added.


![Image of Yaktocat](/images/burner-model.png)

Variables
* FDS Model
* Number of Cores
* FDS Versions


Managing FDS Runtime Environment 
* 6.0.1 - 6.3.0 - run benchmark with all or selected versions
* [complete list of releases](http://firemodels.github.io/fds-smv/downloads.html)
* manage environment variables like `LD_LIBRARY_PATH` 
  * `export LD_LIBRARY_PATH=$PATH_TO_FDS_INSTALLATION/bin/LIB64:$LD_LIBRARY_PATH` 


Managing FDS processes with Supervisor
* [A buildout recipe to install supervisor](https://pypi.python.org/pypi/collective.recipe.supervisor)
* [Monitoring Processes with Supervisord](https://serversforhackers.com/monitoring-processes-with-supervisord)


Planning multiple jobs using a job/task queue system
* http://python-rq.org/patterns/supervisor/

Publishing results
* [Getting Started with GitHub Pages](https://guides.github.com/features/pages)
* 


Future work
* [Thunderhead Tutorials](http://www.thunderheadeng.com/pyrosim/fundamentals/)
