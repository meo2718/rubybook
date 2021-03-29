require "net/http"
require "uri"
uri = Uri.parse("https://example.com/")
puts Net::HTTP.get(uri)
