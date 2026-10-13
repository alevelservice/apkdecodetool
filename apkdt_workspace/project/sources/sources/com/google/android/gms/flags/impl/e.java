package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
final class e implements Callable<Integer> {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ SharedPreferences f5478e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ String f5479f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ Integer f5480g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(SharedPreferences sharedPreferences, String str, Integer num) {
        this.f5478e = sharedPreferences;
        this.f5479f = str;
        this.f5480g = num;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Integer call() {
        return Integer.valueOf(this.f5478e.getInt(this.f5479f, this.f5480g.intValue()));
    }
}
