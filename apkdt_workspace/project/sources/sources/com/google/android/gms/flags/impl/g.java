package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
final class g implements Callable<Long> {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ SharedPreferences f5481e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ String f5482f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ Long f5483g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(SharedPreferences sharedPreferences, String str, Long l2) {
        this.f5481e = sharedPreferences;
        this.f5482f = str;
        this.f5483g = l2;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Long call() {
        return Long.valueOf(this.f5481e.getLong(this.f5482f, this.f5483g.longValue()));
    }
}
