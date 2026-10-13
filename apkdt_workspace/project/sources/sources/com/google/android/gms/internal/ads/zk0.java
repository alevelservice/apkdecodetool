package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.ArrayList;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final /* synthetic */ class zk0 implements pw0 {

    /* renamed from: a, reason: collision with root package name */
    static final pw0 f10775a = new zk0();

    private zk0() {
    }

    @Override // com.google.android.gms.internal.ads.pw0
    public final Object apply(Object obj) {
        final ArrayList arrayList = (ArrayList) obj;
        if (arrayList.isEmpty()) {
            return null;
        }
        return new lo0(arrayList) { // from class: com.google.android.gms.internal.ads.yk0

            /* renamed from: a, reason: collision with root package name */
            private final ArrayList f10574a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10574a = arrayList;
            }

            @Override // com.google.android.gms.internal.ads.lo0
            public final void a(Object obj2) {
                ((Bundle) obj2).putStringArrayList("android_permissions", this.f10574a);
            }
        };
    }
}
