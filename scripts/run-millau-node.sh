#!/bin/bash

# Run a development instance of the Substrate bridge node.

# RUST_LOG=runtime=trace,rpc=debug \
#     ./target/debug/millau-bridge-node --dev --tmp \
#     --rpc-cors=all --unsafe-rpc-external --unsafe-ws-external

# bear
RUST_LOG=runtime=trace,rpc=debug \
    ./target/debug/millau-bridge-node \
        --dev --tmp \
        --port 30333 \
        --ws-port 9945 \
        --rpc-port 9933 \
        --rpc-cors=all --unsafe-rpc-external --unsafe-ws-external
