package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
final class j1 {

    /* renamed from: a, reason: collision with root package name */
    private final int f5092a;

    /* renamed from: b, reason: collision with root package name */
    private final ConnectionResult f5093b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j1(ConnectionResult connectionResult, int i2) {
        com.google.android.gms.common.internal.m.a(connectionResult);
        this.f5093b = connectionResult;
        this.f5092a = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ConnectionResult a() {
        return this.f5093b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int b() {
        return this.f5092a;
    }
}
