FROM python:3.10
RUN git clone -b Beca-Userbot https://github.com/becauserbot/Beca-Userbot /home/Becauserbot/ \
    && chmod 777 /home/Becauserbot \
    && mkdir /home/Becauserbot/bin/

COPY ./sample_config.env ./config.env* /home/Becauserbot/

WORKDIR /home/Becauserbot/

RUN pip install --upgrade pip
RUN pip install --upgrade pip setuptools wheel
RUN pip install av
RUN pip install av --no-binary av
RUN pip install -r requirements.txt

CMD ["bash","start"]
