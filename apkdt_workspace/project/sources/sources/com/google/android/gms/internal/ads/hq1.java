package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class hq1 implements mq1 {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Activity f7152a;

    /* renamed from: b, reason: collision with root package name */
    private final /* synthetic */ Bundle f7153b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hq1(eq1 eq1Var, Activity activity, Bundle bundle) {
        this.f7152a = activity;
        this.f7153b = bundle;
    }

    @Override // com.google.android.gms.internal.ads.mq1
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityCreated(this.f7152a, this.f7153b);
    }
}
