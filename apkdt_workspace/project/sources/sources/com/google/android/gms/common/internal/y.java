package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.h;
import com.google.android.gms.common.internal.l;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
final class y implements h.a {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ com.google.android.gms.common.api.h f5342a;

    /* renamed from: b, reason: collision with root package name */
    private final /* synthetic */ e.i.b.b.d.i f5343b;

    /* renamed from: c, reason: collision with root package name */
    private final /* synthetic */ l.a f5344c;

    /* renamed from: d, reason: collision with root package name */
    private final /* synthetic */ l.b f5345d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(com.google.android.gms.common.api.h hVar, e.i.b.b.d.i iVar, l.a aVar, l.b bVar) {
        this.f5342a = hVar;
        this.f5343b = iVar;
        this.f5344c = aVar;
        this.f5345d = bVar;
    }

    @Override // com.google.android.gms.common.api.h.a
    public final void a(Status status) {
        if (status.o()) {
            this.f5343b.a((e.i.b.b.d.i) this.f5344c.a(this.f5342a.a(0L, TimeUnit.MILLISECONDS)));
        } else {
            this.f5343b.a((Exception) this.f5345d.a(status));
        }
    }
}
