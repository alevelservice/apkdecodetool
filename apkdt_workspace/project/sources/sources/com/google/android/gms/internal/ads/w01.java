package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class w01 {

    /* renamed from: a, reason: collision with root package name */
    private static final CopyOnWriteArrayList<x01> f10013a = new CopyOnWriteArrayList<>();

    public static x01 a(String str) {
        Iterator<x01> it = f10013a.iterator();
        while (it.hasNext()) {
            x01 next = it.next();
            if (next.b(str)) {
                return next;
            }
        }
        String valueOf = String.valueOf(str);
        throw new GeneralSecurityException(valueOf.length() != 0 ? "No KMS client does support: ".concat(valueOf) : new String("No KMS client does support: "));
    }
}
