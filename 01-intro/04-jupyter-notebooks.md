# Jupyter Notebooks
- The notebook is a web application that combines the following components in one sharable document.
  - Explanatory text
  - Math equation
  - Code
  - Visualization

## Literate programming
- Notebooks are a form of literate programming proposed by Donald Knuth in 1984.
- The documentation is written as a narrative alongside the code.
- The idea of literate programming has been extended to a whole programming language, [Eve](http://witheve.com/).

## Mechanism
- Jupyter notebooks grew out of the IPython project, an interactive shell.

![](https://jupyter.readthedocs.io/en/latest/_images/notebook_components.png)

- Code written in the web app is sent through the server to the kernel.
- The kernel runs the code and sends it back to the server.
- Any output is rendered back in the browser.
- Since the notebook and the kernel are separate, the kernel doesn't need to run Python.
- The new name **Jupyter** comes from the combination of **Ju**lia, **Py**thon, and **R**.

## Install and use

- Install with `conda` or `pip`
  - `conda install jupyter notebook`
  - `pip install jupyter notebook`

- Install with Notebook Conda.
  - `conda install nb_conda`
  - If you run the notebook server from a `conda` environment, you'll also have access to the "Conda" tab.
  - Can manage environments from within Jupyter.

## Magic keywords
- Magic keywords are special commands to run in cells that can
  - Control the notebook itself or
  - Perform system calls such as changing directories.
- Syntax
  - Line magic: start with `%`.
  - Cell magic: start with `%%`.
  - These magic keywords are specific to the normal Python kernel.

- `%timeit`
  - Time how long it takes a function to run.
- `%pdb`
  - Turn on the interactive debugger.
- `%matplotlib`
  - Set up `matplotlib + <backend>` to work interactively.
  - By default figures will render in their own window.
  - `%matplotlib inline`: render figure directly in the notebook (use `inline` backend)

```jupyterpython
%matplotlib inline
# render higher resolution images
%config InlineBackend.figure_format = 'retina'
```

- References: [Built-in magic commands](https://ipython.readthedocs.io/en/stable/interactive/magics.html)

## Convert notebooks
- Notebooks are just big JSON files with the extension `.ipynb`.
- Use `nbconvert` to convert notebook to other formats.
  - `jupyter nbconvert notebook.ipynb --to html`
  - `jupyter nbconvert notebook.ipynb --to slides --post serve`
- References: [Using as a command line tool](https://nbconvert.readthedocs.io/en/latest/usage.html)
