#!/system/bin/sh
  echo 1 > /sys/module/sec/parameters/recovery_done
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/recovery:13042988:38c3792141940b9177af4bf5bc61e78e12bf9362; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/boot:9172264:ae6ae29dcc65d05b5fa08f553bb7d78501f52f5e EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/recovery 38c3792141940b9177af4bf5bc61e78e12bf9362 13042988 ae6ae29dcc65d05b5fa08f553bb7d78501f52f5e:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
  if applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/recovery:13042988:38c3792141940b9177af4bf5bc61e78e12bf9362; then
        echo 0 > /sys/module/sec/parameters/recovery_done
        log -t recovery "Install new recovery image completed"
        
  if applysig /system/etc/recovery.sig recovery; then
    sync
    log -t recovery "Apply recovery image signature completed"
  else
    log -t recovery "Apply recovery image signature fail!!"
  fi
  
  else
        echo 2 > /sys/module/sec/parameters/recovery_done
        log -t recovery "Install new recovery image not completed"
  fi
else
  echo 0 > /sys/module/sec/parameters/recovery_done
  log -t recovery "Recovery image already installed"
fi
