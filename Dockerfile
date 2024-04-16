FROM python:3.11.9-slim-bullseye

ARG POETRY_VERSION=1.8.2
ARG POETRY_DOWNLOAD=https://install.python-poetry.org
ARG PROJECT_URL=https://github.com/ZacSchepis/simple_calc
ENV PATH="$PATH:/root/.local/bin"
RUN apt-get update \
    && apt-get install -y --no-install-recommends --no-install-suggests -y \
        curl \
        git \
        bash

RUN curl -sSL $POETRY_DOWNLOAD | python3 - --version $POETRY_VERSION
ENV POETRY_VIRTUALENVS_CREATE=false
ENV POETRY=/root/.local/bin/poetry
WORKDIR /app
RUN git clone $PROJECT_URL
WORKDIR /app/
RUN git checkout docker

RUN poetry install
EXPOSE 5000
ENTRYPOINT ["poetry"]
CMD ["run pytest"]