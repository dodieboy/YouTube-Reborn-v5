TARGET = iphone:clang:16.2:14.0
YouTubeReborn_USE_FLEX = 0
YouTubeReborn_USE_FISHHOOK = 0
GO_EASY_ON_ME = 1
ARCHS = arm64
MODULES = jailed
FINALPACKAGE = 1
CODESIGN_IPA = 0

TWEAK_NAME = YouTubeReborn
DISPLAY_NAME = YouTube
BUNDLE_ID = com.google.ios.youtube
INSTALL_TARGET_PROCESSES = YouTube

YouTubeReborn_FILES = Tweak.xm $(shell find Controllers -name '*.m') $(shell find AFNetworking -name '*.m') $(shell find YouTubeExtractor -name '*.m')
YouTubeReborn_IPA = ./tmp/Payload/YouTube.app
YouTubeReborn_CFLAGS = -fobjc-arc -Wno-deprecated-declarations
YouTubeReborn_FRAMEWORKS = UIKit Security Foundation AVFoundation AVKit Photos Accelerate CoreMotion GameController VideoToolbox
YouTubeReborn_EXTRA_FRAMEWORKS = ffmpegkit libavcodec libavdevice libavfilter libavformat libavutil libswresample libswscale
YouTubeReborn_CFLAGS = -FFrameworks -fobjc-arc -Wno-deprecated-declarations
YouTubeReborn_LDFLAGS += -FFrameworks -rpath @loader_path/Frameworks/
YouTubeReborn_LIBRARIES = bz2 c++ iconv z

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tweak.mk
include $(THEOS_MAKE_PATH)/aggregate.mk
