package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class b71 implements jd1 {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Activity f5725a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b71(x51 x51Var, Activity activity) {
        this.f5725a = activity;
    }

    @Override // com.google.android.gms.internal.ads.jd1
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityStarted(this.f5725a);
    }
}
