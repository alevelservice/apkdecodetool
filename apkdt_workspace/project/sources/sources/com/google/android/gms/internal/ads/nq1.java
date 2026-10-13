package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class nq1 implements mq1 {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Activity f8412a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public nq1(eq1 eq1Var, Activity activity) {
        this.f8412a = activity;
    }

    @Override // com.google.android.gms.internal.ads.mq1
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityDestroyed(this.f8412a);
    }
}
