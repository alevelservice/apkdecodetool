package com.google.android.gms.internal.ads;

import androidx.annotation.NonNull;
import java.util.Collections;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class br {

    /* renamed from: a, reason: collision with root package name */
    public final List<? extends qz0<? extends sq>> f5850a;

    public br(List<? extends qz0<? extends sq>> list) {
        this.f5850a = list;
    }

    public static ad0<br> a(@NonNull bf0<? extends sq> bf0Var) {
        return new zc0(bf0Var, xq.f10414a);
    }

    public static ad0<br> a(@NonNull ad0<? extends sq> ad0Var) {
        return new zc0(ad0Var, dr.f6297a);
    }

    public br(sq sqVar) {
        this.f5850a = Collections.singletonList(gz0.a(sqVar));
    }
}
