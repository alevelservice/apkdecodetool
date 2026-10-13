package com.google.android.gms.internal.vision;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
abstract class s7 {
    abstract int a(int i2, byte[] bArr, int i3, int i4);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int a(CharSequence charSequence, byte[] bArr, int i2, int i3);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(byte[] bArr, int i2, int i3) {
        return a(0, bArr, i2, i3) == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract String b(byte[] bArr, int i2, int i3);
}
