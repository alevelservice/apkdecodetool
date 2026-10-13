package com.android.installreferrer.api;

import android.os.Bundle;

/* compiled from: ReferrerDetails.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private final Bundle f3364a;

    public b(Bundle bundle) {
        this.f3364a = bundle;
    }

    public long a() {
        return this.f3364a.getLong("install_begin_timestamp_seconds");
    }

    public String b() {
        return this.f3364a.getString("install_referrer");
    }

    public long c() {
        return this.f3364a.getLong("referrer_click_timestamp_seconds");
    }
}
