package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.util.JsonWriter;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.zoloz.android.phone.zdoc.service.ZdocRecordService;
import java.io.IOException;
import java.io.StringWriter;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class kd {

    /* renamed from: c, reason: collision with root package name */
    @GuardedBy("lock")
    private static boolean f7663c = false;

    /* renamed from: d, reason: collision with root package name */
    @GuardedBy("lock")
    private static boolean f7664d = false;

    /* renamed from: a, reason: collision with root package name */
    private final List<String> f7667a;

    /* renamed from: b, reason: collision with root package name */
    private static Object f7662b = new Object();

    /* renamed from: e, reason: collision with root package name */
    private static com.google.android.gms.common.util.e f7665e = com.google.android.gms.common.util.h.d();

    /* renamed from: f, reason: collision with root package name */
    private static final Set<String> f7666f = new HashSet(Arrays.asList(new String[0]));

    public kd() {
        this(null);
    }

    private final void b(final String str, final String str2, @Nullable final Map<String, ?> map, @Nullable final byte[] bArr) {
        a("onNetworkRequest", new rd(str, str2, map, bArr) { // from class: com.google.android.gms.internal.ads.nd

            /* renamed from: a, reason: collision with root package name */
            private final String f8318a;

            /* renamed from: b, reason: collision with root package name */
            private final String f8319b;

            /* renamed from: c, reason: collision with root package name */
            private final Map f8320c;

            /* renamed from: d, reason: collision with root package name */
            private final byte[] f8321d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8318a = str;
                this.f8319b = str2;
                this.f8320c = map;
                this.f8321d = bArr;
            }

            @Override // com.google.android.gms.internal.ads.rd
            public final void a(JsonWriter jsonWriter) {
                kd.a(this.f8318a, this.f8319b, this.f8320c, this.f8321d, jsonWriter);
            }
        });
    }

    private static synchronized void c(String str) {
        synchronized (kd.class) {
            qd.c("GMA Debug BEGIN");
            int i2 = 0;
            while (i2 < str.length()) {
                int i3 = i2 + 4000;
                String valueOf = String.valueOf(str.substring(i2, Math.min(i3, str.length())));
                qd.c(valueOf.length() != 0 ? "GMA Debug CONTENT ".concat(valueOf) : new String("GMA Debug CONTENT "));
                i2 = i3;
            }
            qd.c("GMA Debug FINISH");
        }
    }

    public final void a(HttpURLConnection httpURLConnection, @Nullable byte[] bArr) {
        if (a()) {
            b(new String(httpURLConnection.getURL().toString()), new String(httpURLConnection.getRequestMethod()), httpURLConnection.getRequestProperties() == null ? null : new HashMap(httpURLConnection.getRequestProperties()), bArr);
        }
    }

    public kd(@Nullable String str) {
        List<String> asList;
        if (!a()) {
            asList = new ArrayList<>();
        } else {
            String[] strArr = new String[1];
            String valueOf = String.valueOf(UUID.randomUUID().toString());
            strArr[0] = valueOf.length() != 0 ? "network_request_".concat(valueOf) : new String("network_request_");
            asList = Arrays.asList(strArr);
        }
        this.f7667a = asList;
    }

    private final void b(@Nullable final Map<String, ?> map, final int i2) {
        a("onNetworkResponse", new rd(i2, map) { // from class: com.google.android.gms.internal.ads.md

            /* renamed from: a, reason: collision with root package name */
            private final int f8077a;

            /* renamed from: b, reason: collision with root package name */
            private final Map f8078b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8077a = i2;
                this.f8078b = map;
            }

            @Override // com.google.android.gms.internal.ads.rd
            public final void a(JsonWriter jsonWriter) {
                kd.a(this.f8077a, this.f8078b, jsonWriter);
            }
        });
    }

    private final void b(@Nullable final String str) {
        a("onNetworkRequestError", new rd(str) { // from class: com.google.android.gms.internal.ads.od

            /* renamed from: a, reason: collision with root package name */
            private final String f8517a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8517a = str;
            }

            @Override // com.google.android.gms.internal.ads.rd
            public final void a(JsonWriter jsonWriter) {
                kd.a(this.f8517a, jsonWriter);
            }
        });
    }

    public static void b() {
        synchronized (f7662b) {
            f7663c = false;
            f7664d = false;
            qd.d("Ad debug logging enablement is out of date.");
        }
    }

    public static boolean c() {
        boolean z;
        synchronized (f7662b) {
            z = f7663c;
        }
        return z;
    }

    public final void a(String str, String str2, @Nullable Map<String, ?> map, @Nullable byte[] bArr) {
        if (a()) {
            b(str, str2, map, bArr);
        }
    }

    public final void a(HttpURLConnection httpURLConnection, int i2) {
        if (a()) {
            String str = null;
            b(httpURLConnection.getHeaderFields() == null ? null : new HashMap(httpURLConnection.getHeaderFields()), i2);
            if (i2 < 200 || i2 >= 300) {
                try {
                    str = httpURLConnection.getResponseMessage();
                } catch (IOException e2) {
                    String valueOf = String.valueOf(e2.getMessage());
                    qd.d(valueOf.length() != 0 ? "Can not get error message from error HttpURLConnection\n".concat(valueOf) : new String("Can not get error message from error HttpURLConnection\n"));
                }
                b(str);
            }
        }
    }

    public final void a(@Nullable Map<String, ?> map, int i2) {
        if (a()) {
            b(map, i2);
            if (i2 < 200 || i2 >= 300) {
                b(null);
            }
        }
    }

    public final void a(@Nullable String str) {
        if (a() && str != null) {
            a(str.getBytes());
        }
    }

    public final void a(final byte[] bArr) {
        a("onNetworkResponseBody", new rd(bArr) { // from class: com.google.android.gms.internal.ads.pd

            /* renamed from: a, reason: collision with root package name */
            private final byte[] f8685a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8685a = bArr;
            }

            @Override // com.google.android.gms.internal.ads.rd
            public final void a(JsonWriter jsonWriter) {
                kd.a(this.f8685a, jsonWriter);
            }
        });
    }

    private static void a(JsonWriter jsonWriter, @Nullable Map<String, ?> map) {
        if (map == null) {
            return;
        }
        jsonWriter.name("headers").beginArray();
        Iterator<Map.Entry<String, ?>> it = map.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Map.Entry<String, ?> next = it.next();
            String key = next.getKey();
            if (!f7666f.contains(key)) {
                if (next.getValue() instanceof List) {
                    for (String str : (List) next.getValue()) {
                        jsonWriter.beginObject();
                        jsonWriter.name("name").value(key);
                        jsonWriter.name(HummerConstants.VALUE).value(str);
                        jsonWriter.endObject();
                    }
                } else if (next.getValue() instanceof String) {
                    jsonWriter.beginObject();
                    jsonWriter.name("name").value(key);
                    jsonWriter.name(HummerConstants.VALUE).value((String) next.getValue());
                    jsonWriter.endObject();
                } else {
                    qd.b("Connection headers should be either Map<String, String> or Map<String, List<String>>");
                    break;
                }
            }
        }
        jsonWriter.endArray();
    }

    private final void a(String str, rd rdVar) {
        StringWriter stringWriter = new StringWriter();
        JsonWriter jsonWriter = new JsonWriter(stringWriter);
        try {
            jsonWriter.beginObject();
            jsonWriter.name("timestamp").value(f7665e.a());
            jsonWriter.name("event").value(str);
            jsonWriter.name("components").beginArray();
            Iterator<String> it = this.f7667a.iterator();
            while (it.hasNext()) {
                jsonWriter.value(it.next());
            }
            jsonWriter.endArray();
            rdVar.a(jsonWriter);
            jsonWriter.endObject();
            jsonWriter.flush();
            jsonWriter.close();
        } catch (IOException e2) {
            qd.b("unable to log", e2);
        }
        c(stringWriter.toString());
    }

    public static void a(boolean z) {
        synchronized (f7662b) {
            f7663c = true;
            f7664d = z;
        }
    }

    public static boolean a() {
        boolean z;
        synchronized (f7662b) {
            z = f7663c && f7664d;
        }
        return z;
    }

    public static boolean a(Context context) {
        if (Build.VERSION.SDK_INT < 17) {
            return false;
        }
        if (!((Boolean) mu1.e().a(aw1.U0)).booleanValue()) {
            return false;
        }
        try {
            return Settings.Global.getInt(context.getContentResolver(), "development_settings_enabled", 0) != 0;
        } catch (Exception e2) {
            qd.c("Fail to determine debug setting.", e2);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void a(String str, JsonWriter jsonWriter) {
        jsonWriter.name(ZdocRecordService.PARAMES).beginObject();
        if (str != null) {
            jsonWriter.name("error_description").value(str);
        }
        jsonWriter.endObject();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void a(byte[] bArr, JsonWriter jsonWriter) {
        jsonWriter.name(ZdocRecordService.PARAMES).beginObject();
        int length = bArr.length;
        String a2 = com.google.android.gms.common.util.c.a(bArr);
        if (length < 10000) {
            jsonWriter.name("body").value(a2);
        } else {
            String a3 = gd.a(a2);
            if (a3 != null) {
                jsonWriter.name("bodydigest").value(a3);
            }
        }
        jsonWriter.name("bodylength").value(length);
        jsonWriter.endObject();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void a(int i2, Map map, JsonWriter jsonWriter) {
        jsonWriter.name(ZdocRecordService.PARAMES).beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name(HummerConstants.CODE).value(i2);
        jsonWriter.endObject();
        a(jsonWriter, (Map<String, ?>) map);
        jsonWriter.endObject();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void a(String str, String str2, Map map, byte[] bArr, JsonWriter jsonWriter) {
        jsonWriter.name(ZdocRecordService.PARAMES).beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name("uri").value(str);
        jsonWriter.name("verb").value(str2);
        jsonWriter.endObject();
        a(jsonWriter, (Map<String, ?>) map);
        if (bArr != null) {
            jsonWriter.name("body").value(com.google.android.gms.common.util.c.a(bArr));
        }
        jsonWriter.endObject();
    }
}
