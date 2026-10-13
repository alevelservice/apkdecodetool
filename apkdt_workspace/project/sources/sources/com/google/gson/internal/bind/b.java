package com.google.gson.internal.bind;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.j;
import com.google.gson.r.c;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

/* compiled from: JsonTreeWriter.java */
/* loaded from: classes2.dex */
public final class b extends c {
    private static final Writer s = new a();
    private static final JsonPrimitive t = new JsonPrimitive("closed");
    private final List<JsonElement> p;
    private String q;
    private JsonElement r;

    /* compiled from: JsonTreeWriter.java */
    /* loaded from: classes2.dex */
    class a extends Writer {
        a() {
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            throw new AssertionError();
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
            throw new AssertionError();
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i2, int i3) {
            throw new AssertionError();
        }
    }

    public b() {
        super(s);
        this.p = new ArrayList();
        this.r = j.f15470a;
    }

    private void a(JsonElement jsonElement) {
        if (this.q != null) {
            if (!jsonElement.isJsonNull() || m()) {
                ((JsonObject) s()).add(this.q, jsonElement);
            }
            this.q = null;
            return;
        }
        if (this.p.isEmpty()) {
            this.r = jsonElement;
            return;
        }
        JsonElement s2 = s();
        if (s2 instanceof JsonArray) {
            ((JsonArray) s2).add(jsonElement);
            return;
        }
        throw new IllegalStateException();
    }

    private JsonElement s() {
        return this.p.get(r0.size() - 1);
    }

    @Override // com.google.gson.r.c
    public c b(String str) {
        if (!this.p.isEmpty() && this.q == null) {
            if (s() instanceof JsonObject) {
                this.q = str;
                return this;
            }
            throw new IllegalStateException();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.r.c, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.p.isEmpty()) {
            this.p.add(t);
            return;
        }
        throw new IOException("Incomplete document");
    }

    @Override // com.google.gson.r.c
    public c d(String str) {
        if (str == null) {
            q();
            return this;
        }
        a(new JsonPrimitive(str));
        return this;
    }

    @Override // com.google.gson.r.c, java.io.Flushable
    public void flush() {
    }

    @Override // com.google.gson.r.c
    public c h(long j2) {
        a(new JsonPrimitive(Long.valueOf(j2)));
        return this;
    }

    @Override // com.google.gson.r.c
    public c i() {
        JsonArray jsonArray = new JsonArray();
        a(jsonArray);
        this.p.add(jsonArray);
        return this;
    }

    @Override // com.google.gson.r.c
    public c j() {
        JsonObject jsonObject = new JsonObject();
        a(jsonObject);
        this.p.add(jsonObject);
        return this;
    }

    @Override // com.google.gson.r.c
    public c k() {
        if (!this.p.isEmpty() && this.q == null) {
            if (s() instanceof JsonArray) {
                this.p.remove(r0.size() - 1);
                return this;
            }
            throw new IllegalStateException();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.r.c
    public c l() {
        if (!this.p.isEmpty() && this.q == null) {
            if (s() instanceof JsonObject) {
                this.p.remove(r0.size() - 1);
                return this;
            }
            throw new IllegalStateException();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.r.c
    public c q() {
        a(j.f15470a);
        return this;
    }

    public JsonElement r() {
        if (this.p.isEmpty()) {
            return this.r;
        }
        throw new IllegalStateException("Expected one JSON element but was " + this.p);
    }

    @Override // com.google.gson.r.c
    public c d(boolean z) {
        a(new JsonPrimitive(Boolean.valueOf(z)));
        return this;
    }

    @Override // com.google.gson.r.c
    public c a(Boolean bool) {
        if (bool == null) {
            q();
            return this;
        }
        a(new JsonPrimitive(bool));
        return this;
    }

    @Override // com.google.gson.r.c
    public c a(double d2) {
        if (!p() && (Double.isNaN(d2) || Double.isInfinite(d2))) {
            throw new IllegalArgumentException("JSON forbids NaN and infinities: " + d2);
        }
        a(new JsonPrimitive(Double.valueOf(d2)));
        return this;
    }

    @Override // com.google.gson.r.c
    public c a(Number number) {
        if (number == null) {
            q();
            return this;
        }
        if (!p()) {
            double doubleValue = number.doubleValue();
            if (Double.isNaN(doubleValue) || Double.isInfinite(doubleValue)) {
                throw new IllegalArgumentException("JSON forbids NaN and infinities: " + number);
            }
        }
        a(new JsonPrimitive(number));
        return this;
    }
}
