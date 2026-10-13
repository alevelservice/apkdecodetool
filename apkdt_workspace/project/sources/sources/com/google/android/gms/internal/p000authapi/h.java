package com.google.android.gms.internal.p000authapi;

import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.auth.api.credentials.a;
import com.google.android.gms.common.api.Status;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
/* loaded from: classes.dex */
public final class h implements a {

    /* renamed from: e, reason: collision with root package name */
    private final Status f11317e;

    public h(Status status, @Nullable Credential credential) {
        this.f11317e = status;
    }

    public static h a(Status status) {
        return new h(status, null);
    }

    @Override // com.google.android.gms.common.api.m
    public final Status i() {
        return this.f11317e;
    }
}
