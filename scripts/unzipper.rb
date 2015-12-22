#!/usr/bin/env ruby

require 'fileutils'
require 'rubygems/package'
require 'zlib'

#example: ./unzipper.rb /media/thiago/data/lattes/0.tar 0/2137075717847290.zip ../cvs/


tar_cmd = "tar -xvf /media/thiago/data/lattes/0.tar 0/2137075717847290.zip -C ../cvs/"
zip_cmd = "unzip ../cvs/0/2137075717847290.zip"
puts tar_cmd
exec tar_cmd
puts zip_cmd
exec zip_cmd
