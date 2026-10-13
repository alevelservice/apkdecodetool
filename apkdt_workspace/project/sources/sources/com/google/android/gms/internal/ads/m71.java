package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.l71;
import com.google.android.gms.internal.ads.m71;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
public abstract class m71<MessageType extends m71<MessageType, BuilderType>, BuilderType extends l71<MessageType, BuilderType>> implements oa1 {
    protected int zzhfc = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i2) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.oa1
    public final byte[] e() {
        try {
            byte[] bArr = new byte[d()];
            m81 a2 = m81.a(bArr);
            a(a2);
            a2.c();
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

    @Override // com.google.android.gms.internal.ads.oa1
    public final t71 f() {
        try {
            b81 zzfp = t71.zzfp(d());
            a(zzfp.b());
            return zzfp.a();
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
    public int g() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T> void a(Iterable<T> iterable, List<? super T> list) {
        f91.a(iterable);
        if (iterable instanceof v91) {
            List<?> a0 = ((v91) iterable).a0();
            v91 v91Var = (v91) list;
            int size = list.size();
            for (Object obj : a0) {
                if (obj == null) {
                    int size2 = v91Var.size() - size;
                    StringBuilder sb = new StringBuilder(37);
                    sb.append("Element at index ");
                    sb.append(size2);
                    sb.append(" is null.");
                    String sb2 = sb.toString();
                    for (int size3 = v91Var.size() - 1; size3 >= size; size3--) {
                        v91Var.remove(size3);
                    }
                    throw new NullPointerException(sb2);
                }
                if (obj instanceof t71) {
                    v91Var.a((t71) obj);
                } else {
                    v91Var.add((String) obj);
                }
            }
            return;
        }
        if (iterable instanceof za1) {
            list.addAll((Collection) iterable);
            return;
        }
        if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
            ((ArrayList) list).ensureCapacity(list.size() + ((Collection) iterable).size());
        }
        int size4 = list.size();
        for (T t : iterable) {
            if (t == null) {
                int size5 = list.size() - size4;
                StringBuilder sb3 = new StringBuilder(37);
                sb3.append("Element at index ");
                sb3.append(size5);
                sb3.append(" is null.");
                String sb4 = sb3.toString();
                for (int size6 = list.size() - 1; size6 >= size4; size6--) {
                    list.remove(size6);
                }
                throw new NullPointerException(sb4);
            }
            list.add(t);
        }
    }
}
