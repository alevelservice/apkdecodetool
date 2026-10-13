package com.google.gson;

import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;

/* loaded from: classes.dex */
public abstract class TypeAdapter<T> {
    public final T fromJson(Reader reader) {
        return read2(new com.google.gson.r.a(reader));
    }

    public final T fromJsonTree(JsonElement jsonElement) {
        try {
            return read2(new com.google.gson.internal.bind.a(jsonElement));
        } catch (IOException e2) {
            throw new i(e2);
        }
    }

    public final TypeAdapter<T> nullSafe() {
        return new TypeAdapter<T>() { // from class: com.google.gson.TypeAdapter.1
            @Override // com.google.gson.TypeAdapter
            /* renamed from: read */
            public T read2(com.google.gson.r.a aVar) {
                if (aVar.C() == com.google.gson.r.b.NULL) {
                    aVar.A();
                    return null;
                }
                return (T) TypeAdapter.this.read2(aVar);
            }

            @Override // com.google.gson.TypeAdapter
            public void write(com.google.gson.r.c cVar, T t) {
                if (t == null) {
                    cVar.q();
                } else {
                    TypeAdapter.this.write(cVar, t);
                }
            }
        };
    }

    /* renamed from: read */
    public abstract T read2(com.google.gson.r.a aVar);

    public final void toJson(Writer writer, T t) {
        write(new com.google.gson.r.c(writer), t);
    }

    public final JsonElement toJsonTree(T t) {
        try {
            com.google.gson.internal.bind.b bVar = new com.google.gson.internal.bind.b();
            write(bVar, t);
            return bVar.r();
        } catch (IOException e2) {
            throw new i(e2);
        }
    }

    public abstract void write(com.google.gson.r.c cVar, T t);

    public final T fromJson(String str) {
        return fromJson(new StringReader(str));
    }

    public final String toJson(T t) {
        StringWriter stringWriter = new StringWriter();
        try {
            toJson(stringWriter, t);
            return stringWriter.toString();
        } catch (IOException e2) {
            throw new AssertionError(e2);
        }
    }
}
