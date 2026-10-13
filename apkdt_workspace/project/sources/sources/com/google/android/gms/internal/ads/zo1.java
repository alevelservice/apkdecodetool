package com.google.android.gms.internal.ads;

import android.os.Trace;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zo1 {
    public static void a(String str) {
        if (cp1.f6080a >= 18) {
            Trace.beginSection(str);
        }
    }

    public static void a() {
        if (cp1.f6080a >= 18) {
            Trace.endSection();
        }
    }
}
