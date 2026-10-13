package com.google.firebase.iid;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import androidx.annotation.AnyThread;
import androidx.annotation.VisibleForTesting;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.ap.zoloz.hummer.h5.H5PluginHandler;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.firebase.o.f;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.ExecutionException;

/* compiled from: com.google.firebase:firebase-iid@@21.0.1 */
@KeepForSdk
/* loaded from: classes.dex */
public class o {

    /* renamed from: a, reason: collision with root package name */
    private final com.google.firebase.c f15006a;

    /* renamed from: b, reason: collision with root package name */
    private final r f15007b;

    /* renamed from: c, reason: collision with root package name */
    private final com.google.android.gms.cloudmessaging.a f15008c;

    /* renamed from: d, reason: collision with root package name */
    private final com.google.firebase.p.b<com.google.firebase.r.i> f15009d;

    /* renamed from: e, reason: collision with root package name */
    private final com.google.firebase.p.b<com.google.firebase.o.f> f15010e;

    /* renamed from: f, reason: collision with root package name */
    private final com.google.firebase.installations.g f15011f;

    @VisibleForTesting
    o(com.google.firebase.c cVar, r rVar, com.google.android.gms.cloudmessaging.a aVar, com.google.firebase.p.b<com.google.firebase.r.i> bVar, com.google.firebase.p.b<com.google.firebase.o.f> bVar2, com.google.firebase.installations.g gVar) {
        this.f15006a = cVar;
        this.f15007b = rVar;
        this.f15008c = aVar;
        this.f15009d = bVar;
        this.f15010e = bVar2;
        this.f15011f = gVar;
    }

    public o(com.google.firebase.c cVar, r rVar, com.google.firebase.p.b<com.google.firebase.r.i> bVar, com.google.firebase.p.b<com.google.firebase.o.f> bVar2, com.google.firebase.installations.g gVar) {
        this(cVar, rVar, new com.google.android.gms.cloudmessaging.a(cVar.b()), bVar, bVar2, gVar);
    }

    private static String a(byte[] bArr) {
        return Base64.encodeToString(bArr, 11);
    }

    private e.i.b.b.d.h<String> b(e.i.b.b.d.h<Bundle> hVar) {
        return hVar.a(h.a(), new e.i.b.b.d.a(this) { // from class: com.google.firebase.iid.n

            /* renamed from: a, reason: collision with root package name */
            private final o f15005a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f15005a = this;
            }

            @Override // e.i.b.b.d.a
            public Object a(e.i.b.b.d.h hVar2) {
                return this.f15005a.a(hVar2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ String a(e.i.b.b.d.h hVar) {
        return a((Bundle) hVar.a(IOException.class));
    }

    @KeepForSdk
    public e.i.b.b.d.h<?> c(String str, String str2, String str3) {
        Bundle bundle = new Bundle();
        String valueOf = String.valueOf(str3);
        bundle.putString("gcm.topic", valueOf.length() != 0 ? "/topics/".concat(valueOf) : new String("/topics/"));
        String valueOf2 = String.valueOf(str3);
        return b(b(str, str2, valueOf2.length() != 0 ? "/topics/".concat(valueOf2) : new String("/topics/"), bundle));
    }

    @KeepForSdk
    public e.i.b.b.d.h<?> d(String str, String str2, String str3) {
        Bundle bundle = new Bundle();
        String valueOf = String.valueOf(str3);
        bundle.putString("gcm.topic", valueOf.length() != 0 ? "/topics/".concat(valueOf) : new String("/topics/"));
        bundle.putString(H5PluginHandler.HUMMER_FOUNDATION_DELETE, "1");
        String valueOf2 = String.valueOf(str3);
        return b(b(str, str2, valueOf2.length() != 0 ? "/topics/".concat(valueOf2) : new String("/topics/"), bundle));
    }

    public e.i.b.b.d.h<?> a(String str, String str2, String str3) {
        Bundle bundle = new Bundle();
        bundle.putString(H5PluginHandler.HUMMER_FOUNDATION_DELETE, "1");
        return b(b(str, str2, str3, bundle));
    }

    public e.i.b.b.d.h<String> b(String str, String str2, String str3) {
        return b(b(str, str2, str3, new Bundle()));
    }

    private e.i.b.b.d.h<Bundle> b(String str, String str2, String str3, Bundle bundle) {
        a(str, str2, str3, bundle);
        return this.f15008c.a(bundle);
    }

    private String a() {
        try {
            return a(MessageDigest.getInstance("SHA-1").digest(this.f15006a.c().getBytes()));
        } catch (NoSuchAlgorithmException unused) {
            return "[HASH-ERROR]";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(String str) {
        return "SERVICE_NOT_AVAILABLE".equals(str) || "INTERNAL_SERVER_ERROR".equals(str) || "InternalServerError".equals(str);
    }

    private Bundle a(String str, String str2, String str3, Bundle bundle) {
        f.a a2;
        bundle.putString("scope", str3);
        bundle.putString("sender", str2);
        bundle.putString("subtype", str2);
        bundle.putString("appid", str);
        bundle.putString("gmp_app_id", this.f15006a.d().b());
        bundle.putString("gmsv", Integer.toString(this.f15007b.c()));
        bundle.putString("osv", Integer.toString(Build.VERSION.SDK_INT));
        bundle.putString("app_ver", this.f15007b.a());
        bundle.putString("app_ver_name", this.f15007b.b());
        bundle.putString("firebase-app-name-hash", a());
        try {
            String a3 = ((com.google.firebase.installations.l) e.i.b.b.d.k.a((e.i.b.b.d.h) this.f15011f.a(false))).a();
            if (!TextUtils.isEmpty(a3)) {
                bundle.putString("Goog-Firebase-Installations-Auth", a3);
            }
        } catch (InterruptedException | ExecutionException unused) {
        }
        bundle.putString("cliv", "fiid-21.0.1");
        com.google.firebase.o.f fVar = this.f15010e.get();
        com.google.firebase.r.i iVar = this.f15009d.get();
        if (fVar != null && iVar != null && (a2 = fVar.a("fire-iid")) != f.a.NONE) {
            bundle.putString("Firebase-Client-Log-Type", Integer.toString(a2.getCode()));
            bundle.putString("Firebase-Client", iVar.a());
        }
        return bundle;
    }

    @AnyThread
    private String a(Bundle bundle) {
        if (bundle != null) {
            String string = bundle.getString("registration_id");
            if (string != null) {
                return string;
            }
            String string2 = bundle.getString("unregistered");
            if (string2 != null) {
                return string2;
            }
            String string3 = bundle.getString(HummerConstants.HUMMER_ERROR);
            if ("RST".equals(string3)) {
                throw new IOException("INSTANCE_ID_RESET");
            }
            if (string3 != null) {
                throw new IOException(string3);
            }
            String valueOf = String.valueOf(bundle);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 21);
            sb.append("Unexpected response: ");
            sb.append(valueOf);
            sb.toString();
            new Throwable();
            throw new IOException("SERVICE_NOT_AVAILABLE");
        }
        throw new IOException("SERVICE_NOT_AVAILABLE");
    }
}
