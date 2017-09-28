FROM circleci/android:api-26-alpha

ENV ANDROID_NDK_VERSION r14b

# ------------------------------------------------------
# --- Android NDK

# download
RUN ls ~ && \
    mkdir ~/android-ndk && \
    cd ~/android-ndk && \
    wget -q https://dl.google.com/android/repository/android-ndk-${ANDROID_NDK_VERSION}-linux-x86_64.zip && \
# uncompress
    unzip -q android-ndk-${ANDROID_NDK_VERSION}-linux-x86_64.zip

# add to PATH
ENV PATH ${PATH}:~/android-ndk/android-ndk-${ANDROID_NDK_VERSION}
