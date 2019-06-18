LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := main

SDL_PATH := ../SDL2

LOCAL_C_INCLUDES := $(LOCAL_PATH)/$(SDL_PATH)/include $(LOCAL_PATH)/../SDL2_image $(LOCAL_PATH)/../SDL2_mixer

# Add your application source files here...
LOCAL_SRC_FILES := $(SDL_PATH)/src/main/android/SDL_android_main.c \
	cpp/main.cpp \ cpp/matrix.cpp \ cpp/extra.cpp cpp/screen.cpp cpp/loop.cpp \ cpp/opengl/opengl.cpp cpp/opengl/programs.cpp \ cpp/shapes.cpp cpp/screens/GameScreen.cpp cpp/CubeMesh.cpp cpp/Cube.cpp cpp/Floor.cpp cpp/read.cpp cpp/Player.cpp cpp/audio.cpp cpp/Splash.cpp cpp/Ring.cpp cpp/Coin.cpp cpp/CuttleFish.cpp cpp/fileSystem.cpp cpp/Surface.cpp cpp/ui/InputEvent.cpp cpp/ui/Thumbstick.cpp

LOCAL_SHARED_LIBRARIES := SDL2 SDL2_image SDL2_mixer

LOCAL_LDLIBS := -lGLESv1_CM -lGLESv2 -llog

include $(BUILD_SHARED_LIBRARY)
