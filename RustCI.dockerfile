FROM rust:1.61

RUN cargo install cargo-edit
RUN cargo install cargo-nextest
