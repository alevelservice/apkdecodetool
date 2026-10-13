package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class cn implements ym {

    /* renamed from: a, reason: collision with root package name */
    private final ks0 f6071a;

    public cn(ks0 ks0Var) {
        this.f6071a = ks0Var;
    }

    @Override // com.google.android.gms.internal.ads.ym
    public final void a(Map<String, String> map) {
        String str = map.get("render_in_browser");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            this.f6071a.a(Boolean.parseBoolean(str));
        } catch (Exception unused) {
            throw new IllegalStateException("Invalid render_in_browser state");
        }
    }
}
