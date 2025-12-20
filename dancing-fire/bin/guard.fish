#!/usr/bin/env fish
# Guard!

set dir (status dirname)

echo 'Guard!'

cd {$dir}/..
swift-format --in-place **/*.swift
cd -

echo 'Done.'
