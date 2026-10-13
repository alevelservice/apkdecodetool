package com.google.android.gms.internal.location;

import android.location.Location;
import com.google.android.gms.common.api.internal.k;

/* loaded from: classes.dex */
final class h implements k.b<com.google.android.gms.location.e> {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Location f11690a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(zzax zzaxVar, Location location) {
        this.f11690a = location;
    }

    @Override // com.google.android.gms.common.api.internal.k.b
    public final void a() {
    }

    @Override // com.google.android.gms.common.api.internal.k.b
    public final /* synthetic */ void a(com.google.android.gms.location.e eVar) {
        eVar.onLocationChanged(this.f11690a);
    }
}
