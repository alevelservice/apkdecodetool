package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public interface bi1 {

    /* renamed from: a, reason: collision with root package name */
    public static final ByteBuffer f5779a = ByteBuffer.allocateDirect(0).order(ByteOrder.nativeOrder());

    void a();

    void a(ByteBuffer byteBuffer);

    boolean a(int i2, int i3, int i4);

    void flush();

    boolean i();

    ByteBuffer j();

    int k();

    boolean l();

    void m();

    int n();
}
