package com.google.android.gms.internal.ads;

import android.os.Bundle;
import androidx.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class fo0 implements ko0<lo0<Bundle>> {

    /* renamed from: a, reason: collision with root package name */
    private final boolean f6697a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fo0(@Nullable br0 br0Var) {
        if (br0Var != null) {
            this.f6697a = br0Var.f5851a;
        } else {
            this.f6697a = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.ko0
    public final qz0<lo0<Bundle>> a() {
        return gz0.a(this.f6697a ? io0.f7348a : null);
    }
}
