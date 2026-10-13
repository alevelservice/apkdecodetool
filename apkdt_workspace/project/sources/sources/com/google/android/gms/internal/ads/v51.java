package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
abstract class v51 implements l01 {

    /* renamed from: a, reason: collision with root package name */
    private final t51 f9862a;

    /* renamed from: b, reason: collision with root package name */
    private final t51 f9863b;

    public v51(byte[] bArr) {
        this.f9862a = a(bArr, 1);
        this.f9863b = a(bArr, 0);
    }

    abstract t51 a(byte[] bArr, int i2);

    @Override // com.google.android.gms.internal.ads.l01
    public byte[] a(byte[] bArr, byte[] bArr2) {
        if (bArr.length <= (Integer.MAX_VALUE - this.f9862a.a()) - 16) {
            ByteBuffer allocate = ByteBuffer.allocate(bArr.length + this.f9862a.a() + 16);
            if (allocate.remaining() >= bArr.length + this.f9862a.a() + 16) {
                int position = allocate.position();
                this.f9862a.a(allocate, bArr);
                allocate.position(position);
                byte[] bArr3 = new byte[this.f9862a.a()];
                allocate.get(bArr3);
                allocate.limit(allocate.limit() - 16);
                if (bArr2 == null) {
                    bArr2 = new byte[0];
                }
                byte[] bArr4 = new byte[32];
                this.f9863b.a(bArr3, 0).get(bArr4);
                int length = bArr2.length % 16 == 0 ? bArr2.length : (bArr2.length + 16) - (bArr2.length % 16);
                int remaining = allocate.remaining();
                int i2 = remaining % 16;
                int i3 = (i2 == 0 ? remaining : (remaining + 16) - i2) + length;
                ByteBuffer order = ByteBuffer.allocate(i3 + 16).order(ByteOrder.LITTLE_ENDIAN);
                order.put(bArr2);
                order.position(length);
                order.put(allocate);
                order.position(i3);
                order.putLong(bArr2.length);
                order.putLong(remaining);
                byte[] a2 = x61.a(bArr4, order.array());
                allocate.limit(allocate.limit() + 16);
                allocate.put(a2);
                return allocate.array();
            }
            throw new IllegalArgumentException("Given ByteBuffer output is too small");
        }
        throw new GeneralSecurityException("plaintext too long");
    }
}
