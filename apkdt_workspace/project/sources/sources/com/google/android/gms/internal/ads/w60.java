package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class w60 implements vt {

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    private final fi f10036e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w60(@Nullable fi fiVar) {
        this.f10036e = ((Boolean) mu1.e().a(aw1.F0)).booleanValue() ? fiVar : null;
    }

    @Override // com.google.android.gms.internal.ads.vt
    public final void a(@Nullable Context context) {
        fi fiVar = this.f10036e;
        if (fiVar != null) {
            fiVar.onResume();
        }
    }

    @Override // com.google.android.gms.internal.ads.vt
    public final void b(@Nullable Context context) {
        fi fiVar = this.f10036e;
        if (fiVar != null) {
            fiVar.onPause();
        }
    }

    @Override // com.google.android.gms.internal.ads.vt
    public final void c(@Nullable Context context) {
        fi fiVar = this.f10036e;
        if (fiVar != null) {
            fiVar.destroy();
        }
    }
}
