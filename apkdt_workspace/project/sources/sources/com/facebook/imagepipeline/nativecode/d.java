package com.facebook.imagepipeline.nativecode;

import android.os.Build;
import com.facebook.soloader.SoLoader;

/* compiled from: NativeJpegTranscoderSoLoader.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    private static boolean f3888a;

    public static synchronized void a() {
        synchronized (d.class) {
            if (!f3888a) {
                if (Build.VERSION.SDK_INT <= 16) {
                    try {
                        SoLoader.a("fb_jpegturbo");
                    } catch (UnsatisfiedLinkError unused) {
                    }
                }
                SoLoader.a("native-imagetranscoder");
                f3888a = true;
            }
        }
    }
}
