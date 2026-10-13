package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.Intent;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
final class s extends e {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ Intent f5332e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ Activity f5333f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ int f5334g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(Intent intent, Activity activity, int i2) {
        this.f5332e = intent;
        this.f5333f = activity;
        this.f5334g = i2;
    }

    @Override // com.google.android.gms.common.internal.e
    public final void a() {
        Intent intent = this.f5332e;
        if (intent != null) {
            this.f5333f.startActivityForResult(intent, this.f5334g);
        }
    }
}
