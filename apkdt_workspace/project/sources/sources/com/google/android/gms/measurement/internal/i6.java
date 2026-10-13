package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import androidx.annotation.MainThread;

/* JADX INFO: Access modifiers changed from: package-private */
@TargetApi(14)
@MainThread
/* loaded from: classes.dex */
public final class i6 implements Application.ActivityLifecycleCallbacks {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ p5 f12983e;

    private i6(p5 p5Var) {
        this.f12983e = p5Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00d3 A[Catch: all -> 0x01d4, Exception -> 0x01d6, Merged into TryCatch #0 {all -> 0x01d4, Exception -> 0x01d6, blocks: (B:3:0x0008, B:8:0x0027, B:10:0x002d, B:13:0x0035, B:17:0x0046, B:20:0x0064, B:26:0x00d3, B:28:0x00df, B:30:0x00f2, B:33:0x00fa, B:35:0x0100, B:36:0x0118, B:37:0x0126, B:40:0x0136, B:43:0x013e, B:45:0x0144, B:46:0x014f, B:50:0x015f, B:52:0x0165, B:54:0x016b, B:56:0x0171, B:58:0x0177, B:60:0x017f, B:64:0x018b, B:67:0x01a4, B:69:0x01b9, B:75:0x0077, B:78:0x007e, B:80:0x0084, B:82:0x008a, B:84:0x0090, B:86:0x0096, B:87:0x00a4, B:89:0x00b8, B:90:0x00c2, B:92:0x00cc, B:94:0x00bd, B:102:0x01d7), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0134 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0155 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x015f A[Catch: all -> 0x01d4, Exception -> 0x01d6, Merged into TryCatch #0 {all -> 0x01d4, Exception -> 0x01d6, blocks: (B:3:0x0008, B:8:0x0027, B:10:0x002d, B:13:0x0035, B:17:0x0046, B:20:0x0064, B:26:0x00d3, B:28:0x00df, B:30:0x00f2, B:33:0x00fa, B:35:0x0100, B:36:0x0118, B:37:0x0126, B:40:0x0136, B:43:0x013e, B:45:0x0144, B:46:0x014f, B:50:0x015f, B:52:0x0165, B:54:0x016b, B:56:0x0171, B:58:0x0177, B:60:0x017f, B:64:0x018b, B:67:0x01a4, B:69:0x01b9, B:75:0x0077, B:78:0x007e, B:80:0x0084, B:82:0x008a, B:84:0x0090, B:86:0x0096, B:87:0x00a4, B:89:0x00b8, B:90:0x00c2, B:92:0x00cc, B:94:0x00bd, B:102:0x01d7), top: B:2:0x0008 }, TRY_ENTER] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0123  */
    @Override // android.app.Application.ActivityLifecycleCallbacks
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onActivityCreated(android.app.Activity r20, android.os.Bundle r21) {
        /*
            Method dump skipped, instructions count: 508
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.i6.onActivityCreated(android.app.Activity, android.os.Bundle):void");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        this.f12983e.p().a(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    @MainThread
    public final void onActivityPaused(Activity activity) {
        this.f12983e.p().b(activity);
        v7 r = this.f12983e.r();
        r.b().a(new a8(r, r.a().c()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    @MainThread
    public final void onActivityResumed(Activity activity) {
        this.f12983e.p().c(activity);
        v7 r = this.f12983e.r();
        r.b().a(new b8(r, r.a().c()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        this.f12983e.p().b(activity, bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ i6(p5 p5Var, o5 o5Var) {
        this(p5Var);
    }
}
