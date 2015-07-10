require 'rack'
require 'rack/parser'
use Rack::Parser

require './app'
run Sinatra::Application