package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Set;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class yt extends cw<vt> {
    public yt(Set<ox<vt>> set) {
        super(set);
    }

    public final void a(final Context context) {
        a(new ew(context) { // from class: com.google.android.gms.internal.ads.xt

            /* renamed from: a, reason: collision with root package name */
            private final Context f10425a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10425a = context;
            }

            @Override // com.google.android.gms.internal.ads.ew
            public final void b(Object obj) {
                ((vt) obj).b(this.f10425a);
            }
        });
    }

    public final void b(final Context context) {
        a(new ew(context) { // from class: com.google.android.gms.internal.ads.au

            /* renamed from: a, reason: collision with root package name */
            private final Context f5661a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f5661a = context;
            }

            @Override // com.google.android.gms.internal.ads.ew
            public final void b(Object obj) {
                ((vt) obj).a(this.f5661a);
            }
        });
    }

    public final void c(final Context context) {
        a(new ew(context) { // from class: com.google.android.gms.internal.ads.zt

            /* renamed from: a, reason: collision with root package name */
            private final Context f10850a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10850a = context;
            }

            @Override // com.google.android.gms.internal.ads.ew
            public final void b(Object obj) {
                ((vt) obj).c(this.f10850a);
            }
        });
    }

    public final void a(ey eyVar, Executor executor) {
        a(ox.a(new cu(this, eyVar), executor));
    }
}
