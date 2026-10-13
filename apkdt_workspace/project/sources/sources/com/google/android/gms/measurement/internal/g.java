package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    final String f12920a;

    /* renamed from: b, reason: collision with root package name */
    final String f12921b;

    /* renamed from: c, reason: collision with root package name */
    private final String f12922c;

    /* renamed from: d, reason: collision with root package name */
    final long f12923d;

    /* renamed from: e, reason: collision with root package name */
    final long f12924e;

    /* renamed from: f, reason: collision with root package name */
    final zzah f12925f;

    private g(j4 j4Var, String str, String str2, String str3, long j2, long j3, zzah zzahVar) {
        com.google.android.gms.common.internal.m.b(str2);
        com.google.android.gms.common.internal.m.b(str3);
        com.google.android.gms.common.internal.m.a(zzahVar);
        this.f12920a = str2;
        this.f12921b = str3;
        this.f12922c = TextUtils.isEmpty(str) ? null : str;
        this.f12923d = j2;
        this.f12924e = j3;
        long j4 = this.f12924e;
        if (j4 != 0 && j4 > this.f12923d) {
            j4Var.zzab().t().a("Event created with reverse previous/current timestamps. appId, name", f3.a(str2), f3.a(str3));
        }
        this.f12925f = zzahVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final g a(j4 j4Var, long j2) {
        return new g(j4Var, this.f12922c, this.f12920a, this.f12921b, this.f12923d, j2, this.f12925f);
    }

    public final String toString() {
        String str = this.f12920a;
        String str2 = this.f12921b;
        String valueOf = String.valueOf(this.f12925f);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 33 + String.valueOf(str2).length() + String.valueOf(valueOf).length());
        sb.append("Event{appId='");
        sb.append(str);
        sb.append("', name='");
        sb.append(str2);
        sb.append("', params=");
        sb.append(valueOf);
        sb.append('}');
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(j4 j4Var, String str, String str2, String str3, long j2, long j3, Bundle bundle) {
        zzah zzahVar;
        com.google.android.gms.common.internal.m.b(str2);
        com.google.android.gms.common.internal.m.b(str3);
        this.f12920a = str2;
        this.f12921b = str3;
        this.f12922c = TextUtils.isEmpty(str) ? null : str;
        this.f12923d = j2;
        this.f12924e = j3;
        long j4 = this.f12924e;
        if (j4 != 0 && j4 > this.f12923d) {
            j4Var.zzab().t().a("Event created with reverse previous/current timestamps. appId", f3.a(str2));
        }
        if (bundle != null && !bundle.isEmpty()) {
            Bundle bundle2 = new Bundle(bundle);
            Iterator<String> it = bundle2.keySet().iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next == null) {
                    j4Var.zzab().q().a("Param name can't be null");
                    it.remove();
                } else {
                    Object a2 = j4Var.D().a(next, bundle2.get(next));
                    if (a2 == null) {
                        j4Var.zzab().t().a("Param value can't be null", j4Var.C().b(next));
                        it.remove();
                    } else {
                        j4Var.D().a(bundle2, next, a2);
                    }
                }
            }
            zzahVar = new zzah(bundle2);
        } else {
            zzahVar = new zzah(new Bundle());
        }
        this.f12925f = zzahVar;
    }
}
