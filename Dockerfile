FROM python:3.11.9-slim-bullseye

ARG POETRY_VERSION=1.8.2
ARG POETRY_DOWNLOAD=https://install.python-poetry.org
ARG PROJECT_URL=https://github.com/ZacSchepis/simple_calc.git
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
WORKDIR /app/simple_calc
RUN git checkout docker

RUN poetry install
ENTRYPOINT ["poetry"]
CMD ["run", "pytest"]