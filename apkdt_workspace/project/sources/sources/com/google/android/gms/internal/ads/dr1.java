package com.google.android.gms.internal.ads;

import android.util.Base64OutputStream;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@VisibleForTesting
/* loaded from: classes.dex */
final class dr1 {

    /* renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    private ByteArrayOutputStream f6299a = new ByteArrayOutputStream(4096);

    /* renamed from: b, reason: collision with root package name */
    @VisibleForTesting
    private Base64OutputStream f6300b = new Base64OutputStream(this.f6299a, 10);

    public final void a(byte[] bArr) {
        this.f6300b.write(bArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String toString() {
        try {
            this.f6300b.close();
        } catch (IOException e2) {
            qd.b("HashManager: Unable to convert to Base64.", e2);
        }
        try {
            this.f6299a.close();
            return this.f6299a.toString();
        } catch (IOException e3) {
            qd.b("HashManager: Unable to convert to Base64.", e3);
            return "";
        } finally {
            this.f6299a = null;
            this.f6300b = null;
        }
    }
}
