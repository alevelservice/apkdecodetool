package com.google.android.gms.internal.ads;

import android.os.Build;
import java.util.HashMap;
import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final /* synthetic */ class uq0 implements Callable {

    /* renamed from: e, reason: collision with root package name */
    static final Callable f9796e = new uq0();

    private uq0() {
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        HashMap hashMap = new HashMap();
        String str = (String) mu1.e().a(aw1.I);
        if (str != null && !str.isEmpty()) {
            if (Build.VERSION.SDK_INT >= ((Integer) mu1.e().a(aw1.J)).intValue()) {
                for (String str2 : str.split(",", -1)) {
                    hashMap.put(str2, ed.a(str2));
                }
            }
        }
        return new sq0(hashMap);
    }
}
