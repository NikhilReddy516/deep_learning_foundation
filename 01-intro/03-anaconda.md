# Anaconda
- A distribution of packages for data science to simplify package management.
- `conda` is a package and environment manager. It comes with Anaconda.
  - Create and manage environments.
  - Manage packages in environments.
- `conda` vs `pip`
  - `conda` packages are focused around data science.
  - `pip` is for general use.
  - `conda` is not Python specific, and can also install non-Python packages.
  - Not all Python libraries are available from the Anaconda distribution and `conda`.

```shell script
# create an environment
conda create -n <env-name> python=<python-version: 2 | 3>

# activate the environment
source activate <env-name

# install packages
conda install numpy=1.10
conda install pandas matplotlib
conda install jupyter notebook

# list packages
conda list

# update packages
conda upgrade conda
conda upgrade --all

# remove packages
conda remove <package-name>
```

- References
  - [Python package management](https://www.tuliren.net/2017/09/10/python-installation)
