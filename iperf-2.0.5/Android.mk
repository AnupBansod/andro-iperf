ifneq ($(TARGET_SIMULATOR),true)

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
IPERF_SOURCES:= compat/snprintf.c compat/string.c compat/inet_pton.c compat/signal.c\
 compat/error.c compat/gettimeofday.c compat/Thread.c\
 compat/inet_ntop.c src/ReportCSV.c src/tcp_window_size.c\
 src/gnu_getopt.c src/stdio.c src/sockets.c src/SocketAddr.c src/ReportDefault.c\
 src/Locale.c src/gnu_getopt_long.c src/service.c src/Reporter.c src/Extractor.c\
 compat/delay.cpp src/Listener.cpp src/Server.cpp src/List.cpp src/Launch.cpp src/Settings.cpp\
 src/PerfSocket.cpp src/main.cpp src/Client.cpp

#LOCAL_CFLAGS := -O2 -g

LOCAL_MODULE := iperf

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)

LOCAL_SRC_FILES:= $(IPERF_SOURCES)

LOCAL_C_INCLUDES := $(LOCAL_PATH)/include

LOCAL_CFLAGS := -DHAVE_CONFIG_H


LOCAL_MODULE_TAGS := debug


include $(BUILD_EXECUTABLE)


endif  # TARGET_SIMULATOR != true
