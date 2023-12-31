dtb-$(CONFIG_ARCH_MSM8937) += msm8937-pmi8940-mtp-p201as.dtb

ifeq ($(CONFIG_ARM64),y)
always          := $(dtb-y)
subdir-y        := $(dts-dirs)
else
targets += dtbs
targets += $(addprefix ../, $(dtb-y))

$(obj)/../%.dtb: $(src)/%.dts FORCE
        $(call if_changed_dep,dtc)

dtbs: $(addprefix $(obj)/,$(dtb-y))
endif
clean-files := *.dtb
