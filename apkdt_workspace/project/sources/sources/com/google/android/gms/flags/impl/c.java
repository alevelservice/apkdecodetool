package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
final class c implements Callable<Boolean> {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ SharedPreferences f5475e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ String f5476f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ Boolean f5477g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(SharedPreferences sharedPreferences, String str, Boolean bool) {
        this.f5475e = sharedPreferences;
        this.f5476f = str;
        this.f5477g = bool;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Boolean call() {
        return Boolean.valueOf(this.f5475e.getBoolean(this.f5476f, this.f5477g.booleanValue()));
    }
}
