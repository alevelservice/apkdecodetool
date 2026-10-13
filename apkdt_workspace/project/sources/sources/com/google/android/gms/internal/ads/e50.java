package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class e50 implements hz0<fi> {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ String f6338a;

    /* renamed from: b, reason: collision with root package name */
    private final /* synthetic */ Map f6339b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e50(y40 y40Var, String str, Map map) {
        this.f6338a = str;
        this.f6339b = map;
    }

    @Override // com.google.android.gms.internal.ads.hz0
    public final /* synthetic */ void a(fi fiVar) {
        fiVar.zza(this.f6338a, this.f6339b);
    }

    @Override // com.google.android.gms.internal.ads.hz0
    public final void a(Throwable th) {
    }
}
