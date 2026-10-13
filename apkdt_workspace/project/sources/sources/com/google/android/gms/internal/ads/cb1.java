package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class cb1 implements jd1 {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Activity f5969a;

    /* renamed from: b, reason: collision with root package name */
    private final /* synthetic */ Bundle f5970b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cb1(x51 x51Var, Activity activity, Bundle bundle) {
        this.f5969a = activity;
        this.f5970b = bundle;
    }

    @Override // com.google.android.gms.internal.ads.jd1
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivitySaveInstanceState(this.f5969a, this.f5970b);
    }
}
