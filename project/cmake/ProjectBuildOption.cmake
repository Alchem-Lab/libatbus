﻿# 默认配置选项
#####################################################################

# atbus 选项
set(ATBUS_MACRO_BUSID_TYPE "uint64_t" CACHE STRING "busid type")
set(ATBUS_MACRO_DATA_NODE_SIZE 128 CACHE STRING "node size of (shared) memory channel(must be power of 2)")
set(ATBUS_MACRO_DATA_ALIGN_TYPE "uint64_t" CACHE STRING "memory align type(used to check the hash of data and memory padding)")

# for now, other component in io_stream_connection cost 472 bytes, make_shared will also cost some memory.
# we hope one connection will cost no more than 4KB, so 100K connections will cost no more than 400MB memory
# so we use 3KB for small message buffer, and left about 500 Bytes in feture use.
# This can be 512 or smaller (but not smaller than 32), but in most server environment, memory is cheap and there are only few connections between server and server. 
set(ATBUS_MACRO_DATA_SMALL_SIZE 3072 CACHE STRING "small message buffer for io_stream channel(used to reduce memory copy when there are many small messages)")

set(ATBUS_MACRO_HUGETLB_SIZE 4194304 CACHE STRING "huge page size in shared memory channel(unused now)")
set(ATBUS_MACRO_MSG_LIMIT 65536 CACHE STRING "message size limit")
set(ATBUS_MACRO_CONNECTION_CONFIRM_TIMEOUT 30 CACHE STRING "connection confirm timeout")
set(ATBUS_MACRO_CONNECTION_BACKLOG 128 CACHE STRING "tcp backlog")

# libuv选项
set(LIBUV_ROOT "" CACHE STRING "libuv root directory")

# 测试配置选项
set(GTEST_ROOT "" CACHE STRING "GTest root directory")
set(BOOST_ROOT "" CACHE STRING "Boost root directory")
option(PROJECT_TEST_ENABLE_BOOST_UNIT_TEST "Enable boost unit test." OFF)
