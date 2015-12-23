#!/usr/bin/env ruby

require 'fileutils'
require 'rubygems/package'
require 'zlib'

#example: ./unzipper.rb /media/thiago/data/lattes/0.tar 0/2137075717847290.zip ../cvs/

`tar -xvf /media/thiago/data/lattes/0.tar 0/1419722196483320.zip`
`unzip 0/\*.zip -d ../cvs`
`rm -rf 0/` #TODO nao deveria criar esse diretorio 0/
