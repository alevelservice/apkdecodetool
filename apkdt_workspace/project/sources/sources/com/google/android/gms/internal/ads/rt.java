package com.google.android.gms.internal.ads;

import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class rt extends cw<wt> {

    /* renamed from: f, reason: collision with root package name */
    private boolean f9228f;

    public rt(Set<ox<wt>> set) {
        super(set);
        this.f9228f = false;
    }

    public final synchronized void g() {
        if (!this.f9228f) {
            a(ut.f9811a);
            this.f9228f = true;
        }
    }
}
