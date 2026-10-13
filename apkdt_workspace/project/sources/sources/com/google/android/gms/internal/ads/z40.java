package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class z40 implements o0<Object> {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    private final zzaby f10685a;

    /* renamed from: b, reason: collision with root package name */
    private final y40 f10686b;

    /* renamed from: c, reason: collision with root package name */
    private final ie1<zzbxh> f10687c;

    public z40(x10 x10Var, l10 l10Var, y40 y40Var, ie1<zzbxh> ie1Var) {
        this.f10685a = x10Var.b(l10Var.e());
        this.f10686b = y40Var;
        this.f10687c = ie1Var;
    }

    public final void a() {
        if (this.f10685a == null) {
            return;
        }
        this.f10686b.a("/nativeAdCustomClick", this);
    }

    @Override // com.google.android.gms.internal.ads.o0
    public final void a(Object obj, Map<String, String> map) {
        String str = map.get("asset");
        try {
            this.f10685a.zza(this.f10687c.get(), str);
        } catch (RemoteException e2) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40);
            sb.append("Failed to call onCustomClick for asset ");
            sb.append(str);
            sb.append(".");
            qd.c(sb.toString(), e2);
        }
    }
}
