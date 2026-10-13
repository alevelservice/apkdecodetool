package com.mapbox.android.telemetry;

import android.os.Bundle;

/* compiled from: StagingServerInformation.java */
/* loaded from: classes2.dex */
class f0 implements q {

    /* renamed from: a, reason: collision with root package name */
    private q f15576a;

    @Override // com.mapbox.android.telemetry.q
    public void a(q qVar) {
        this.f15576a = qVar;
    }

    @Override // com.mapbox.android.telemetry.q
    public b0 a(Bundle bundle) {
        String string = bundle.getString("com.mapbox.TestEventsServer");
        String string2 = bundle.getString("com.mapbox.TestEventsAccessToken");
        if (!l0.a(string) && !l0.a(string2)) {
            return a(string, string2);
        }
        return this.f15576a.a(bundle);
    }

    private b0 a(String str, String str2) {
        b0 b0Var = new b0(o.STAGING);
        b0Var.b(str);
        b0Var.a(str2);
        return b0Var;
    }
}
