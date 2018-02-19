#!/usr/bin/env ruby
# encoding: utf-8

require "erb"
require 'terminal-table'

@base_dir = File.dirname(__FILE__)

@cheat_sheet = {}

def strip line, tag
  line[line.index(tag) + tag.length, line.length].strip
end

def get_section symbol
  @cheat_sheet[symbol] = [] if @cheat_sheet[symbol].nil?
  @cheat_sheet[symbol]
end

def get_variable_for_section section
  case section
  when /visual/
    get_section :visual_mode
  when /insert/
    get_section :insert_mode
  when /command_line/
    get_section :command_line
  when /registers/
    get_section :registers
  when /normal/
    get_section :normal_mode
  else
    raise Exception.new "Unknown section #{section}"
  end
end

def get_variable_for_command command
  case command
  when /^noremap/
    get_section :normal_mode_keys
  when /^nnoremap/
    get_section :normal_mode_keys
  when /^nmap/
    get_section :normal_mode_keys
  else
    raise Exception.new "Unknown command #{command}"
  end
end

def put_line_for_tag variable, tag
  variable << "#{tag}"
end

def put_line_for_key variable, keys, binding, last_key_tag
  variable << [keys, "#{binding}"]
  variable << ["", ""]
  variable << ["", last_key_tag]
  variable << ["", ""]
end

def parse_cheat_tag tag
  section = tag.split(" ")[0]
  variable = get_variable_for_section section
  put_line_for_tag variable, strip(tag, section)
end

def read_documentation
  Dir.glob("#{@base_dir}/../../../vimrc.d/**/*").each do |file|
    last_key_tag = ""
    File.readlines(file, encoding: "utf-8").each do |line|
      if /^\s*".*/ =~ line
        case line
        when /@cheat/
          parse_cheat_tag(strip(line, "@cheat"))
        when /@key/
          last_key_tag = strip(line, "@key")
        end
      end
      if /^\s*[^" \t]*map/ =~ line
        (command, keys) = line.strip.split(" ")
        if last_key_tag != ""
          variable = get_variable_for_command(command)
          put_line_for_key variable, keys, "", last_key_tag
        end
        last_key_tag = ""
      end
    end
  end
end

def write_cheat_sheet
  @last_change = Time.now
  @vim_mode_line = "         vim:tw=78:ts=8:ft=help:norl:"

  File.open('cheat-sheet.txt', 'w') do |f|
    f.write ERB.new(File.read("cheat-sheet.erb", encoding: "utf-8"), nil, "%>").result( binding )
  end
end

read_documentation
write_cheat_sheet
