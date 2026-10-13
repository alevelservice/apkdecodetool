package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class tu extends cw<com.google.android.gms.ads.o.a> implements x {

    /* renamed from: f, reason: collision with root package name */
    private Bundle f9637f;

    public tu(Set<ox<com.google.android.gms.ads.o.a>> set) {
        super(set);
        this.f9637f = new Bundle();
    }

    public final synchronized Bundle g() {
        return new Bundle(this.f9637f);
    }

    @Override // com.google.android.gms.internal.ads.x
    public final synchronized void zza(String str, Bundle bundle) {
        this.f9637f.putAll(bundle);
        a(su.f9449a);
    }
}
