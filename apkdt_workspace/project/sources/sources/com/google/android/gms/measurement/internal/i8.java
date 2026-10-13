package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class i8 implements l3 {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ String f12990a;

    /* renamed from: b, reason: collision with root package name */
    private final /* synthetic */ g8 f12991b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i8(g8 g8Var, String str) {
        this.f12991b = g8Var;
        this.f12990a = str;
    }

    @Override // com.google.android.gms.measurement.internal.l3
    public final void a(String str, int i2, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        this.f12991b.a(i2, th, bArr, this.f12990a);
    }
}
