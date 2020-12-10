#!/bin/bash

# Run a development instance of the Substrate bridge node.

# RUST_LOG=runtime=trace,rpc=debug \
#     ./target/debug/rialto-bridge-node --dev --tmp \
#     --rpc-cors=all --unsafe-rpc-external --unsafe-ws-external



# bear

# compile
# cargo build -p rialto-bridge-node

# run
RUST_LOG=runtime=trace,rpc=debug \
    ./target/debug/rialto-bridge-node  \
        --dev --tmp \
        --port 30334 \
        --ws-port 9946 \
        --rpc-port 9934 \
        --rpc-cors=all \
        --unsafe-rpc-external \
        --unsafe-ws-external > rialto.log 2>&1
