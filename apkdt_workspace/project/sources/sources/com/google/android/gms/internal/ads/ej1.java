package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodec;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ej1 {

    /* renamed from: a, reason: collision with root package name */
    public byte[] f6444a;

    /* renamed from: b, reason: collision with root package name */
    private byte[] f6445b;

    /* renamed from: c, reason: collision with root package name */
    private int f6446c;

    /* renamed from: d, reason: collision with root package name */
    public int[] f6447d;

    /* renamed from: e, reason: collision with root package name */
    public int[] f6448e;

    /* renamed from: f, reason: collision with root package name */
    private int f6449f;

    /* renamed from: g, reason: collision with root package name */
    private final MediaCodec.CryptoInfo f6450g;

    /* renamed from: h, reason: collision with root package name */
    private final gj1 f6451h;

    public ej1() {
        this.f6450g = cp1.f6080a >= 16 ? new MediaCodec.CryptoInfo() : null;
        this.f6451h = cp1.f6080a >= 24 ? new gj1(this.f6450g) : null;
    }

    public final void a(int i2, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i3) {
        this.f6449f = i2;
        this.f6447d = iArr;
        this.f6448e = iArr2;
        this.f6445b = bArr;
        this.f6444a = bArr2;
        this.f6446c = i3;
        int i4 = cp1.f6080a;
        if (i4 >= 16) {
            MediaCodec.CryptoInfo cryptoInfo = this.f6450g;
            cryptoInfo.numSubSamples = this.f6449f;
            cryptoInfo.numBytesOfClearData = this.f6447d;
            cryptoInfo.numBytesOfEncryptedData = this.f6448e;
            cryptoInfo.key = this.f6445b;
            cryptoInfo.iv = this.f6444a;
            cryptoInfo.mode = this.f6446c;
            if (i4 >= 24) {
                this.f6451h.a(0, 0);
            }
        }
    }

    @TargetApi(16)
    public final MediaCodec.CryptoInfo a() {
        return this.f6450g;
    }
}
