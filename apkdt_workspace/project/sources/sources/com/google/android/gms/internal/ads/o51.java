package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class o51 implements jd1 {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Activity f8479a;

    /* renamed from: b, reason: collision with root package name */
    private final /* synthetic */ Bundle f8480b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o51(x51 x51Var, Activity activity, Bundle bundle) {
        this.f8479a = activity;
        this.f8480b = bundle;
    }

    @Override // com.google.android.gms.internal.ads.jd1
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityCreated(this.f8479a, this.f8480b);
    }
}
