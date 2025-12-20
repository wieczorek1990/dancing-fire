#!/usr/bin/env fish

set dir (status dirname)

function resize_svg
    set scaller $argv[1]
    set side $argv[2]
    inkscape -o "./Images/logo-$scaller.png" -w "$side" -h "$side" './img/logo.svg'
end

function resize_all
    resize_svg 16-1x 16
    resize_svg 32-2x 32

    resize_svg 32-1x 32
    resize_svg 64-2x 64

    resize_svg 128-1x 128
    resize_svg 256-2x 256

    resize_svg 256-1x 256
    resize_svg 512-2x 512

    resize_svg 512-1x 512
    resize_svg 1024-2x 1024
end

cd {$dir}/../
resize_all
cd -
