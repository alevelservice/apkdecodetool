package com.google.android.gms.common.api;

import android.text.TextUtils;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.a;
import java.util.ArrayList;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public class c extends Exception {
    private final a.e.a<com.google.android.gms.common.api.internal.b<?>, ConnectionResult> zaba;

    public c(a.e.a<com.google.android.gms.common.api.internal.b<?>, ConnectionResult> aVar) {
        this.zaba = aVar;
    }

    public ConnectionResult getConnectionResult(e<? extends a.d> eVar) {
        com.google.android.gms.common.api.internal.b<? extends a.d> a2 = eVar.a();
        com.google.android.gms.common.internal.m.a(this.zaba.get(a2) != null, "The given API was not part of the availability request.");
        return this.zaba.get(a2);
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        ArrayList arrayList = new ArrayList();
        boolean z = true;
        for (com.google.android.gms.common.api.internal.b<?> bVar : this.zaba.keySet()) {
            ConnectionResult connectionResult = this.zaba.get(bVar);
            if (connectionResult.o()) {
                z = false;
            }
            String a2 = bVar.a();
            String valueOf = String.valueOf(connectionResult);
            StringBuilder sb = new StringBuilder(String.valueOf(a2).length() + 2 + String.valueOf(valueOf).length());
            sb.append(a2);
            sb.append(": ");
            sb.append(valueOf);
            arrayList.add(sb.toString());
        }
        StringBuilder sb2 = new StringBuilder();
        if (z) {
            sb2.append("None of the queried APIs are available. ");
        } else {
            sb2.append("Some of the queried APIs are unavailable. ");
        }
        sb2.append(TextUtils.join("; ", arrayList));
        return sb2.toString();
    }

    public final a.e.a<com.google.android.gms.common.api.internal.b<?>, ConnectionResult> zaj() {
        return this.zaba;
    }

    public ConnectionResult getConnectionResult(g<? extends a.d> gVar) {
        com.google.android.gms.common.api.internal.b<? extends a.d> a2 = gVar.a();
        com.google.android.gms.common.internal.m.a(this.zaba.get(a2) != null, "The given API was not part of the availability request.");
        return this.zaba.get(a2);
    }
}
