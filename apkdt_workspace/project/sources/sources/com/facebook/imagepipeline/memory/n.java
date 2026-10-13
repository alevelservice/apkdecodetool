package com.facebook.imagepipeline.memory;

import android.util.SparseIntArray;
import com.alipay.mobile.security.bio.utils.FileUtil;
import com.alipay.mobile.security.faceauth.api.AntDetector;

/* compiled from: DefaultNativeMemoryChunkPoolParams.java */
/* loaded from: classes.dex */
public class n {
    public static f0 a() {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sparseIntArray.put(1024, 5);
        sparseIntArray.put(2048, 5);
        sparseIntArray.put(4096, 5);
        sparseIntArray.put(FileUtil.STREAM_BUFFER_SIZE, 5);
        sparseIntArray.put(16384, 5);
        sparseIntArray.put(32768, 5);
        sparseIntArray.put(AntDetector.ACTION_ID_SAMPLE, 5);
        sparseIntArray.put(AntDetector.SCENE_ID_LOGIN_REGIST, 5);
        sparseIntArray.put(262144, 2);
        sparseIntArray.put(524288, 2);
        sparseIntArray.put(1048576, 2);
        return new f0(c(), b(), sparseIntArray);
    }

    private static int b() {
        int min = (int) Math.min(Runtime.getRuntime().maxMemory(), 2147483647L);
        if (min < 16777216) {
            return min / 2;
        }
        return (min / 4) * 3;
    }

    private static int c() {
        int min = (int) Math.min(Runtime.getRuntime().maxMemory(), 2147483647L);
        if (min < 16777216) {
            return 3145728;
        }
        return min < 33554432 ? 6291456 : 12582912;
    }
}
