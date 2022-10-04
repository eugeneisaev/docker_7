FROM python:3

WORKDIR /srv/app

COPY ./web.py ./web.py

COPY ./web.conf ./conf/web.conf

COPY ./requirements.txt ./requirements.txt

RUN pip install -r requirements.txt

ENTRYPOINT [ "python" ]

CMD [ "web.py" ]
