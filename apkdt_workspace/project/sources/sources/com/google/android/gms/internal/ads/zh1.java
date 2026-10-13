package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zh1 {

    /* renamed from: a, reason: collision with root package name */
    private static final int[] f10746a = {1, 2, 3, 6};

    /* renamed from: b, reason: collision with root package name */
    private static final int[] f10747b = {48000, 44100, 32000};

    /* renamed from: c, reason: collision with root package name */
    private static final int[] f10748c = {2, 1, 2, 3, 3, 4, 4, 5};

    public static int a() {
        return 1536;
    }

    public static zzgq a(vo1 vo1Var, String str, String str2, zzil zzilVar) {
        int i2 = f10747b[(vo1Var.g() & 192) >> 6];
        int g2 = vo1Var.g();
        int i3 = f10748c[(g2 & 56) >> 3];
        if ((g2 & 4) != 0) {
            i3++;
        }
        return zzgq.a(str, "audio/ac3", null, -1, -1, i3, i2, null, null, 0, str2);
    }

    public static zzgq b(vo1 vo1Var, String str, String str2, zzil zzilVar) {
        vo1Var.d(2);
        int i2 = f10747b[(vo1Var.g() & 192) >> 6];
        int g2 = vo1Var.g();
        int i3 = f10748c[(g2 & 14) >> 1];
        if ((g2 & 1) != 0) {
            i3++;
        }
        return zzgq.a(str, "audio/eac3", null, -1, -1, i3, i2, null, null, 0, str2);
    }

    public static int a(ByteBuffer byteBuffer) {
        return (((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3 ? f10746a[(byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4] : 6) * 256;
    }
}
