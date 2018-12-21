# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: topodata.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "topodata.KeyRange" do
    optional :start, :bytes, 1
    optional :end, :bytes, 2
  end
  add_message "topodata.TabletAlias" do
    optional :cell, :string, 1
    optional :uid, :uint32, 2
  end
  add_message "topodata.Tablet" do
    optional :alias, :message, 1, "topodata.TabletAlias"
    optional :hostname, :string, 2
    map :port_map, :string, :int32, 4
    optional :keyspace, :string, 5
    optional :shard, :string, 6
    optional :key_range, :message, 7, "topodata.KeyRange"
    optional :type, :enum, 8, "topodata.TabletType"
    optional :db_name_override, :string, 9
    map :tags, :string, :string, 10
    optional :mysql_hostname, :string, 12
    optional :mysql_port, :int32, 13
  end
  add_message "topodata.Shard" do
    optional :master_alias, :message, 1, "topodata.TabletAlias"
    optional :key_range, :message, 2, "topodata.KeyRange"
    repeated :served_types, :message, 3, "topodata.Shard.ServedType"
    repeated :source_shards, :message, 4, "topodata.Shard.SourceShard"
    repeated :cells, :string, 5
    repeated :tablet_controls, :message, 6, "topodata.Shard.TabletControl"
  end
  add_message "topodata.Shard.ServedType" do
    optional :tablet_type, :enum, 1, "topodata.TabletType"
    repeated :cells, :string, 2
  end
  add_message "topodata.Shard.SourceShard" do
    optional :uid, :uint32, 1
    optional :keyspace, :string, 2
    optional :shard, :string, 3
    optional :key_range, :message, 4, "topodata.KeyRange"
    repeated :tables, :string, 5
  end
  add_message "topodata.Shard.TabletControl" do
    optional :tablet_type, :enum, 1, "topodata.TabletType"
    repeated :cells, :string, 2
    optional :disable_query_service, :bool, 3
    repeated :blacklisted_tables, :string, 4
    optional :frozen, :bool, 5
  end
  add_message "topodata.Keyspace" do
    optional :sharding_column_name, :string, 1
    optional :sharding_column_type, :enum, 2, "topodata.KeyspaceIdType"
    repeated :served_froms, :message, 4, "topodata.Keyspace.ServedFrom"
  end
  add_message "topodata.Keyspace.ServedFrom" do
    optional :tablet_type, :enum, 1, "topodata.TabletType"
    repeated :cells, :string, 2
    optional :keyspace, :string, 3
  end
  add_message "topodata.ShardReplication" do
    repeated :nodes, :message, 1, "topodata.ShardReplication.Node"
  end
  add_message "topodata.ShardReplication.Node" do
    optional :tablet_alias, :message, 1, "topodata.TabletAlias"
  end
  add_message "topodata.ShardReference" do
    optional :name, :string, 1
    optional :key_range, :message, 2, "topodata.KeyRange"
  end
  add_message "topodata.SrvKeyspace" do
    repeated :partitions, :message, 1, "topodata.SrvKeyspace.KeyspacePartition"
    optional :sharding_column_name, :string, 2
    optional :sharding_column_type, :enum, 3, "topodata.KeyspaceIdType"
    repeated :served_from, :message, 4, "topodata.SrvKeyspace.ServedFrom"
  end
  add_message "topodata.SrvKeyspace.KeyspacePartition" do
    optional :served_type, :enum, 1, "topodata.TabletType"
    repeated :shard_references, :message, 2, "topodata.ShardReference"
  end
  add_message "topodata.SrvKeyspace.ServedFrom" do
    optional :tablet_type, :enum, 1, "topodata.TabletType"
    optional :keyspace, :string, 2
  end
  add_message "topodata.CellInfo" do
    optional :server_address, :string, 1
    optional :root, :string, 2
    optional :region, :string, 3
  end
  add_enum "topodata.KeyspaceIdType" do
    value :UNSET, 0
    value :UINT64, 1
    value :BYTES, 2
  end
  add_enum "topodata.TabletType" do
    value :UNKNOWN, 0
    value :MASTER, 1
    value :REPLICA, 2
    value :RDONLY, 3
    value :BATCH, 3
    value :SPARE, 4
    value :EXPERIMENTAL, 5
    value :BACKUP, 6
    value :RESTORE, 7
    value :DRAINED, 8
  end
end

module Topodata
  KeyRange = Google::Protobuf::DescriptorPool.generated_pool.lookup("topodata.KeyRange").msgclass
  TabletAlias = Google::Protobuf::DescriptorPool.generated_pool.lookup("topodata.TabletAlias").msgclass
  Tablet = Google::Protobuf::DescriptorPool.generated_pool.lookup("topodata.Tablet").msgclass
  Shard = Google::Protobuf::DescriptorPool.generated_pool.lookup("topodata.Shard").msgclass
  Shard::ServedType = Google::Protobuf::DescriptorPool.generated_pool.lookup("topodata.Shard.ServedType").msgclass
  Shard::SourceShard = Google::Protobuf::DescriptorPool.generated_pool.lookup("topodata.Shard.SourceShard").msgclass
  Shard::TabletControl = Google::Protobuf::DescriptorPool.generated_pool.lookup("topodata.Shard.TabletControl").msgclass
  Keyspace = Google::Protobuf::DescriptorPool.generated_pool.lookup("topodata.Keyspace").msgclass
  Keyspace::ServedFrom = Google::Protobuf::DescriptorPool.generated_pool.lookup("topodata.Keyspace.ServedFrom").msgclass
  ShardReplication = Google::Protobuf::DescriptorPool.generated_pool.lookup("topodata.ShardReplication").msgclass
  ShardReplication::Node = Google::Protobuf::DescriptorPool.generated_pool.lookup("topodata.ShardReplication.Node").msgclass
  ShardReference = Google::Protobuf::DescriptorPool.generated_pool.lookup("topodata.ShardReference").msgclass
  SrvKeyspace = Google::Protobuf::DescriptorPool.generated_pool.lookup("topodata.SrvKeyspace").msgclass
  SrvKeyspace::KeyspacePartition = Google::Protobuf::DescriptorPool.generated_pool.lookup("topodata.SrvKeyspace.KeyspacePartition").msgclass
  SrvKeyspace::ServedFrom = Google::Protobuf::DescriptorPool.generated_pool.lookup("topodata.SrvKeyspace.ServedFrom").msgclass
  CellInfo = Google::Protobuf::DescriptorPool.generated_pool.lookup("topodata.CellInfo").msgclass
  KeyspaceIdType = Google::Protobuf::DescriptorPool.generated_pool.lookup("topodata.KeyspaceIdType").enummodule
  TabletType = Google::Protobuf::DescriptorPool.generated_pool.lookup("topodata.TabletType").enummodule
end
