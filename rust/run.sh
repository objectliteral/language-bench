#!/bin/bash

rustc prime.rs -C opt-level=3 && time ./prime