FROM python:3.9.0

WORKDIR /app
ARG pip_requirements=requirements.txt
COPY sample.py /app/
COPY ${pip_requirements} /app/
RUN python -m pip install -r ${pip_requirements}
CMD [ "python", "sample.py" ]