require 'paperclip'
require 'riak'

module Paperclip
  module Storage
    module Riak

      def self.extended base
      end

      def exists?(style_name = default_style)
      end

      def flush_writes
      end

      def flush_deletes
      end

      def copy_to_local_file(style, local_dest_path)
      end

    end
  end
end
