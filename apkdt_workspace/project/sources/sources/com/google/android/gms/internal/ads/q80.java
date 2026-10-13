package com.google.android.gms.internal.ads;

import android.util.JsonWriter;
import com.zoloz.android.phone.zdoc.service.ZdocRecordService;
import java.io.IOException;
import java.io.StringWriter;
import java.util.Iterator;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class q80 {

    /* renamed from: a, reason: collision with root package name */
    private final com.google.android.gms.common.util.e f8860a;

    public q80(com.google.android.gms.common.util.e eVar) {
        this.f8860a = eVar;
    }

    public final void a(List<Object> list, String str, String str2, Object... objArr) {
        if (((Boolean) mu1.e().a(aw1.Y0)).booleanValue()) {
            long a2 = this.f8860a.a();
            StringWriter stringWriter = new StringWriter();
            JsonWriter jsonWriter = new JsonWriter(stringWriter);
            try {
                jsonWriter.beginObject();
                jsonWriter.name("timestamp").value(a2);
                jsonWriter.name("source").value(str);
                jsonWriter.name("event").value(str2);
                jsonWriter.name("components").beginArray();
                Iterator<Object> it = list.iterator();
                while (it.hasNext()) {
                    jsonWriter.value(it.next().toString());
                }
                jsonWriter.endArray();
                jsonWriter.name(ZdocRecordService.PARAMES).beginArray();
                int length = objArr.length;
                for (int i2 = 0; i2 < length; i2++) {
                    Object obj = objArr[i2];
                    jsonWriter.value(obj != null ? obj.toString() : null);
                }
                jsonWriter.endArray();
                jsonWriter.endObject();
                jsonWriter.flush();
                jsonWriter.close();
            } catch (IOException e2) {
                qd.b("unable to log", e2);
            }
            String valueOf = String.valueOf(stringWriter.toString());
            qd.c(valueOf.length() != 0 ? "AD-DBG ".concat(valueOf) : new String("AD-DBG "));
        }
    }
}
