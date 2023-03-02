FROM python
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
ENV FLASK_ENV=production
EXPOSE 8081
CMD ["flask", "run", "--host=0.0.0.0", "--port=8081"]
