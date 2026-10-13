package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;

/* loaded from: classes.dex */
final class f1 extends ContentObserver {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ d1 f11848a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f1(d1 d1Var, Handler handler) {
        super(null);
        this.f11848a = d1Var;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        this.f11848a.b();
    }
}
