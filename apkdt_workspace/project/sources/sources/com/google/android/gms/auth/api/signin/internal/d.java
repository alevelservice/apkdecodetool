package com.google.android.gms.auth.api.signin.internal;

import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.r;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
/* loaded from: classes.dex */
public final class d implements Runnable {

    /* renamed from: g, reason: collision with root package name */
    private static final com.google.android.gms.common.m.a f4871g = new com.google.android.gms.common.m.a("RevokeAccessOperation", new String[0]);

    /* renamed from: e, reason: collision with root package name */
    private final String f4872e;

    /* renamed from: f, reason: collision with root package name */
    private final r f4873f;

    private d(String str) {
        com.google.android.gms.common.internal.m.b(str);
        this.f4872e = str;
        this.f4873f = new r(null);
    }

    public static com.google.android.gms.common.api.h<Status> a(@Nullable String str) {
        if (str == null) {
            return com.google.android.gms.common.api.i.a(new Status(4), (com.google.android.gms.common.api.f) null);
        }
        d dVar = new d(str);
        new Thread(dVar).start();
        return dVar.f4873f;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Status status = Status.f4990k;
        try {
            String valueOf = String.valueOf(this.f4872e);
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(valueOf.length() != 0 ? "https://accounts.google.com/o/oauth2/revoke?token=".concat(valueOf) : new String("https://accounts.google.com/o/oauth2/revoke?token=")).openConnection();
            httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == 200) {
                status = Status.f4988i;
            } else {
                f4871g.b("Unable to revoke access!", new Object[0]);
            }
            com.google.android.gms.common.m.a aVar = f4871g;
            StringBuilder sb = new StringBuilder(26);
            sb.append("Response Code: ");
            sb.append(responseCode);
            aVar.a(sb.toString(), new Object[0]);
        } catch (IOException e2) {
            com.google.android.gms.common.m.a aVar2 = f4871g;
            String valueOf2 = String.valueOf(e2.toString());
            aVar2.b(valueOf2.length() != 0 ? "IOException when revoking access: ".concat(valueOf2) : new String("IOException when revoking access: "), new Object[0]);
        } catch (Exception e3) {
            com.google.android.gms.common.m.a aVar3 = f4871g;
            String valueOf3 = String.valueOf(e3.toString());
            aVar3.b(valueOf3.length() != 0 ? "Exception when revoking access: ".concat(valueOf3) : new String("Exception when revoking access: "), new Object[0]);
        }
        this.f4873f.a((r) status);
    }
}
