package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final /* synthetic */ class e61 {

    /* renamed from: a, reason: collision with root package name */
    static final /* synthetic */ int[] f6347a;

    /* renamed from: b, reason: collision with root package name */
    static final /* synthetic */ int[] f6348b = new int[g61.values().length];

    static {
        try {
            f6348b[g61.NIST_P256.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f6348b[g61.NIST_P384.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f6348b[g61.NIST_P521.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        f6347a = new int[i61.values().length];
        try {
            f6347a[i61.UNCOMPRESSED.ordinal()] = 1;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f6347a[i61.DO_NOT_USE_CRUNCHY_UNCOMPRESSED.ordinal()] = 2;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f6347a[i61.COMPRESSED.ordinal()] = 3;
        } catch (NoSuchFieldError unused6) {
        }
    }
}
