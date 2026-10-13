package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.alipay.mobile.security.bio.api.BioDetector;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class a1 implements o0<Object> {

    /* renamed from: a, reason: collision with root package name */
    private final z0 f5496a;

    private a1(z0 z0Var) {
        this.f5496a = z0Var;
    }

    public static void a(fi fiVar, z0 z0Var) {
        fiVar.zza("/reward", new a1(z0Var));
    }

    @Override // com.google.android.gms.internal.ads.o0
    public final void a(Object obj, Map<String, String> map) {
        String str = map.get("action");
        if ("grant".equals(str)) {
            zzaqd zzaqdVar = null;
            try {
                int parseInt = Integer.parseInt(map.get(BioDetector.EXT_KEY_AMOUNT));
                String str2 = map.get("type");
                if (!TextUtils.isEmpty(str2)) {
                    zzaqdVar = new zzaqd(str2, parseInt);
                }
            } catch (NumberFormatException e2) {
                qd.c("Unable to parse reward amount.", e2);
            }
            this.f5496a.a(zzaqdVar);
            return;
        }
        if ("video_start".equals(str)) {
            this.f5496a.f();
        } else if ("video_complete".equals(str)) {
            this.f5496a.e();
        }
    }
}
