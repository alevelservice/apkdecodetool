package g.a.c.a;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* compiled from: StringCodec.java */
/* loaded from: classes2.dex */
public final class p implements i<String> {

    /* renamed from: a, reason: collision with root package name */
    private static final Charset f18239a = Charset.forName("UTF8");

    /* renamed from: b, reason: collision with root package name */
    public static final p f18240b = new p();

    private p() {
    }

    @Override // g.a.c.a.i
    public ByteBuffer a(String str) {
        if (str == null) {
            return null;
        }
        byte[] bytes = str.getBytes(f18239a);
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(bytes.length);
        allocateDirect.put(bytes);
        return allocateDirect;
    }

    @Override // g.a.c.a.i
    public String a(ByteBuffer byteBuffer) {
        byte[] bArr;
        int i2;
        if (byteBuffer == null) {
            return null;
        }
        int remaining = byteBuffer.remaining();
        if (byteBuffer.hasArray()) {
            bArr = byteBuffer.array();
            i2 = byteBuffer.arrayOffset();
        } else {
            bArr = new byte[remaining];
            byteBuffer.get(bArr);
            i2 = 0;
        }
        return new String(bArr, i2, remaining, f18239a);
    }
}
