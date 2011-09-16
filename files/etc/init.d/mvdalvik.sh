#!/system/bin/sh
#
# Move dalvik-cache to /cache
#
# Remove Debugger Mem Dumps

if [ ! -d /cache/dalvik-cache ]
then
	busybox rm -rf /cache/dalvik-cache /data/dalvik-cache
	mkdir /cache/dalvik-cache /data/dalvik-cache
fi

busybox chown 1000:1000 /cache/dalvik-cache
busybox chmod 0771 /cache/dalvik-cache

# bind mount dalvik-cache so we can still boot without the sdcard
busybox mount -o bind /cache/dalvik-cache /data/dalvik-cache
busybox chown 1000:1000 /data/dalvik-cache
busybox chmod 0771 /data/dalvik-cache

# remove debugger memory dumps
busybox rm -rf /data/tombstones/*