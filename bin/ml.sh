nvidia-settings -a "[gpu:0]/GPUGraphicsClockOffset[3]=0" \
                -a "[gpu:0]/GPUMemoryTransferRateOffset[3]=0"

sudo nvidia-smi -i 0 -pl 150
