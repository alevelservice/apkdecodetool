package com.mapbox.mapboxsdk.s.a;

import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.mapbox.mapboxsdk.http.c;
import com.mapbox.mapboxsdk.http.d;
import i.b0;
import i.c0;
import i.e;
import i.f;
import i.n;
import i.s;
import i.w;
import i.z;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.NoRouteToHostException;
import java.net.ProtocolException;
import java.net.SocketException;
import java.net.UnknownHostException;
import javax.net.ssl.SSLException;

/* compiled from: HttpRequestImpl.java */
/* loaded from: classes2.dex */
public class a implements c {

    /* renamed from: b, reason: collision with root package name */
    private static final String f16233b = b.a(String.format("%s %s (%s) Android/%s (%s)", com.mapbox.mapboxsdk.http.a.a(), "Mapbox/9.2.0", "14b615a", Integer.valueOf(Build.VERSION.SDK_INT), Build.CPU_ABI));

    /* renamed from: c, reason: collision with root package name */
    @VisibleForTesting
    static final w f16234c;

    /* renamed from: d, reason: collision with root package name */
    @VisibleForTesting
    static w f16235d;

    /* renamed from: a, reason: collision with root package name */
    private e f16236a;

    /* compiled from: HttpRequestImpl.java */
    /* renamed from: com.mapbox.mapboxsdk.s.a.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    private static class C0166a implements f {

        /* renamed from: a, reason: collision with root package name */
        private com.mapbox.mapboxsdk.http.e f16237a;

        C0166a(com.mapbox.mapboxsdk.http.e eVar) {
            this.f16237a = eVar;
        }

        @Override // i.f
        public void a(@NonNull e eVar, @NonNull IOException iOException) {
            a(eVar, (Exception) iOException);
        }

        @Override // i.f
        public void a(@NonNull e eVar, @NonNull b0 b0Var) {
            if (b0Var.o()) {
                com.mapbox.mapboxsdk.http.b.a(2, String.format("[HTTP] Request was successful (code = %s).", Integer.valueOf(b0Var.k())));
            } else {
                com.mapbox.mapboxsdk.http.b.a(3, String.format("[HTTP] Request with response = %s: %s", Integer.valueOf(b0Var.k()), !TextUtils.isEmpty(b0Var.p()) ? b0Var.p() : "No additional information"));
            }
            c0 i2 = b0Var.i();
            try {
                if (i2 == null) {
                    com.mapbox.mapboxsdk.http.b.a(6, "[HTTP] Received empty response body");
                    return;
                }
                try {
                    byte[] i3 = i2.i();
                    b0Var.close();
                    this.f16237a.onResponse(b0Var.k(), b0Var.b("ETag"), b0Var.b("Last-Modified"), b0Var.b("Cache-Control"), b0Var.b("Expires"), b0Var.b("Retry-After"), b0Var.b("x-rate-limit-reset"), i3);
                } catch (IOException e2) {
                    a(eVar, e2);
                    b0Var.close();
                }
            } catch (Throwable th) {
                b0Var.close();
                throw th;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(@Nullable e eVar, Exception exc) {
            String message = exc.getMessage() != null ? exc.getMessage() : "Error processing the request";
            int a2 = a(exc);
            if (com.mapbox.mapboxsdk.http.b.f15765b && eVar != null && eVar.v() != null) {
                com.mapbox.mapboxsdk.http.b.a(a2, message, eVar.v().g().toString());
            }
            this.f16237a.handleFailure(a2, message);
        }

        private int a(Exception exc) {
            if ((exc instanceof NoRouteToHostException) || (exc instanceof UnknownHostException) || (exc instanceof SocketException) || (exc instanceof ProtocolException) || (exc instanceof SSLException)) {
                return 0;
            }
            return exc instanceof InterruptedIOException ? 1 : 2;
        }
    }

    static {
        w.b bVar = new w.b();
        bVar.a(b());
        f16234c = bVar.a();
        f16235d = f16234c;
    }

    @NonNull
    private static n b() {
        n nVar = new n();
        if (Build.VERSION.SDK_INT >= 21) {
            nVar.a(20);
        } else {
            nVar.a(10);
        }
        return nVar;
    }

    @Override // com.mapbox.mapboxsdk.http.c
    public void a(com.mapbox.mapboxsdk.http.e eVar, long j2, @NonNull String str, @NonNull String str2, @NonNull String str3, boolean z) {
        C0166a c0166a = new C0166a(eVar);
        try {
            s e2 = s.e(str);
            if (e2 == null) {
                com.mapbox.mapboxsdk.http.b.a(6, String.format("[HTTP] Unable to parse resourceUrl %s", str));
                return;
            }
            String a2 = d.a(e2.g().toLowerCase(com.mapbox.mapboxsdk.q.a.f16232a), str, e2.l(), z);
            z.a aVar = new z.a();
            aVar.b(a2);
            aVar.a((Object) a2.toLowerCase(com.mapbox.mapboxsdk.q.a.f16232a));
            aVar.a("User-Agent", f16233b);
            if (str2.length() > 0) {
                aVar.a("If-None-Match", str2);
            } else if (str3.length() > 0) {
                aVar.a("If-Modified-Since", str3);
            }
            this.f16236a = f16235d.a(aVar.a());
            this.f16236a.a(c0166a);
        } catch (Exception e3) {
            c0166a.a(this.f16236a, e3);
        }
    }

    @Override // com.mapbox.mapboxsdk.http.c
    public void a() {
        e eVar = this.f16236a;
        if (eVar != null) {
            com.mapbox.mapboxsdk.http.b.a(3, String.format("[HTTP] Cancel request %s", eVar.v().g()));
            this.f16236a.cancel();
        }
    }
}
