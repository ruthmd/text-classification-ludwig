FROM tensorflow/tensorflow:1.15.2-py3

RUN apt-get -y update && apt-get -y install git libsndfile1 && pip install ludwig[full]

WORKDIR /app

ENTRYPOINT ["ludwig"]