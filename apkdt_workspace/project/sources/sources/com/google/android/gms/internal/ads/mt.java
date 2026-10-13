package com.google.android.gms.internal.ads;

import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class mt extends cw<ot> implements ot {
    public mt(Set<ox<ot>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.ot
    public final void onAdFailedToLoad(final int i2) {
        a(new ew(i2) { // from class: com.google.android.gms.internal.ads.lt

            /* renamed from: a, reason: collision with root package name */
            private final int f7973a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7973a = i2;
            }

            @Override // com.google.android.gms.internal.ads.ew
            public final void b(Object obj) {
                ((ot) obj).onAdFailedToLoad(this.f7973a);
            }
        });
    }
}
