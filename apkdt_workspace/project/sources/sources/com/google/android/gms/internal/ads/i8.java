package com.google.android.gms.internal.ads;

import androidx.annotation.VisibleForTesting;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.net.ssl.SSLSocketFactory;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class i8 extends x2 {

    /* renamed from: a, reason: collision with root package name */
    private final aa f7244a;

    public i8() {
        this(null);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:20:0x008a. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00d0 A[Catch: all -> 0x0125, TryCatch #1 {all -> 0x0125, blocks: (B:14:0x0068, B:15:0x0070, B:17:0x0076, B:19:0x0086, B:20:0x008a, B:21:0x008d, B:22:0x011f, B:23:0x0124, B:24:0x0091, B:25:0x009a, B:26:0x00a0, B:27:0x00a6, B:28:0x00ac, B:29:0x00b2, B:30:0x00bb, B:31:0x00c4, B:32:0x00c9, B:34:0x00d0, B:46:0x00ec, B:59:0x0117, B:60:0x011e), top: B:13:0x0068 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0117 A[Catch: all -> 0x0125, TRY_ENTER, TryCatch #1 {all -> 0x0125, blocks: (B:14:0x0068, B:15:0x0070, B:17:0x0076, B:19:0x0086, B:20:0x008a, B:21:0x008d, B:22:0x011f, B:23:0x0124, B:24:0x0091, B:25:0x009a, B:26:0x00a0, B:27:0x00a6, B:28:0x00ac, B:29:0x00b2, B:30:0x00bb, B:31:0x00c4, B:32:0x00c9, B:34:0x00d0, B:46:0x00ec, B:59:0x0117, B:60:0x011e), top: B:13:0x0068 }] */
    @Override // com.google.android.gms.internal.ads.x2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.v7 a(com.google.android.gms.internal.ads.uq1<?> r7, java.util.Map<java.lang.String, java.lang.String> r8) {
        /*
            Method dump skipped, instructions count: 324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.i8.a(com.google.android.gms.internal.ads.uq1, java.util.Map):com.google.android.gms.internal.ads.v7");
    }

    private i8(aa aaVar) {
        this(null, null);
    }

    private i8(aa aaVar, SSLSocketFactory sSLSocketFactory) {
        this.f7244a = null;
    }

    @VisibleForTesting
    private static List<wk1> a(Map<String, List<String>> map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            if (entry.getKey() != null) {
                Iterator<String> it = entry.getValue().iterator();
                while (it.hasNext()) {
                    arrayList.add(new wk1(entry.getKey(), it.next()));
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static InputStream a(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getInputStream();
        } catch (IOException unused) {
            return httpURLConnection.getErrorStream();
        }
    }

    private static void a(HttpURLConnection httpURLConnection, uq1<?> uq1Var) {
        byte[] g2 = uq1Var.g();
        if (g2 != null) {
            httpURLConnection.setDoOutput(true);
            if (!httpURLConnection.getRequestProperties().containsKey("Content-Type")) {
                httpURLConnection.setRequestProperty("Content-Type", "UTF-8".length() != 0 ? "application/x-www-form-urlencoded; charset=".concat("UTF-8") : new String("application/x-www-form-urlencoded; charset="));
            }
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            dataOutputStream.write(g2);
            dataOutputStream.close();
        }
    }
}
