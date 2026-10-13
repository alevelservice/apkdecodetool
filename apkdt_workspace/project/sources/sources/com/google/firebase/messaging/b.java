package com.google.firebase.messaging;

import android.os.Bundle;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.firebase:firebase-messaging@@21.0.1 */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public static final long f15213a = TimeUnit.MINUTES.toMillis(3);

    /* compiled from: com.google.firebase:firebase-messaging@@21.0.1 */
    /* loaded from: classes.dex */
    public static final class a {
        public static a.e.a<String, String> a(Bundle bundle) {
            a.e.a<String, String> aVar = new a.e.a<>();
            for (String str : bundle.keySet()) {
                Object obj = bundle.get(str);
                if (obj instanceof String) {
                    String str2 = (String) obj;
                    if (!str.startsWith("google.") && !str.startsWith("gcm.") && !str.equals("from") && !str.equals("message_type") && !str.equals("collapse_key")) {
                        aVar.put(str, str2);
                    }
                }
            }
            return aVar;
        }
    }
}
