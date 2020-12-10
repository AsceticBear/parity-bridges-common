#!/bin/bash

# substrate-relay 0.1.0
# Substrate-to-Substrate relay

# USAGE:
#     substrate-relay <SUBCOMMAND>

# FLAGS:
#     -h, --help       Prints help information
#     -V, --version    Prints version information

# SUBCOMMANDS:
#     help                                          Prints this message or the help of the given subcommand(s)
#     initialize-millau-headers-bridge-in-rialto    Initialize Millau headers bridge in Rialto
#     initialize-rialto-headers-bridge-in-millau    Initialize Rialto headers bridge in Millau
#     millau-headers-to-rialto                      Relay Millau headers to Rialto
#     millau-messages-to-rialto                     Serve given lane of Millau -> Rialto messages
#     rialto-headers-to-millau                      Relay Rialto headers to Millau
#     rialto-messages-to-millau                     Serve given lane of Rialto -> Millau messages
#     submit-millau-to-rialto-message               Submit message to given Millau -> Rialto lane
#     submit-rialto-to-millau-message               Submit message to given Rialto -> Millau lane

# bear

# compile
# cargo build -p substrate-relay

# run
./target/debug/substrate-relay initialize-millau-headers-bridge-in-rialto \
    --millau-host 127.0.0.1 \
    --millau-port 9945 \
    --rialto-host 127.0.0.1 \
    --rialto-port 9946 \
    --rialto-signer //Alice

sleep 6

RUST_LOG=substrate-relay=debug \
    ./target/debug/substrate-relay millau-headers-to-rialto \
	--millau-host 127.0.0.1 \
	--millau-port 9945 \
	--rialto-host 127.0.0.1 \
	--rialto-port 9946 \
	--rialto-signer //Alice \
	--prometheus-host=0.0.0.0




