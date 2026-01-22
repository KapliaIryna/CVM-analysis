FROM jupyter/minimal-notebook:latest

USER root
RUN mkdir -p /home/jovyan/work/data && chmod -R 777 /home/jovyan/work/data

COPY requirements.txt /tmp/
RUN pip install --no-cache-dir -r /tmp/requirements.txt

COPY . /home/jovyan/work
WORKDIR /home/jovyan/work
USER jovyan