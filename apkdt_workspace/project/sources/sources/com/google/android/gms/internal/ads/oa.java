package com.google.android.gms.internal.ads;

import android.content.Context;
import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class oa extends ja {

    /* renamed from: c, reason: collision with root package name */
    private Context f8501c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public oa(Context context) {
        this.f8501c = context;
    }

    @Override // com.google.android.gms.internal.ads.ja
    public final void a() {
        boolean z;
        try {
            z = com.google.android.gms.ads.l.a.b(this.f8501c);
        } catch (com.google.android.gms.common.e | com.google.android.gms.common.f | IOException | IllegalStateException e2) {
            qd.b("Fail to get isAdIdFakeForDebugLogging", e2);
            z = false;
        }
        kd.a(z);
        StringBuilder sb = new StringBuilder(43);
        sb.append("Update ad debug logging enablement as ");
        sb.append(z);
        qd.d(sb.toString());
    }
}
