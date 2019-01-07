# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: vschema.proto

require 'google/protobuf'

require 'query_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "vschema.Keyspace" do
    optional :sharded, :bool, 1
    map :vindexes, :string, :message, 2, "vschema.Vindex"
    map :tables, :string, :message, 3, "vschema.Table"
  end
  add_message "vschema.Vindex" do
    optional :type, :string, 1
    map :params, :string, :string, 2
    optional :owner, :string, 3
  end
  add_message "vschema.Table" do
    optional :type, :string, 1
    repeated :column_vindexes, :message, 2, "vschema.ColumnVindex"
    optional :auto_increment, :message, 3, "vschema.AutoIncrement"
    repeated :columns, :message, 4, "vschema.Column"
    optional :pinned, :string, 5
  end
  add_message "vschema.ColumnVindex" do
    optional :column, :string, 1
    optional :name, :string, 2
    repeated :columns, :string, 3
  end
  add_message "vschema.AutoIncrement" do
    optional :column, :string, 1
    optional :sequence, :string, 2
  end
  add_message "vschema.Column" do
    optional :name, :string, 1
    optional :type, :enum, 2, "query.Type"
  end
  add_message "vschema.SrvVSchema" do
    map :keyspaces, :string, :message, 1, "vschema.Keyspace"
  end
end

module Vschema
  Keyspace = Google::Protobuf::DescriptorPool.generated_pool.lookup("vschema.Keyspace").msgclass
  Vindex = Google::Protobuf::DescriptorPool.generated_pool.lookup("vschema.Vindex").msgclass
  Table = Google::Protobuf::DescriptorPool.generated_pool.lookup("vschema.Table").msgclass
  ColumnVindex = Google::Protobuf::DescriptorPool.generated_pool.lookup("vschema.ColumnVindex").msgclass
  AutoIncrement = Google::Protobuf::DescriptorPool.generated_pool.lookup("vschema.AutoIncrement").msgclass
  Column = Google::Protobuf::DescriptorPool.generated_pool.lookup("vschema.Column").msgclass
  SrvVSchema = Google::Protobuf::DescriptorPool.generated_pool.lookup("vschema.SrvVSchema").msgclass
end