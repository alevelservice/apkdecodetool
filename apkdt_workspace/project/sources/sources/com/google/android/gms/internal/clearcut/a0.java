package com.google.android.gms.internal.clearcut;

import java.util.Arrays;

/* loaded from: classes.dex */
final class a0 implements c0 {
    private a0() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ a0(z zVar) {
        this();
    }

    @Override // com.google.android.gms.internal.clearcut.c0
    public final byte[] a(byte[] bArr, int i2, int i3) {
        return Arrays.copyOfRange(bArr, i2, i3 + i2);
    }
}
