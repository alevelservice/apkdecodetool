package com.google.android.gms.internal.vision;

import android.net.Uri;
import androidx.annotation.GuardedBy;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class u {

    /* renamed from: a, reason: collision with root package name */
    @GuardedBy("PhenotypeConstants.class")
    private static final a.e.a<String, Uri> f12542a = new a.e.a<>();

    public static synchronized Uri a(String str) {
        Uri uri;
        synchronized (u.class) {
            uri = f12542a.get(str);
            if (uri == null) {
                String valueOf = String.valueOf(Uri.encode(str));
                uri = Uri.parse(valueOf.length() != 0 ? "content://com.google.android.gms.phenotype/".concat(valueOf) : new String("content://com.google.android.gms.phenotype/"));
                f12542a.put(str, uri);
            }
        }
        return uri;
    }
}
