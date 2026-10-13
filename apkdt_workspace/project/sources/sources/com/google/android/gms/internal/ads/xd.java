package com.google.android.gms.internal.ads;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class xd implements ThreadFactory {

    /* renamed from: e, reason: collision with root package name */
    private final AtomicInteger f10313e = new AtomicInteger(1);

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ String f10314f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public xd(String str) {
        this.f10314f = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        String str = this.f10314f;
        int andIncrement = this.f10313e.getAndIncrement();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 23);
        sb.append("AdWorker(");
        sb.append(str);
        sb.append(") #");
        sb.append(andIncrement);
        return new Thread(runnable, sb.toString());
    }
}
