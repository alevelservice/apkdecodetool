package com.google.android.gms.internal.ads;

import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class nt extends cw<st> implements st {
    public nt(Set<ox<st>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.st
    public final void zzcm(final int i2) {
        a(new ew(i2) { // from class: com.google.android.gms.internal.ads.qt

            /* renamed from: a, reason: collision with root package name */
            private final int f9005a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9005a = i2;
            }

            @Override // com.google.android.gms.internal.ads.ew
            public final void b(Object obj) {
                ((st) obj).zzcm(this.f9005a);
            }
        });
    }
}
