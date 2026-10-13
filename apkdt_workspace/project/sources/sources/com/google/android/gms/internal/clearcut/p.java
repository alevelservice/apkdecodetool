package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.p;
import com.google.android.gms.internal.clearcut.q;
import java.io.IOException;

/* loaded from: classes.dex */
public abstract class p<MessageType extends p<MessageType, BuilderType>, BuilderType extends q<MessageType, BuilderType>> implements i2 {
    private static boolean zzey = false;
    protected int zzex = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i2) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.clearcut.i2
    public final y c() {
        try {
            d0 zzk = y.zzk(e());
            a(zzk.b());
            return zzk.a();
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public int f() {
        throw new UnsupportedOperationException();
    }
}
