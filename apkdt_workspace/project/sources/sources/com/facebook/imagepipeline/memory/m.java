package com.facebook.imagepipeline.memory;

import android.util.SparseIntArray;
import com.alipay.mobile.security.faceauth.api.AntDetector;

/* compiled from: DefaultFlexByteArrayPoolParams.java */
/* loaded from: classes.dex */
public class m {

    /* renamed from: a, reason: collision with root package name */
    public static final int f3861a = Runtime.getRuntime().availableProcessors();

    public static SparseIntArray a(int i2, int i3, int i4) {
        SparseIntArray sparseIntArray = new SparseIntArray();
        while (i2 <= i3) {
            sparseIntArray.put(i2, i4);
            i2 *= 2;
        }
        return sparseIntArray;
    }

    public static f0 a() {
        int i2 = f3861a;
        return new f0(4194304, i2 * 4194304, a(AntDetector.SCENE_ID_LOGIN_REGIST, 4194304, i2), AntDetector.SCENE_ID_LOGIN_REGIST, 4194304, f3861a);
    }
}
