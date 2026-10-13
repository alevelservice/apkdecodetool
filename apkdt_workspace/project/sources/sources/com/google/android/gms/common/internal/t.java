package com.google.android.gms.common.internal;

import android.content.Intent;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
final class t extends e {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ Intent f5336e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ com.google.android.gms.common.api.internal.j f5337f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ int f5338g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(Intent intent, com.google.android.gms.common.api.internal.j jVar, int i2) {
        this.f5336e = intent;
        this.f5337f = jVar;
        this.f5338g = i2;
    }

    @Override // com.google.android.gms.common.internal.e
    public final void a() {
        Intent intent = this.f5336e;
        if (intent != null) {
            this.f5337f.startActivityForResult(intent, this.f5338g);
        }
    }
}
