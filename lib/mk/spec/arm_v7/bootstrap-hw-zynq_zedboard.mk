TMP := $(call select_from_repositories,lib/mk/bootstrap-hw.inc)
BASE_HW_DIR := $(TMP:%lib/mk/bootstrap-hw.inc=%)

INC_DIR += $(REP_DIR)/src/bootstrap/board/zynq_zedboard

SRC_S   += bootstrap/spec/arm/crt0.s

SRC_CC  += bootstrap/board/zynq_qemu/platform.cc
SRC_CC  += bootstrap/spec/arm/arm_v7_cpu.cc
SRC_CC  += bootstrap/spec/arm/cortex_a9_mmu.cc
SRC_CC  += bootstrap/spec/arm/cpu.cc
SRC_CC  += bootstrap/spec/arm/gicv2.cc
SRC_CC  += hw/spec/32bit/memory_map.cc

NR_OF_CPUS = 2

vpath bootstrap/board/zynq_qemu/platform.cc $(BASE_HW_DIR)/src/

include $(BASE_HW_DIR)/lib/mk/bootstrap-hw.inc

CC_CXX_WARN_STRICT =
