LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES :=			\
	vbp_h264_parser.c		\
	vbp_vc1_parser.c		\
	vbp_loader.c			\
	vbp_mp42_parser.c		\
	vbp_utils.c			\
	viddec_emit.c			\
	viddec_parse_sc.c		\
	viddec_parse_sc_stub.c		\
	viddec_pm.c			\
	viddec_pm_parser_ops.c		\
	viddec_pm_stubs.c		\
	viddec_pm_tags.c		\
	viddec_pm_utils_bstream.c	\
	viddec_pm_utils_list.c

LOCAL_CFLAGS := -DVBP -DHOST_ONLY

LOCAL_C_INCLUDES +=			\
	$(GLIB_TOP)			\
	$(GLIB_TOP)/glib		\
	$(GLIB_TOP)/android		\
	$(GLIB_TOP)/gobject		\
	$(LOCAL_PATH)/include		\
	$(VENDORS_INTEL_MRST_MIXVBP_ROOT)/viddec_fw/include		   \
	$(VENDORS_INTEL_MRST_MIXVBP_ROOT)/viddec_fw/fw/include		   \
	$(VENDORS_INTEL_MRST_MIXVBP_ROOT)/viddec_fw/fw/codecs/h264/include \
	$(VENDORS_INTEL_MRST_MIXVBP_ROOT)/viddec_fw/fw/codecs/mp2/include  \
	$(VENDORS_INTEL_MRST_MIXVBP_ROOT)/viddec_fw/fw/codecs/mp4/include  \
	$(VENDORS_INTEL_MRST_MIXVBP_ROOT)/viddec_fw/fw/codecs/vc1/include  \
	$(VENDORS_INTEL_MRST_MIXVBP_ROOT)/viddec_fw/fw/codecs/vc1/parser   \
	$(TARGET_OUT_HEADERS)/libmixcommon				   \
	$(TARGET_OUT_HEADERS)/libva

LOCAL_COPY_HEADERS_TO := libmixvbp

LOCAL_COPY_HEADERS :=	\
	vbp_loader.h

LOCAL_MODULE := libmixvbp

LOCAL_SHARED_LIBRARIES :=		\
	libdl				\
	libcutils			\
	libglib-2.0			\
	libgobject-2.0			\
	libgthread-2.0			\
	libgmodule-2.0

include $(BUILD_SHARED_LIBRARY)
