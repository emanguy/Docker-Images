FROM rust:1.75

RUN apt update && \
    apt install -y postgresql-client && \
    rm -rf /var/lib/apt/lists/*
RUN cargo install cargo-edit
