FROM circleci/android:api-26-alpha

ENV ANDROID_NDK_HOME ~/android-ndk
ENV ANDROID_NDK_VERSION r14b

# ------------------------------------------------------
# --- Android NDK

# download
RUN mkdir ~/android-ndk-tmp && \
    cd ~/android-ndk-tmp && \
    wget -q https://dl.google.com/android/repository/android-ndk-${ANDROID_NDK_VERSION}-linux-x86_64.zip && \
# uncompress
    unzip -q android-ndk-${ANDROID_NDK_VERSION}-linux-x86_64.zip && \
    ls . && \
# move to its final location
    mv ./android-ndk-${ANDROID_NDK_VERSION} ${ANDROID_NDK_HOME} && \
# remove temp dir
    cd ${ANDROID_NDK_HOME} && \
    rm -rf ~/android-ndk-tmp

# add to PATH
ENV PATH ${PATH}:${ANDROID_NDK_HOME}
