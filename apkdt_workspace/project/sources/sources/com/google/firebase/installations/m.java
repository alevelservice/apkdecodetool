package com.google.firebase.installations;

import android.util.Base64;
import androidx.annotation.NonNull;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.UUID;

/* compiled from: RandomFidGenerator.java */
/* loaded from: classes.dex */
public class m {

    /* renamed from: a, reason: collision with root package name */
    private static final byte f15078a = Byte.parseByte("01110000", 2);

    /* renamed from: b, reason: collision with root package name */
    private static final byte f15079b = Byte.parseByte("00001111", 2);

    @NonNull
    public String a() {
        byte[] a2 = a(UUID.randomUUID(), new byte[17]);
        a2[16] = a2[0];
        a2[0] = (byte) ((f15079b & a2[0]) | f15078a);
        return a(a2);
    }

    private static String a(byte[] bArr) {
        return new String(Base64.encode(bArr, 11), Charset.defaultCharset()).substring(0, 22);
    }

    private static byte[] a(UUID uuid, byte[] bArr) {
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        wrap.putLong(uuid.getMostSignificantBits());
        wrap.putLong(uuid.getLeastSignificantBits());
        return wrap.array();
    }
}
