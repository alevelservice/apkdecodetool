package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class fk implements o0<fi> {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ dk f6655a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fk(dk dkVar) {
        this.f6655a = dkVar;
    }

    @Override // com.google.android.gms.internal.ads.o0
    public final /* synthetic */ void a(fi fiVar, Map map) {
        int i2;
        if (map != null) {
            String str = (String) map.get("height");
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                int parseInt = Integer.parseInt(str);
                synchronized (this.f6655a) {
                    i2 = this.f6655a.H;
                    if (i2 != parseInt) {
                        this.f6655a.H = parseInt;
                        this.f6655a.requestLayout();
                    }
                }
            } catch (Exception e2) {
                qd.c("Exception occurred while getting webview content height", e2);
            }
        }
    }
}
