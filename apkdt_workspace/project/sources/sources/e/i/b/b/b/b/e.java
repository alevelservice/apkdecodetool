package e.i.b.b.b.b;

import java.io.OutputStream;

/* compiled from: com.google.firebase:firebase-messaging@@21.0.1 */
/* loaded from: classes.dex */
final class e extends OutputStream {
    public final String toString() {
        return "ByteStreams.nullOutputStream()";
    }

    @Override // java.io.OutputStream
    public final void write(int i2) {
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        if (bArr == null) {
            throw null;
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i2, int i3) {
        if (bArr == null) {
            throw null;
        }
    }
}
