package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.json.JSONException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ts0 {

    /* renamed from: a, reason: collision with root package name */
    public final List<ns0> f9629a;

    /* renamed from: b, reason: collision with root package name */
    public final ps0 f9630b;

    /* renamed from: c, reason: collision with root package name */
    public final List<ss0> f9631c;

    private ts0(JsonReader jsonReader) {
        List<ns0> emptyList = Collections.emptyList();
        ArrayList arrayList = new ArrayList();
        jsonReader.beginObject();
        ps0 ps0Var = null;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if ("responses".equals(nextName)) {
                jsonReader.beginArray();
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    String nextName2 = jsonReader.nextName();
                    if ("ad_configs".equals(nextName2)) {
                        emptyList = new ArrayList<>();
                        jsonReader.beginArray();
                        while (jsonReader.hasNext()) {
                            emptyList.add(new ns0(jsonReader));
                        }
                        jsonReader.endArray();
                    } else if (nextName2.equals("common")) {
                        ps0Var = new ps0(jsonReader);
                    } else {
                        jsonReader.skipValue();
                    }
                }
                jsonReader.endObject();
                jsonReader.endArray();
            } else if (nextName.equals("actions")) {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    jsonReader.beginObject();
                    String str = null;
                    Map<String, String> map = null;
                    while (jsonReader.hasNext()) {
                        String nextName3 = jsonReader.nextName();
                        if ("name".equals(nextName3)) {
                            str = jsonReader.nextString();
                        } else if ("info".equals(nextName3)) {
                            map = nc.b(jsonReader);
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                    if (str != null) {
                        arrayList.add(new ss0(str, map));
                    }
                    jsonReader.endObject();
                }
                jsonReader.endArray();
            }
        }
        this.f9631c = arrayList;
        this.f9629a = emptyList;
        this.f9630b = ps0Var == null ? new ps0(new JsonReader(new StringReader("{}"))) : ps0Var;
    }

    public static ts0 a(Reader reader) {
        try {
            try {
                return new ts0(new JsonReader(reader));
            } finally {
                com.google.android.gms.common.util.k.a(reader);
            }
        } catch (IOException | AssertionError | IllegalStateException | NumberFormatException | JSONException e2) {
            throw new os0("unable to parse ServerResponse", e2);
        }
    }
}
