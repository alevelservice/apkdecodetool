package com.google.android.gms.internal.ads;

import androidx.annotation.NonNull;
import java.util.concurrent.ThreadFactory;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class bp1 implements ThreadFactory {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ String f5835e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bp1(String str) {
        this.f5835e = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(@NonNull Runnable runnable) {
        return new Thread(runnable, this.f5835e);
    }
}
