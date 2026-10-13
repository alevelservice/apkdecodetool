package com.mapbox.android.telemetry;

import android.os.Bundle;

/* compiled from: ChinaServerInformation.java */
/* loaded from: classes2.dex */
class h implements q {

    /* renamed from: a, reason: collision with root package name */
    private q f15587a;

    @Override // com.mapbox.android.telemetry.q
    public void a(q qVar) {
        this.f15587a = qVar;
    }

    @Override // com.mapbox.android.telemetry.q
    public b0 a(Bundle bundle) {
        if (bundle.getBoolean("com.mapbox.CnEventsServer")) {
            return new b0(o.CHINA);
        }
        return this.f15587a.a(bundle);
    }
}
