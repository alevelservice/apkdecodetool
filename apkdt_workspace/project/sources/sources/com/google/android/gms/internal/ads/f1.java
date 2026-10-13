package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class f1 implements qy0<zzaep, ParcelFileDescriptor> {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ zzaej f6550a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f1(e1 e1Var, zzaej zzaejVar) {
        this.f6550a = zzaejVar;
    }

    @Override // com.google.android.gms.internal.ads.qy0
    public final /* synthetic */ qz0<ParcelFileDescriptor> b(zzaep zzaepVar) {
        he heVar = new he();
        zzaepVar.zza(this.f6550a, new zzaet(this, heVar));
        return heVar;
    }
}
