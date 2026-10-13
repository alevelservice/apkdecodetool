package com.facebook.imagepipeline.producers;

import android.net.Uri;
import android.util.Base64;
import com.facebook.common.internal.VisibleForTesting;
import java.io.ByteArrayInputStream;

/* compiled from: DataFetchProducer.java */
/* loaded from: classes.dex */
public class k extends y {
    public k(e.f.c.f.h hVar) {
        super(e.f.c.b.a.a(), hVar);
    }

    @VisibleForTesting
    static boolean b(String str) {
        if (!str.contains(";")) {
            return false;
        }
        return str.split(";")[r2.length - 1].equals("base64");
    }

    @Override // com.facebook.imagepipeline.producers.y
    protected e.f.i.g.e a(e.f.i.i.b bVar) {
        byte[] a2 = a(bVar.p().toString());
        return a(new ByteArrayInputStream(a2), a2.length);
    }

    @Override // com.facebook.imagepipeline.producers.y
    protected String a() {
        return "DataFetchProducer";
    }

    @VisibleForTesting
    static byte[] a(String str) {
        com.facebook.common.internal.h.a(str.substring(0, 5).equals("data:"));
        int indexOf = str.indexOf(44);
        String substring = str.substring(indexOf + 1, str.length());
        if (b(str.substring(0, indexOf))) {
            return Base64.decode(substring, 0);
        }
        return Uri.decode(substring).getBytes();
    }
}
