# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := node_libcurl
DEFS_Debug := \
	'-DNODE_GYP_MODULE_NAME=node_libcurl' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DBUILDING_NODE_EXTENSION' \
	'-DDEBUG' \
	'-D_DEBUG'

# Flags passed to all source files.
CFLAGS_Debug := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-std=c++11 \
	-O2 \
	-Wno-narrowing \
	-g \
	-O0

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++0x

INCS_Debug := \
	-I/home/slaq/.node-gyp/6.9.0/include/node \
	-I/home/slaq/.node-gyp/6.9.0/src \
	-I/home/slaq/.node-gyp/6.9.0/deps/uv/include \
	-I/home/slaq/.node-gyp/6.9.0/deps/v8/include \
	-I$(srcdir)/../nan

DEFS_Release := \
	'-DNODE_GYP_MODULE_NAME=node_libcurl' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DBUILDING_NODE_EXTENSION'

# Flags passed to all source files.
CFLAGS_Release := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-std=c++11 \
	-O2 \
	-Wno-narrowing \
	-fno-omit-frame-pointer

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++0x

INCS_Release := \
	-I/home/slaq/.node-gyp/6.9.0/include/node \
	-I/home/slaq/.node-gyp/6.9.0/src \
	-I/home/slaq/.node-gyp/6.9.0/deps/uv/include \
	-I/home/slaq/.node-gyp/6.9.0/deps/v8/include \
	-I$(srcdir)/../nan

OBJS := \
	$(obj).target/$(TARGET)/src/node_libcurl.o \
	$(obj).target/$(TARGET)/src/Easy.o \
	$(obj).target/$(TARGET)/src/Share.o \
	$(obj).target/$(TARGET)/src/Multi.o \
	$(obj).target/$(TARGET)/src/Curl.o \
	$(obj).target/$(TARGET)/src/CurlHttpPost.o \
	$(obj).target/$(TARGET)/src/string_format.o \
	$(obj).target/$(TARGET)/src/strndup.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-pthread \
	-rdynamic \
	-m64

LDFLAGS_Release := \
	-pthread \
	-rdynamic \
	-m64

LIBS := \
	-L/usr/lib/x86_64-linux-gnu \
	-lcurl

$(obj).target/node_libcurl.node: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/node_libcurl.node: LIBS := $(LIBS)
$(obj).target/node_libcurl.node: TOOLSET := $(TOOLSET)
$(obj).target/node_libcurl.node: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,solink_module)

all_deps += $(obj).target/node_libcurl.node
# Add target alias
.PHONY: node_libcurl
node_libcurl: $(builddir)/node_libcurl.node

# Copy this to the executable output path.
$(builddir)/node_libcurl.node: TOOLSET := $(TOOLSET)
$(builddir)/node_libcurl.node: $(obj).target/node_libcurl.node FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/node_libcurl.node
# Short alias for building this executable.
.PHONY: node_libcurl.node
node_libcurl.node: $(obj).target/node_libcurl.node $(builddir)/node_libcurl.node

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/node_libcurl.node

