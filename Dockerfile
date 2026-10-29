FROM python:3.14.8-slim

WORKDIR /usr/local/app

RUN python -m ensurepip --upgrade
# RUN python -m venv .venv && bash ./.venv/activate
COPY . .

# RUN apt update && apt -y install postgresql;
CMD [ "python3", "ping_db.py"]
