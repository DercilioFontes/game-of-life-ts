FROM rust:trixie

WORKDIR /usr/src/myapp

COPY ./src ./src

RUN cargo install --path ../../andromeda andromeda

CMD ["andromeda", "run", "src/play.ts"]
