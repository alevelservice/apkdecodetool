package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class c91 implements jd1 {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Activity f5941a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c91(x51 x51Var, Activity activity) {
        this.f5941a = activity;
    }

    @Override // com.google.android.gms.internal.ads.jd1
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityPaused(this.f5941a);
    }
}
