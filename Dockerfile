FROM gcc:12

WORKDIR /app

COPY . .

RUN g++ -o myapp main.cpp

CMD ["./myapp"]
