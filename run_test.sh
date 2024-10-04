#!/usr/bin/env bash

out=outputs2

sizes=(
tiny
base
small
medium
large
turbo
)

mkdir $out

for size in "${sizes[@]}"; do
    echo -n "$size" >> timings.txt

    # run each, send the whisper command line transcripts and errors to garbage
    { time whisper --output_dir $out/$size carl_sagan.mp3 --language English --model $size >/dev/null 2>&1 ; } 2>> timings.txt

done
