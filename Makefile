dtb-$(CONFIG_ARCH_MSM8937) += msm8937-pmi8950-mtp.dtb

always		:= $(dtb-y)
subdir-y	:= $(dts-dirs)
clean-files	:= *.dtb
