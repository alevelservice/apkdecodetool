package com.google.firebase.crashlytics.d.f;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: CrashlyticsOriginAnalyticsEventLogger.java */
/* loaded from: classes.dex */
public class e implements a {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final com.google.firebase.k.a.a f14394a;

    public e(@NonNull com.google.firebase.k.a.a aVar) {
        this.f14394a = aVar;
    }

    @Override // com.google.firebase.crashlytics.d.f.a
    public void a(@NonNull String str, @Nullable Bundle bundle) {
        this.f14394a.logEvent("clx", str, bundle);
    }
}
