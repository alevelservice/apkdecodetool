package com.google.android.gms.common.util.v;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.m;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@KeepForSdk
/* loaded from: classes.dex */
public class a implements ThreadFactory {

    /* renamed from: e, reason: collision with root package name */
    private final String f5432e;

    /* renamed from: f, reason: collision with root package name */
    private final ThreadFactory f5433f;

    @KeepForSdk
    public a(String str) {
        this(str, 0);
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread newThread = this.f5433f.newThread(new b(runnable, 0));
        newThread.setName(this.f5432e);
        return newThread;
    }

    private a(String str, int i2) {
        this.f5433f = Executors.defaultThreadFactory();
        m.a(str, (Object) "Name must not be null");
        this.f5432e = str;
    }
}
