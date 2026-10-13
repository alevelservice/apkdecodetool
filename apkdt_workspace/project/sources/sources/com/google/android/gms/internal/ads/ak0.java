package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.util.JsonReader;
import com.zoloz.android.phone.zdoc.service.ZdocRecordService;
import org.json.JSONException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ak0 {

    /* renamed from: a, reason: collision with root package name */
    public final String f5588a;

    /* renamed from: b, reason: collision with root package name */
    public String f5589b;

    public ak0(JsonReader jsonReader) {
        jsonReader.beginObject();
        String str = "";
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName = nextName == null ? "" : nextName;
            char c2 = 65535;
            if (nextName.hashCode() == -995427962 && nextName.equals(ZdocRecordService.PARAMES)) {
                c2 = 0;
            }
            if (c2 != 0) {
                jsonReader.skipValue();
            } else {
                str = jsonReader.nextString();
            }
        }
        this.f5588a = str;
        jsonReader.endObject();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ak0 a(Bundle bundle) {
        try {
            this.f5589b = com.google.android.gms.ads.internal.n.c().a(bundle).toString();
        } catch (JSONException unused) {
            this.f5589b = "{}";
        }
        return this;
    }
}
