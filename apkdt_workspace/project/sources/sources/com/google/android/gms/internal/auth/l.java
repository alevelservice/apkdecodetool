package com.google.android.gms.internal.auth;

import com.google.android.gms.auth.api.proxy.a;
import com.google.android.gms.common.api.Status;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* loaded from: classes.dex */
public final class l implements a.b {

    /* renamed from: e, reason: collision with root package name */
    private Status f11327e;

    public l(@Nonnull String str) {
        com.google.android.gms.common.internal.m.a(str);
        this.f11327e = Status.f4988i;
    }

    @Override // com.google.android.gms.common.api.m
    @Nullable
    public final Status i() {
        return this.f11327e;
    }

    public l(@Nonnull Status status) {
        com.google.android.gms.common.internal.m.a(status);
        this.f11327e = status;
    }
}
