package com.google.android.gms.common.api.internal;

import android.app.Activity;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.common.annotation.KeepForSdk;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@KeepForSdk
/* loaded from: classes.dex */
public class i {

    /* renamed from: a, reason: collision with root package name */
    private final Object f5087a;

    public i(Activity activity) {
        com.google.android.gms.common.internal.m.a(activity, "Activity must not be null");
        this.f5087a = activity;
    }

    @KeepForSdk
    public Activity a() {
        return (Activity) this.f5087a;
    }

    @KeepForSdk
    public FragmentActivity b() {
        return (FragmentActivity) this.f5087a;
    }

    @KeepForSdk
    public boolean c() {
        return this.f5087a instanceof FragmentActivity;
    }

    public final boolean d() {
        return this.f5087a instanceof Activity;
    }
}
