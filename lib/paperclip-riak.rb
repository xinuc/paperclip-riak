require 'paperclip'
require 'riak'

module Paperclip
  module Storage
    module Riak

      def self.extended(base)
        attr_accessor :riak_hosts, :riak_bucket, :riak_endpoint, :riak_client

        base.instance_eval do
          self.setup_options
        end
      end

      def url(style=default_style, options={})
        "#{@riak_endpoint}/#{@riak_bucket}/#{path(style)}"
      end

      def riak
        @riak ||= @riak_client || ::Riak::Client.new(@client_options)
      end

      def bucket
        @bucket ||= riak.bucket(@riak_bucket)
      end

      def setup_options
        @client_options = {
          :nodes => @options[:riak_hosts]
        }
        @riak_bucket = @options[:riak_bucket]
        @riak_endpoint = @options[:riak_endpoint]
        @riak_client = @options[:riak_client]
      end

      def exists?(style = default_style)
        if original_filename
          bucket.exists?(path(style))
        else
          false
        end
      end

      def flush_writes
        @queued_for_write.each do |style, file|
          object = ::Riak::RObject.new(bucket, path(style))
          object.raw_data = File.read(file.path)
          object.content_type = file.content_type.to_s.strip
          object.store
        end
        @queued_for_write = {}
      end

      def flush_deletes
        @queued_for_delete.each do |path|
          bucket.delete path
        end
        @queued_for_delete = []
      end

      def copy_to_local_file(style, local_dest_path)
        ::File.open(local_dest_path, 'wb') do |local_file|
          file = bucket.get(path(style))
          local_file.write(file.raw_data)
        end
      end

    end
  end
end
