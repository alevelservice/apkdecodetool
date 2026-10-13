package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.b3;
import com.google.android.gms.internal.vision.y2;
import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public abstract class y2<MessageType extends y2<MessageType, BuilderType>, BuilderType extends b3<MessageType, BuilderType>> implements d6 {
    protected int zzri = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i2) {
        throw new UnsupportedOperationException();
    }

    public final byte[] e() {
        try {
            byte[] bArr = new byte[d()];
            a4 a2 = a4.a(bArr);
            a(a2);
            a2.b();
            return bArr;
        } catch (IOException e2) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 62 + "byte array".length());
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a ");
            sb.append("byte array");
            sb.append(" threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int f() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.vision.d6
    public final j3 k() {
        try {
            r3 zzap = j3.zzap(d());
            a(zzap.b());
            return zzap.a();
        } catch (IOException e2) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 62 + "ByteString".length());
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a ");
            sb.append("ByteString");
            sb.append(" threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e2);
        }
    }
}
