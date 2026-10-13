package com.google.firebase.crashlytics.d.q;

import android.content.Context;
import com.google.firebase.crashlytics.d.h.h;

/* compiled from: ResourceUnityVersionProvider.java */
/* loaded from: classes.dex */
public class a implements b {

    /* renamed from: a, reason: collision with root package name */
    private final Context f14743a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f14744b = false;

    /* renamed from: c, reason: collision with root package name */
    private String f14745c;

    public a(Context context) {
        this.f14743a = context;
    }

    @Override // com.google.firebase.crashlytics.d.q.b
    public String a() {
        if (!this.f14744b) {
            this.f14745c = h.l(this.f14743a);
            this.f14744b = true;
        }
        String str = this.f14745c;
        if (str != null) {
            return str;
        }
        return null;
    }
}
