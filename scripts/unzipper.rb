#!/usr/bin/env ruby

require 'fileutils'
require 'rubygems/package'
require 'zlib'

#example: ./unzipper.rb /media/thiago/data/lattes/0.tar 0/2137075717847290.zip ../cvs/

# `tar -xvf /media/thiago/data/lattes/0.tar 0/1419722196483320.zip`
`tar -xvf /media/thiago/data/lattes/0.tar --strip-components=1`
`unzip \*.zip -d ../cvs`



for f in *.zip; do
  dir=${f%.zip}

  unzip -d "./cvs/$dir" "./$f"
  mv "./cvs/$dir/curriculo.xml" "./temp/$dir.xml"
done
