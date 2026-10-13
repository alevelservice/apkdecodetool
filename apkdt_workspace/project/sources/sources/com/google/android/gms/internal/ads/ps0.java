package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import java.util.Collections;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ps0 {

    /* renamed from: a, reason: collision with root package name */
    public final List<String> f8768a;

    /* renamed from: b, reason: collision with root package name */
    public final String f8769b;

    /* renamed from: c, reason: collision with root package name */
    public final int f8770c;

    /* renamed from: d, reason: collision with root package name */
    public final String f8771d;

    /* renamed from: e, reason: collision with root package name */
    public final int f8772e;

    /* renamed from: f, reason: collision with root package name */
    public final long f8773f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ps0(JsonReader jsonReader) {
        List<String> emptyList = Collections.emptyList();
        jsonReader.beginObject();
        String str = "";
        int i2 = 0;
        long j2 = 0;
        int i3 = 0;
        String str2 = "";
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if ("nofill_urls".equals(nextName)) {
                emptyList = nc.a(jsonReader);
            } else if ("refresh_interval".equals(nextName)) {
                i2 = jsonReader.nextInt();
            } else if ("gws_query_id".equals(nextName)) {
                str = jsonReader.nextString();
            } else if ("analytics_query_ad_event_id".equals(nextName)) {
                str2 = jsonReader.nextString();
            } else if ("response_code".equals(nextName)) {
                i3 = jsonReader.nextInt();
            } else if ("latency".equals(nextName)) {
                j2 = jsonReader.nextLong();
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        this.f8768a = emptyList;
        this.f8770c = i2;
        this.f8769b = str;
        this.f8771d = str2;
        this.f8772e = i3;
        this.f8773f = j2;
    }
}
