#!/bin/sh
command_out=$($INPUT_COMMAND --token "$INPUT_TOKEN")
echo ::set-output name=out::$command_out
