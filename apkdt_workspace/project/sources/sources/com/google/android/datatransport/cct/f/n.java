package com.google.android.datatransport.cct.f;

import android.util.JsonReader;
import android.util.JsonToken;
import androidx.annotation.NonNull;
import java.io.IOException;
import java.io.Reader;

/* compiled from: LogResponse.java */
/* loaded from: classes.dex */
public abstract class n {
    static n a(long j2) {
        return new h(j2);
    }

    public abstract long a();

    @NonNull
    public static n a(@NonNull Reader reader) {
        JsonReader jsonReader = new JsonReader(reader);
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                if (jsonReader.nextName().equals("nextRequestWaitMillis")) {
                    if (jsonReader.peek() == JsonToken.STRING) {
                        return a(Long.parseLong(jsonReader.nextString()));
                    }
                    return a(jsonReader.nextLong());
                }
                jsonReader.skipValue();
            }
            throw new IOException("Response is missing nextRequestWaitMillis field.");
        } finally {
            jsonReader.close();
        }
    }
}
