package com.google.android.gms.internal.measurement;

import android.os.Binder;

/* loaded from: classes.dex */
public final /* synthetic */ class k1 {
    public static <V> V a(j1<V> j1Var) {
        try {
            return j1Var.a();
        } catch (SecurityException unused) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                return j1Var.a();
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
    }
}
