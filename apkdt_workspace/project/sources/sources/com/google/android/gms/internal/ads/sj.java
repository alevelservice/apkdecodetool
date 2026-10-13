package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class sj extends MutableContextWrapper {

    /* renamed from: a, reason: collision with root package name */
    private Activity f9377a;

    /* renamed from: b, reason: collision with root package name */
    private Context f9378b;

    /* renamed from: c, reason: collision with root package name */
    private Context f9379c;

    public sj(Context context) {
        super(context);
        setBaseContext(context);
    }

    public final Activity a() {
        return this.f9377a;
    }

    public final Context b() {
        return this.f9379c;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        return this.f9379c.getSystemService(str);
    }

    @Override // android.content.MutableContextWrapper
    public final void setBaseContext(Context context) {
        this.f9378b = context.getApplicationContext();
        this.f9377a = context instanceof Activity ? (Activity) context : null;
        this.f9379c = context;
        super.setBaseContext(this.f9378b);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void startActivity(Intent intent) {
        Activity activity = this.f9377a;
        if (activity != null) {
            activity.startActivity(intent);
        } else {
            intent.setFlags(268435456);
            this.f9378b.startActivity(intent);
        }
    }
}
