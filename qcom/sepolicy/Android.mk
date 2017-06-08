# Board specific SELinux policy variable definitions
BOARD_SEPOLICY_DIRS := \
       device/qcom/sepolicy

BOARD_SEPOLICY_UNION := \
       genfs_contexts \
       file_contexts \
       file.te \
       device.te \
       vold.te \
       file.te
