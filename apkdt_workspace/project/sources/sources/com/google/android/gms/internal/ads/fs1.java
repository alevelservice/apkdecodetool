package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.io.PushbackInputStream;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class fs1 extends PushbackInputStream {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ es1 f6715e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fs1(es1 es1Var, InputStream inputStream, int i2) {
        super(inputStream, 1);
        this.f6715e = es1Var;
    }

    @Override // java.io.PushbackInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        this.f6715e.f6500g.a();
        super.close();
    }
}
