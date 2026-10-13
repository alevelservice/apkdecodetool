package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class zzl extends zzo {

    /* renamed from: e, reason: collision with root package name */
    private final AtomicReference<Bundle> f12246e = new AtomicReference<>();

    /* renamed from: f, reason: collision with root package name */
    private boolean f12247f;

    public final String zza(long j2) {
        return (String) zza(zzb(j2), String.class);
    }

    @Override // com.google.android.gms.internal.measurement.zzp
    public final void zzb(Bundle bundle) {
        synchronized (this.f12246e) {
            try {
                this.f12246e.set(bundle);
                this.f12247f = true;
            } finally {
                this.f12246e.notify();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:3:0x0003, code lost:
    
        r4 = r4.get("r");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> T zza(android.os.Bundle r4, java.lang.Class<T> r5) {
        /*
            r0 = 0
            if (r4 == 0) goto L32
            java.lang.String r1 = "r"
            java.lang.Object r4 = r4.get(r1)
            if (r4 == 0) goto L32
            java.lang.Object r4 = r5.cast(r4)     // Catch: java.lang.ClassCastException -> L10
            return r4
        L10:
            r0 = move-exception
            java.lang.String r5 = r5.getCanonicalName()
            java.lang.Class r4 = r4.getClass()
            java.lang.String r4 = r4.getCanonicalName()
            java.lang.String r1 = "Unexpected object type. Expected, Received"
            java.lang.String r2 = ": %s, %s"
            java.lang.String r1 = r1.concat(r2)
            r2 = 2
            java.lang.Object[] r2 = new java.lang.Object[r2]
            r3 = 0
            r2[r3] = r5
            r5 = 1
            r2[r5] = r4
            java.lang.String.format(r1, r2)
            throw r0
        L32:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzl.zza(android.os.Bundle, java.lang.Class):java.lang.Object");
    }

    public final Bundle zzb(long j2) {
        Bundle bundle;
        synchronized (this.f12246e) {
            if (!this.f12247f) {
                try {
                    this.f12246e.wait(j2);
                } catch (InterruptedException unused) {
                    return null;
                }
            }
            bundle = this.f12246e.get();
        }
        return bundle;
    }
}
