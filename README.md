# fds-openmp-benchmark

Assess OpenMP speedup for latest version of FDS.

This project is inspired by [OpenMP benchmark conducted by Thunderhead Engineering in 08/2014](http://www.thunderheadeng.com/2014/08/openmp-benchmarks/). Run this benchmark when newer FDS versions are released.

## FDS Working Environment
This project provides a working FDS environment out-of-the-box. The only requisite is an installation of Vagrant. Vagrant supports Windows, Linux, MacOSX.

```shell
vagrant@vagrant-ubuntu-trusty-64:~$ FDS-6.3/bin/fds

 Fire Dynamics Simulator

 Current Date     : November  6, 2015  16:08:42
 Version          : FDS 6.3.0
 Revision         : Git-r1-12-gf7f4148
 Revision Date    : Wed Sep 30 23:20:47 2015 -0400
 Compilation Date : Oct 01, 2015  08:23:41

 MPI Enabled; Number of MPI Processes:     1
 OpenMP Enabled; Number of OpenMP Threads:   4

 Consult FDS Users Guide Chapter, Running FDS, for further instructions.

 Hit Enter to Escape...
```


## The model
 a simple burner that uses 1 mesh with 1.5 million cells and simulates 10 seconds of model time. This model was designed to give good OpenMP performance based on guidance in the NIST wiki document [Running FDS with OpenMP](https://github.com/firemodels/fds-smv/wiki/OpenMP-Notes) which suggests that cell counts in the 0.5 million to 2 million cell range will demonstrate the most speedup as additional threads are added.


![Image of FDS Model](/images/burner-model.png)

## Running the model
Running the FDS model is easy as pie.

```shell
vagrant@vagrant-ubuntu-trusty-64:/vagrant/burner-4$ ~/FDS/bin/fds burner-4.fds
 Mesh   1 is assigned to MPI Process   0
 OpenMP thread   0 of   3 assigned to MPI process   0 of   0
 OpenMP thread   2 of   3 assigned to MPI process   0 of   0
 OpenMP thread   3 of   3 assigned to MPI process   0 of   0
 OpenMP thread   1 of   3 assigned to MPI process   0 of   0

 Fire Dynamics Simulator

 Current Date     : November  6, 2015  16:22:28
 Version          : FDS 6.3.0
 Revision         : Git-r1-12-gf7f4148
 Revision Date    : Wed Sep 30 23:20:47 2015 -0400
 Compilation Date : Oct 01, 2015  08:23:41

 MPI Enabled; Number of MPI Processes:     1
 OpenMP Enabled; Number of OpenMP Threads:   4

 Job TITLE        : 
 Job ID string    : burner-4

 Time Step:      1,    Simulation Time:      0.02 s
 Time Step:      2,    Simulation Time:      0.04 s
 Time Step:      3,    Simulation Time:      0.05 s
 Time Step:      4,    Simulation Time:      0.07 s
 Time Step:      5,    Simulation Time:      0.09 s
 Time Step:      6,    Simulation Time:      0.11 s
```

## Benchmark OpenMP speed up

* compare OpenMP speedup of latest versions of FDS (6.1, 6.2, 6.3)
  * [latest releases](http://firemodels.github.io/fds-smv/downloads.html) 
* run model using 1-4 OpenMP threads (upper limit corresponds to available cores)
* Limit the number of threads using the OpenMP Environment to match the number of physical cores. Hyper Threading is not increasing the performance. 


## Bootstrapping FDS Runtime Environment using vagrant
* manage MPI installation/configuration
* manage environment variables like `LD_LIBRARY_PATH` 
  * `export LD_LIBRARY_PATH=$PATH_TO_FDS_INSTALLATION/bin/LIB64:$LD_LIBRARY_PATH` 
  * manage user limits for Linux and MacOSX systems


## Reaching your audience

Introduction Page
* [Writing an intoduction page with GitHub Markdown](https://help.github.com/articles/writing-on-github/)

Write Larger Documentation 
* [Getting Started with GitHub Pages](https://guides.github.com/features/pages)
* [Getting Started with Read The Docs](https://docs.readthedocs.org/en/latest/getting_started.html)


## Future work

Add more examples
* Thunderhead Engineering provides plenty of [Pyrosim Tutorials](http://www.thunderheadeng.com/pyrosim/fundamentals/)


## Data Exploration & Visualization
* Interactive Data Exploration using Smokeview & IPython Notebook
* Script creation of 2D & 3D resources


## Contributing workflow

Here’s how we suggest you go about proposing a change to this project:

1. [Fork this project][fork] to your account.
2. [Create a branch][branch] for the change you intend to make.
3. Make your changes to your fork.
4. [Send a pull request][pr] from your fork’s branch to our `master` branch.

Using the web-based interface to make changes is fine too, and will help you
by automatically forking the project and prompting to send a pull request too.

[fork]: https://help.github.com/articles/fork-a-repo/
[branch]: https://help.github.com/articles/creating-and-deleting-branches-within-your-repository
[pr]: https://help.github.com/articles/using-pull-requests/

## License

[MIT](./LICENSE).
