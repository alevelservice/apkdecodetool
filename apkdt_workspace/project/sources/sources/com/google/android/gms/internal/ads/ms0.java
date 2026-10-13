package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import java.util.ArrayList;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ms0 {

    /* renamed from: a, reason: collision with root package name */
    public final int f8219a;

    /* renamed from: b, reason: collision with root package name */
    public final int f8220b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f8221c;

    public ms0(int i2, int i3, boolean z) {
        this.f8219a = i2;
        this.f8220b = i3;
        this.f8221c = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<ms0> a(JsonReader jsonReader) {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            jsonReader.beginObject();
            int i2 = 0;
            int i3 = 0;
            boolean z = false;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if ("width".equals(nextName)) {
                    i2 = jsonReader.nextInt();
                } else if ("height".equals(nextName)) {
                    i3 = jsonReader.nextInt();
                } else if ("is_fluid_height".equals(nextName)) {
                    z = jsonReader.nextBoolean();
                } else {
                    jsonReader.skipValue();
                }
            }
            jsonReader.endObject();
            arrayList.add(new ms0(i2, i3, z));
        }
        jsonReader.endArray();
        return arrayList;
    }
}
