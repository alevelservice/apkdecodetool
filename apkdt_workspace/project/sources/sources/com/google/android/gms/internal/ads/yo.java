package com.google.android.gms.internal.ads;

import android.view.View;
import androidx.annotation.Nullable;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public class yo {

    /* renamed from: a, reason: collision with root package name */
    private final pq f10611a;

    /* renamed from: b, reason: collision with root package name */
    private final View f10612b;

    /* renamed from: c, reason: collision with root package name */
    private final ms0 f10613c;

    /* renamed from: d, reason: collision with root package name */
    private final fi f10614d;

    public yo(View view, @Nullable fi fiVar, pq pqVar, ms0 ms0Var) {
        this.f10612b = view;
        this.f10614d = fiVar;
        this.f10611a = pqVar;
        this.f10613c = ms0Var;
    }

    @Nullable
    public final fi a() {
        return this.f10614d;
    }

    public final View b() {
        return this.f10612b;
    }

    public final pq c() {
        return this.f10611a;
    }

    public final ms0 d() {
        return this.f10613c;
    }

    public pu a(Set<ox<qu>> set) {
        return new pu(set);
    }
}
