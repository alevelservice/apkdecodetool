package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.j;
import java.util.Set;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class dy extends cw<j.a> {

    /* renamed from: f, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f6323f;

    /* JADX INFO: Access modifiers changed from: protected */
    public dy(Set<ox<j.a>> set) {
        super(set);
    }

    public final void g() {
        a(fy.f6734a);
    }

    public final void h() {
        a(gy.f6979a);
    }

    public final synchronized void i() {
        if (!this.f6323f) {
            a(hy.f7201a);
            this.f6323f = true;
        }
        a(ky.f7779a);
    }

    public final synchronized void j() {
        a(iy.f7394a);
        this.f6323f = true;
    }
}
