#/bin/bash

# Set environment variables for GPU
export GPU_FORCE_64BIT_PTR=0
export GPU_MAX_HEAP_SIZE=100
export GPU_USE_SYNC_OBJECTS=1
export GPU_MAX_ALLOC_PERCENT=100
export GPU_SINGLE_ALLOC_PERCENT=100

# Record time for log (helps with tracking energy consumption or uptime)
echo `date '+%Y-%m-%d %H:%M:%S'` >> log.txt
sleep 1

# Start SRBMiner with the specified configuration
./SRBMiner-MULTI --algorithm fishhash --disable-cpu --pool stratum+ssl://fishhash.unmineable.com:4444 --wallet SHIB:0x71DEbf64059894BB515C3966501485723aBc6140.WORKER1 --disable-ptx-check
