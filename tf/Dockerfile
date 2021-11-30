FROM python:3.7

RUN pip install tensorflow==2.3.0
RUN pip install tensorboard
RUN pip install pyyaml h5py
RUN pip install tensorflow_datasets==2.1.0
WORKDIR /opt

ADD ./train.py /opt/
CMD python train.py
