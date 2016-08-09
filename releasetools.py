import common
import edify_generator

def ModifyBegin(info):
  edify = info.script
  edify.script[0] = \
  '''ifelse(is_mounted("/system"), unmount("/system"));
ui_print("******************************************");
ui_print("* Flyme for Lenovo k3note (k50t5)");
ui_print("*");
ui_print("* Romer: Po_Chan");
ui_print("* http://weibo.com/PoChanL");
ui_print("******************************************");\n''' + edify.script[0]

def ModifyCommand(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "mount(" in edify.script[i] and "by-name/system" in edify.script[i]:
      edify.script[i] = 'mount("ext4", "EMMC", "/dev/block/platform/mtk-msdc.0/by-name/system", "/system");'
    elif "package_extract_dir(" in edify.script[i] and "recovery" in edify.script[i]:
      edify.script[i] = 'ui_print("{*} Extracting System");'

def ModifySystem(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "mount(" in edify.script[i] and "by-name/system" in edify.script[i]:
      edify.script[i] = 'mount("ext4", "EMMC", "/dev/block/platform/mtk-msdc.0/by-name/system", "/system");'

def AddPrompt(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "format(" in edify.script[i] and "by-name/system" in edify.script[i]:
      edify.script[i] = 'ui_print("{*} Formatting System");\n' + edify.script[i]
    elif 'set_metadata_recursive("/system"' in edify.script[i]:
      edify.script[i] = 'ui_print("{*} Setting Permissions");\n' + edify.script[i]
    elif 'package_extract_file("boot' in edify.script[i]:
      edify.script[i] = 'ui_print("{*} Flashing Kernel");\n' + edify.script[i]

def AddSuperSU(info):
    SuperSU = info.input_zip.read("META/SuperSU.zip")
    common.ZipWriteStr(info.output_zip, "SuperSU/SuperSU.zip", SuperSU)
    info.script.AppendExtra(('ui_print("{*} Flashing SuperSU");'))
    info.script.AppendExtra(('package_extract_dir("SuperSU", "/tmp/supersu");'))
    info.script.AppendExtra(('run_program("/sbin/busybox", "unzip", "/tmp/supersu/SuperSU.zip", "META-INF/com/google/android/*", "-d", "/tmp/supersu");'))
    info.script.AppendExtra(('run_program("/sbin/busybox", "sh", "/tmp/supersu/META-INF/com/google/android/update-binary", "dummy", "1", "/tmp/supersu/SuperSU.zip");'))
    info.script.AppendExtra(('ui_print("{*} Finish!");'))

def FullOTA_InstallEnd(info):
    ModifyBegin(info)
    ModifyCommand(info)
    AddPrompt(info)
    AddSuperSU(info)

def IncrementalOTA_InstallEnd(info):
    ModifySystem(info)
