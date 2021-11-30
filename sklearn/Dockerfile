FROM python:3.7

RUN pip install -U scikit-learn
RUN pip install pandas
RUN pip install matplotlib
WORKDIR /opt

ADD ./train.py /opt/
ADD ./oneyear.csv /opt/
CMD python *.py
