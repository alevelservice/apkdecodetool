package com.google.android.gms.internal.ads;

import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zv extends cw<com.google.android.gms.ads.doubleclick.a> implements z {
    public zv(Set<ox<com.google.android.gms.ads.doubleclick.a>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.z
    public final synchronized void onAppEvent(final String str, final String str2) {
        a(new ew(str, str2) { // from class: com.google.android.gms.internal.ads.yv

            /* renamed from: a, reason: collision with root package name */
            private final String f10659a;

            /* renamed from: b, reason: collision with root package name */
            private final String f10660b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10659a = str;
                this.f10660b = str2;
            }

            @Override // com.google.android.gms.internal.ads.ew
            public final void b(Object obj) {
                ((com.google.android.gms.ads.doubleclick.a) obj).onAppEvent(this.f10659a, this.f10660b);
            }
        });
    }
}
