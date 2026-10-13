package com.google.android.gms.internal.ads;

import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class yx extends cw<z0> implements z0 {
    public yx(Set<ox<z0>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.z0
    public final void a(final zzaqd zzaqdVar) {
        a(new ew(zzaqdVar) { // from class: com.google.android.gms.internal.ads.ay

            /* renamed from: a, reason: collision with root package name */
            private final zzaqd f5682a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f5682a = zzaqdVar;
            }

            @Override // com.google.android.gms.internal.ads.ew
            public final void b(Object obj) {
                ((z0) obj).a(this.f5682a);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.z0
    public final void e() {
        a(zx.f10864a);
    }

    @Override // com.google.android.gms.internal.ads.z0
    public final synchronized void f() {
        a(xx.f10441a);
    }
}
