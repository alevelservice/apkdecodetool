package com.google.android.gms.flags.impl;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
final class k implements Callable<SharedPreferences> {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ Context f5488e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(Context context) {
        this.f5488e = context;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ SharedPreferences call() {
        return this.f5488e.getSharedPreferences("google_sdk_flags", 0);
    }
}
