package com.google.android.gms.internal.vision;

import android.os.Binder;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final /* synthetic */ class m {
    public static <V> V a(p<V> pVar) {
        try {
            return pVar.a();
        } catch (SecurityException unused) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                return pVar.a();
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
    }
}
