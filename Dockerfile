FROM jupyter/base-notebook:notebook-6.0.0

USER root
RUN apt-get update && apt-get install -y build-essential wget

RUN ln -s /opt/conda/bin/pip /usr/bin/pip3

WORKDIR /opt/setup/
RUN fix-permissions /opt/setup/

USER jovyan

COPY environment.yml .

RUN conda env create -f /opt/setup/environment.yml && conda clean --all -f -y
ENV PATH /opt/conda/envs/python-microscopy/bin:$PATH
ENV CONDA_DEFAULT_ENV python-microscopy

RUN python -m ipykernel install --user --name python-microscopy --display-name="Python microscopy setup"

WORKDIR /home/jovyan/work