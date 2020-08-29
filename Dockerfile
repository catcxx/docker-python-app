FROM alpine:3.7
RUN echo -e http://mirrors.ustc.edu.cn/alpine/v3.7/main/ > /etc/apk/repositories
LABEL Description="This image is used to start the python Flask app." Version="1.0"
ADD . /code
WORKDIR /code
RUN apk add --no-cache python \
    python-dev \
    py-pip &&\
    pip install --trusted-host e.pypi.python.org -i https://pypi.tuna.tsinghua.edu.cn/simple -r requirements.txt
CMD ["python", "app.py"]
