# fds-openmp-benchmark

Answer the question on OpenMP speedup in any custom environment. This project is inspired by [OpenMP benchmark conducted by Thunderhead Engineering in 08/2014](http://www.thunderheadeng.com/2014/08/openmp-benchmarks/). Based on the assumption that the initial answer depends on lots of circumstances people want to re-run this benchmark when newer FDS version were released.

Variables
* FDS Model
* Number of Cores
* FDS Versions


FDS Versions 
* 6.0.1 - 6.3.0 - run benchmark with all or selected versions
* [complete list of releases](http://firemodels.github.io/fds-smv/downloads.html) 


Managing FDS process with Supervisor
* [A buildout recipe to install supervisor](https://pypi.python.org/pypi/collective.recipe.supervisor)
* [Monitoring Processes with Supervisord](https://serversforhackers.com/monitoring-processes-with-supervisord)


Planning multiple jobs using a job/task queue system
* http://python-rq.org/patterns/supervisor/

Publishing results
* [Getting Started with GitHub Pages](https://guides.github.com/features/pages)
