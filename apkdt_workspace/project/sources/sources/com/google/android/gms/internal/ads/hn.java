package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.util.Map;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class hn {

    /* renamed from: a, reason: collision with root package name */
    private final String f7120a;

    /* renamed from: b, reason: collision with root package name */
    private final l4 f7121b;

    /* renamed from: c, reason: collision with root package name */
    private final Executor f7122c;

    /* renamed from: d, reason: collision with root package name */
    private qn f7123d;

    /* renamed from: e, reason: collision with root package name */
    private final o0<Object> f7124e = new kn(this);

    /* renamed from: f, reason: collision with root package name */
    private final o0<Object> f7125f = new mn(this);

    public hn(String str, l4 l4Var, Executor executor) {
        this.f7120a = str;
        this.f7121b = l4Var;
        this.f7122c = executor;
    }

    public final void a(qn qnVar) {
        this.f7121b.a("/updateActiveView", this.f7124e);
        this.f7121b.a("/untrackActiveViewUnit", this.f7125f);
        this.f7123d = qnVar;
    }

    public final void b(fi fiVar) {
        fiVar.zzb("/updateActiveView", this.f7124e);
        fiVar.zzb("/untrackActiveViewUnit", this.f7125f);
    }

    public final void a(fi fiVar) {
        fiVar.zza("/updateActiveView", this.f7124e);
        fiVar.zza("/untrackActiveViewUnit", this.f7125f);
    }

    public final void a() {
        this.f7121b.b("/updateActiveView", this.f7124e);
        this.f7121b.b("/untrackActiveViewUnit", this.f7125f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean a(@Nullable Map<String, String> map) {
        if (map == null) {
            return false;
        }
        String str = map.get("hashCode");
        return !TextUtils.isEmpty(str) && str.equals(this.f7120a);
    }
}
