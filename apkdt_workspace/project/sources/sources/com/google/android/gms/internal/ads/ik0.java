package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final /* synthetic */ class ik0 implements qy0 {

    /* renamed from: a, reason: collision with root package name */
    static final qy0 f7319a = new ik0();

    private ik0() {
    }

    @Override // com.google.android.gms.internal.ads.qy0
    public final qz0 b(Object obj) {
        final String str = (String) obj;
        return gz0.a(new lo0(str) { // from class: com.google.android.gms.internal.ads.lk0

            /* renamed from: a, reason: collision with root package name */
            private final String f7917a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7917a = str;
            }

            @Override // com.google.android.gms.internal.ads.lo0
            public final void a(Object obj2) {
                ((Bundle) obj2).putString("ms", this.f7917a);
            }
        });
    }
}
