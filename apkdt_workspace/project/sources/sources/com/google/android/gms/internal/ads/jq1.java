package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class jq1 implements mq1 {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Activity f7557a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jq1(eq1 eq1Var, Activity activity) {
        this.f7557a = activity;
    }

    @Override // com.google.android.gms.internal.ads.mq1
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityResumed(this.f7557a);
    }
}
