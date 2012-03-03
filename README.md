# Capybara::Puma

The sweet loving marriage of Capybara and Puma. Use a lightweight threaded
server for your Capybara request specs. Reduce select() spam from having
EventMachine running, but still get better performance than Webrick.

There are several advantages to this:
 * A minor performance enhancement in some environments
 * No more CTRL+C fail
 * No depending on really old gems
 * Readable backtraces

## Installation & Usage

Add this line to your application's Gemfile:

    group :test do
      gem 'capybara-puma'
    end

You should no longer need (or indeed want) to specify Capybara in your Gemfile.
If you do, you could end up with out-of-order requires, that will make you a sad
panda running on Thin. If you do specify Capybara in your Gemfile (for example
to use the git repo), do that /after/ capybara-puma.

Or install it yourself as:

    $ gem install capybara-puma

If you break the hook (it runs at startup), you can re-apply it by calling
CapybaraPuma.activate.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

Copyright (c) 2012 James Tucker

MIT License

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
