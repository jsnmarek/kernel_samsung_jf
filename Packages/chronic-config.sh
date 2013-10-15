#!/system/bin/sh
#Script originally made by Axetilen. Modified by Sultan (android1234567)
#Updated for albinoman887's ChronicKernel (98% of the credit goes to android1234567. Thanks so much man :)
#Updated for ChronicKernel-pyramid-linaro
#adapted for Galaxy S4 kernel

# Configure your options here #


# Config default CPU Gonvernor
# Kernel Default: intellidemand
# Uncomment desired governor by removing the "#" symbal before desired gov
# and add a "#" to the old line

# Possible values

# GOV+smartmax
# GOV=smartassH3
# GOV=linoheart
# GOV=badass
# GOV=wheatley
# GOV=userspace
# GOV=consevative
# GOV=ktoonservativeq
# GOV=interactive
# GOV=lagfee
# GOV=performance
# GOV=ondemand
GOV=intellidemand

# Config CPU frequency
# Default: 1890000 (1890Mhtz)
# Recomended: 1998000 (1.99Ghtz)
# Range: 81000 - 2322000 (81Mhtz - 2.32Ghtz)
#
# Max/Min
MAXFREQ=1944000
MINFREQ=189000


# Config 3D GPU clock
# 320000000 = 320mhz (Underclocked)
# 400000000 = 400mhz (Default)
# 450000000 = 450mhz (Recomended For balance of Performance and Battery life)
# 504000000 = 504mhz (Performance)
# 545000000 = 545mhz (Super)
# 600000000 = 600mhz (Crazy)
# 627000000 = 627mhz (Insane)
GPU=504000000


# Enable Fastcharge
# 0 = disabled
# 1 = substitute AC to USB charging always
# 2 = substitute AC to USB charging only if there is no USB peripheral detected
FASTCHARGE=0


# dyn Fsync Control
# Enabled by default (recomended)
# 0 = dyn Fsync disabled
# 1 = dyn Fsync enabled
DYNFSYNC=1


# End of configurable options #


################# DON'T CHANGE ANYTHING BELOW THIS LINE #################


# Config CPU Frequency
    sleep 3
    chmod 644 /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
    echo $MAXFREQ > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
    chmod 644 /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
    echo $MINFREQ > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq

    chmod 644 /sys/devices/system/cpu/cpu1/cpufreq/scaling_max_freq
    echo $MAXFREQ > /sys/devices/system/cpu/cpu1/cpufreq/scaling_max_freq
    chmod 644 /sys/devices/system/cpu/cpu1/cpufreq/scaling_min_freq
    echo $MINFREQ > /sys/devices/system/cpu/cpu1/cpufreq/scaling_min_freq

    chmod 644 /sys/devices/system/cpu/cpu2/cpufreq/scaling_max_freq
    echo $MAXFREQ > /sys/devices/system/cpu/cpu2/cpufreq/scaling_max_freq
    chmod 644 /sys/devices/system/cpu/cpu2/cpufreq/scaling_min_freq
    echo $MINFREQ > /sys/devices/system/cpu/cpu2/cpufreq/scaling_min_freq

    chmod 644 /sys/devices/system/cpu/cpu3/cpufreq/scaling_max_freq
    echo $MAXFREQ > /sys/devices/system/cpu/cpu3/cpufreq/scaling_max_freq
    chmod 644 /sys/devices/system/cpu/cpu3/cpufreq/scaling_min_freq
    echo $MINFREQ > /sys/devices/system/cpu/cpu3/cpufreq/scaling_min_freq


## Config CPU governor
    sleep 3
    echo "$GOV" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
    echo "$GOV" > /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor
    echo "$GOV" > /sys/devices/system/cpu/cpu2/cpufreq/scaling_governor
    echo "$GOV" > /sys/devices/system/cpu/cpu3/cpufreq/scaling_governor


# Config 3D GPU setting
    echo $GPU > /sys/devices/platform/kgsl-3d0.0/kgsl/kgsl-3d0/max_gpuclk


# Config USB forced fastcharge
    echo "$FASTCHARGE" > /sys/kernel/fast_charge/force_fast_charge


# Config dyn Fsync
    echo $DYNFSYNC > /sys/kernel/dyn_fsync/Dyn_fsync_active
