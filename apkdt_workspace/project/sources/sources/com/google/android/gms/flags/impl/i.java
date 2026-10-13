package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
final class i implements Callable<String> {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ SharedPreferences f5484e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ String f5485f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ String f5486g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(SharedPreferences sharedPreferences, String str, String str2) {
        this.f5484e = sharedPreferences;
        this.f5485f = str;
        this.f5486g = str2;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() {
        return this.f5484e.getString(this.f5485f, this.f5486g);
    }
}
