FROM python:3.6.5

RUN mkdir /code
COPY . /code
COPY requirements.txt /code
RUN pip install -r /code/requirements.txt -i https://pypi.douban.com/simple
WORKDIR /code

CMD ["/bin/bash","run.sh"]
