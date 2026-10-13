package com.google.android.gms.internal.clearcut;

import android.database.ContentObserver;
import android.os.Handler;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class c extends ContentObserver {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ b f11373a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(b bVar, Handler handler) {
        super(null);
        this.f11373a = bVar;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        this.f11373a.b();
        this.f11373a.d();
    }
}
