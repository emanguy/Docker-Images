FROM rust:1.85

RUN apt update && \
    apt install -y postgresql-client && \
    rm -rf /var/lib/apt/lists/*
RUN rustup component add rustfmt clippy
RUN cargo install cargo-edit
