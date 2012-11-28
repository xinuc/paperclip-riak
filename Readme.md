# Paperclip-Riak

paperclip-riak is a paperclip storage module that allow us to store uploaded files to [Riak](http://basho.com/products/riak-overview).
There are many use cases where storing file in riak is acceptable, especially when we only need to store small files (e.g image thumbnails).

## Usage

  ```rb
    # Gemfile
    gem papeclip-riak
  ```

  ```rb
    class Image < ActiveRecord::Base
      has_attached_file :data,
        :riak_bucket => 'images',
        :riak_endpoint => 'http://127.0.0.1:8098/riak',
        :path => ":id_:style_:filename"
    end
  ```

## License

The MIT License (MIT)

Copyright © 2012 Nugroho Herucahyono

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
