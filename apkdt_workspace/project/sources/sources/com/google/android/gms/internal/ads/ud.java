package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class ud implements ld {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    private final String f9711a;

    public ud() {
        this(null);
    }

    @Override // com.google.android.gms.internal.ads.ld
    @WorkerThread
    public final void a(String str) {
        try {
            String valueOf = String.valueOf(str);
            qd.a(valueOf.length() != 0 ? "Pinging URL: ".concat(valueOf) : new String("Pinging URL: "));
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            try {
                mu1.a();
                gd.a(true, httpURLConnection, this.f9711a);
                kd kdVar = new kd();
                kdVar.a(httpURLConnection, (byte[]) null);
                int responseCode = httpURLConnection.getResponseCode();
                kdVar.a(httpURLConnection, responseCode);
                if (responseCode < 200 || responseCode >= 300) {
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 65);
                    sb.append("Received non-success response code ");
                    sb.append(responseCode);
                    sb.append(" from pinging URL: ");
                    sb.append(str);
                    qd.d(sb.toString());
                }
            } finally {
                httpURLConnection.disconnect();
            }
        } catch (IOException e2) {
            String message = e2.getMessage();
            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 27 + String.valueOf(message).length());
            sb2.append("Error while pinging URL: ");
            sb2.append(str);
            sb2.append(". ");
            sb2.append(message);
            qd.d(sb2.toString());
        } catch (IndexOutOfBoundsException e3) {
            String message2 = e3.getMessage();
            StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 32 + String.valueOf(message2).length());
            sb3.append("Error while parsing ping URL: ");
            sb3.append(str);
            sb3.append(". ");
            sb3.append(message2);
            qd.d(sb3.toString());
        } catch (RuntimeException e4) {
            String message3 = e4.getMessage();
            StringBuilder sb4 = new StringBuilder(String.valueOf(str).length() + 27 + String.valueOf(message3).length());
            sb4.append("Error while pinging URL: ");
            sb4.append(str);
            sb4.append(". ");
            sb4.append(message3);
            qd.d(sb4.toString());
        }
    }

    public ud(@Nullable String str) {
        this.f9711a = str;
    }
}
