package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import androidx.annotation.Nullable;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class d3 extends e5 {

    /* renamed from: c, reason: collision with root package name */
    private static final AtomicReference<String[]> f12823c = new AtomicReference<>();

    /* renamed from: d, reason: collision with root package name */
    private static final AtomicReference<String[]> f12824d = new AtomicReference<>();

    /* renamed from: e, reason: collision with root package name */
    private static final AtomicReference<String[]> f12825e = new AtomicReference<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public d3(j4 j4Var) {
        super(j4Var);
    }

    private final boolean q() {
        zzae();
        return this.f12908a.j() && this.f12908a.zzab().a(3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final String a(String str) {
        if (str == null) {
            return null;
        }
        return !q() ? str : a(str, j5.f13021b, j5.f13020a, f12823c);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final String b(String str) {
        if (str == null) {
            return null;
        }
        return !q() ? str : a(str, i5.f12982b, i5.f12981a, f12824d);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final String c(String str) {
        if (str == null) {
            return null;
        }
        if (!q()) {
            return str;
        }
        if (str.startsWith("_exp_")) {
            return "experiment_id(" + str + ")";
        }
        return a(str, l5.f13059b, l5.f13058a, f12825e);
    }

    @Override // com.google.android.gms.measurement.internal.e5
    protected final boolean o() {
        return false;
    }

    @Nullable
    private static String a(String str, String[] strArr, String[] strArr2, AtomicReference<String[]> atomicReference) {
        String str2;
        com.google.android.gms.common.internal.m.a(strArr);
        com.google.android.gms.common.internal.m.a(strArr2);
        com.google.android.gms.common.internal.m.a(atomicReference);
        com.google.android.gms.common.internal.m.a(strArr.length == strArr2.length);
        for (int i2 = 0; i2 < strArr.length; i2++) {
            if (r8.e(str, strArr[i2])) {
                synchronized (atomicReference) {
                    String[] strArr3 = atomicReference.get();
                    if (strArr3 == null) {
                        strArr3 = new String[strArr2.length];
                        atomicReference.set(strArr3);
                    }
                    if (strArr3[i2] == null) {
                        strArr3[i2] = strArr2[i2] + "(" + strArr[i2] + ")";
                    }
                    str2 = strArr3[i2];
                }
                return str2;
            }
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final String a(zzai zzaiVar) {
        if (zzaiVar == null) {
            return null;
        }
        if (!q()) {
            return zzaiVar.toString();
        }
        return "origin=" + zzaiVar.f13379g + ",name=" + a(zzaiVar.f13377e) + ",params=" + a(zzaiVar.f13378f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final String a(g gVar) {
        if (gVar == null) {
            return null;
        }
        if (!q()) {
            return gVar.toString();
        }
        return "Event{appId='" + gVar.f12920a + "', name='" + a(gVar.f12921b) + "', params=" + a(gVar.f12925f) + "}";
    }

    @Nullable
    private final String a(zzah zzahVar) {
        if (zzahVar == null) {
            return null;
        }
        if (!q()) {
            return zzahVar.toString();
        }
        return a(zzahVar.j());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final String a(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        if (!q()) {
            return bundle.toString();
        }
        StringBuilder sb = new StringBuilder();
        for (String str : bundle.keySet()) {
            if (sb.length() != 0) {
                sb.append(", ");
            } else {
                sb.append("Bundle[{");
            }
            sb.append(b(str));
            sb.append("=");
            sb.append(bundle.get(str));
        }
        sb.append("}]");
        return sb.toString();
    }
}
