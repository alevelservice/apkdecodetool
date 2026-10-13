package com.google.gson.internal.bind;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.j;
import java.io.Reader;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;

/* compiled from: JsonTreeReader.java */
/* loaded from: classes2.dex */
public final class a extends com.google.gson.r.a {
    private static final Reader y = new C0144a();
    private static final Object z = new Object();
    private Object[] u;
    private int v;
    private String[] w;
    private int[] x;

    /* compiled from: JsonTreeReader.java */
    /* renamed from: com.google.gson.internal.bind.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    class C0144a extends Reader {
        C0144a() {
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            throw new AssertionError();
        }

        @Override // java.io.Reader
        public int read(char[] cArr, int i2, int i3) {
            throw new AssertionError();
        }
    }

    public a(JsonElement jsonElement) {
        super(y);
        this.u = new Object[32];
        this.v = 0;
        this.w = new String[32];
        this.x = new int[32];
        a(jsonElement);
    }

    private Object F() {
        return this.u[this.v - 1];
    }

    private Object G() {
        Object[] objArr = this.u;
        int i2 = this.v - 1;
        this.v = i2;
        Object obj = objArr[i2];
        objArr[this.v] = null;
        return obj;
    }

    private void a(com.google.gson.r.b bVar) {
        if (C() == bVar) {
            return;
        }
        throw new IllegalStateException("Expected " + bVar + " but was " + C() + r());
    }

    private String r() {
        return " at path " + o();
    }

    @Override // com.google.gson.r.a
    public void A() {
        a(com.google.gson.r.b.NULL);
        G();
        int i2 = this.v;
        if (i2 > 0) {
            int[] iArr = this.x;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
    }

    @Override // com.google.gson.r.a
    public String B() {
        com.google.gson.r.b C = C();
        if (C != com.google.gson.r.b.STRING && C != com.google.gson.r.b.NUMBER) {
            throw new IllegalStateException("Expected " + com.google.gson.r.b.STRING + " but was " + C + r());
        }
        String asString = ((JsonPrimitive) G()).getAsString();
        int i2 = this.v;
        if (i2 > 0) {
            int[] iArr = this.x;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
        return asString;
    }

    @Override // com.google.gson.r.a
    public com.google.gson.r.b C() {
        if (this.v == 0) {
            return com.google.gson.r.b.END_DOCUMENT;
        }
        Object F = F();
        if (F instanceof Iterator) {
            boolean z2 = this.u[this.v - 2] instanceof JsonObject;
            Iterator it = (Iterator) F;
            if (!it.hasNext()) {
                return z2 ? com.google.gson.r.b.END_OBJECT : com.google.gson.r.b.END_ARRAY;
            }
            if (z2) {
                return com.google.gson.r.b.NAME;
            }
            a(it.next());
            return C();
        }
        if (F instanceof JsonObject) {
            return com.google.gson.r.b.BEGIN_OBJECT;
        }
        if (F instanceof JsonArray) {
            return com.google.gson.r.b.BEGIN_ARRAY;
        }
        if (F instanceof JsonPrimitive) {
            JsonPrimitive jsonPrimitive = (JsonPrimitive) F;
            if (jsonPrimitive.isString()) {
                return com.google.gson.r.b.STRING;
            }
            if (jsonPrimitive.isBoolean()) {
                return com.google.gson.r.b.BOOLEAN;
            }
            if (jsonPrimitive.isNumber()) {
                return com.google.gson.r.b.NUMBER;
            }
            throw new AssertionError();
        }
        if (F instanceof j) {
            return com.google.gson.r.b.NULL;
        }
        if (F == z) {
            throw new IllegalStateException("JsonReader is closed");
        }
        throw new AssertionError();
    }

    @Override // com.google.gson.r.a
    public void D() {
        if (C() == com.google.gson.r.b.NAME) {
            z();
            this.w[this.v - 2] = "null";
        } else {
            G();
            int i2 = this.v;
            if (i2 > 0) {
                this.w[i2 - 1] = "null";
            }
        }
        int i3 = this.v;
        if (i3 > 0) {
            int[] iArr = this.x;
            int i4 = i3 - 1;
            iArr[i4] = iArr[i4] + 1;
        }
    }

    public void E() {
        a(com.google.gson.r.b.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) F()).next();
        a(entry.getValue());
        a(new JsonPrimitive((String) entry.getKey()));
    }

    @Override // com.google.gson.r.a, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.u = new Object[]{z};
        this.v = 1;
    }

    @Override // com.google.gson.r.a
    public void i() {
        a(com.google.gson.r.b.BEGIN_ARRAY);
        a(((JsonArray) F()).iterator());
        this.x[this.v - 1] = 0;
    }

    @Override // com.google.gson.r.a
    public void j() {
        a(com.google.gson.r.b.BEGIN_OBJECT);
        a(((JsonObject) F()).entrySet().iterator());
    }

    @Override // com.google.gson.r.a
    public void l() {
        a(com.google.gson.r.b.END_ARRAY);
        G();
        G();
        int i2 = this.v;
        if (i2 > 0) {
            int[] iArr = this.x;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
    }

    @Override // com.google.gson.r.a
    public void m() {
        a(com.google.gson.r.b.END_OBJECT);
        G();
        G();
        int i2 = this.v;
        if (i2 > 0) {
            int[] iArr = this.x;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
    }

    @Override // com.google.gson.r.a
    public String o() {
        StringBuilder sb = new StringBuilder();
        sb.append('$');
        int i2 = 0;
        while (i2 < this.v) {
            Object[] objArr = this.u;
            if (objArr[i2] instanceof JsonArray) {
                i2++;
                if (objArr[i2] instanceof Iterator) {
                    sb.append('[');
                    sb.append(this.x[i2]);
                    sb.append(']');
                }
            } else if (objArr[i2] instanceof JsonObject) {
                i2++;
                if (objArr[i2] instanceof Iterator) {
                    sb.append('.');
                    String[] strArr = this.w;
                    if (strArr[i2] != null) {
                        sb.append(strArr[i2]);
                    }
                }
            }
            i2++;
        }
        return sb.toString();
    }

    @Override // com.google.gson.r.a
    public boolean p() {
        com.google.gson.r.b C = C();
        return (C == com.google.gson.r.b.END_OBJECT || C == com.google.gson.r.b.END_ARRAY) ? false : true;
    }

    @Override // com.google.gson.r.a
    public boolean s() {
        a(com.google.gson.r.b.BOOLEAN);
        boolean asBoolean = ((JsonPrimitive) G()).getAsBoolean();
        int i2 = this.v;
        if (i2 > 0) {
            int[] iArr = this.x;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
        return asBoolean;
    }

    @Override // com.google.gson.r.a
    public double t() {
        com.google.gson.r.b C = C();
        if (C != com.google.gson.r.b.NUMBER && C != com.google.gson.r.b.STRING) {
            throw new IllegalStateException("Expected " + com.google.gson.r.b.NUMBER + " but was " + C + r());
        }
        double asDouble = ((JsonPrimitive) F()).getAsDouble();
        if (!q() && (Double.isNaN(asDouble) || Double.isInfinite(asDouble))) {
            throw new NumberFormatException("JSON forbids NaN and infinities: " + asDouble);
        }
        G();
        int i2 = this.v;
        if (i2 > 0) {
            int[] iArr = this.x;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
        return asDouble;
    }

    @Override // com.google.gson.r.a
    public String toString() {
        return a.class.getSimpleName();
    }

    @Override // com.google.gson.r.a
    public int u() {
        com.google.gson.r.b C = C();
        if (C != com.google.gson.r.b.NUMBER && C != com.google.gson.r.b.STRING) {
            throw new IllegalStateException("Expected " + com.google.gson.r.b.NUMBER + " but was " + C + r());
        }
        int asInt = ((JsonPrimitive) F()).getAsInt();
        G();
        int i2 = this.v;
        if (i2 > 0) {
            int[] iArr = this.x;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
        return asInt;
    }

    @Override // com.google.gson.r.a
    public long v() {
        com.google.gson.r.b C = C();
        if (C != com.google.gson.r.b.NUMBER && C != com.google.gson.r.b.STRING) {
            throw new IllegalStateException("Expected " + com.google.gson.r.b.NUMBER + " but was " + C + r());
        }
        long asLong = ((JsonPrimitive) F()).getAsLong();
        G();
        int i2 = this.v;
        if (i2 > 0) {
            int[] iArr = this.x;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
        return asLong;
    }

    @Override // com.google.gson.r.a
    public String z() {
        a(com.google.gson.r.b.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) F()).next();
        String str = (String) entry.getKey();
        this.w[this.v - 1] = str;
        a(entry.getValue());
        return str;
    }

    private void a(Object obj) {
        int i2 = this.v;
        Object[] objArr = this.u;
        if (i2 == objArr.length) {
            int i3 = i2 * 2;
            this.u = Arrays.copyOf(objArr, i3);
            this.x = Arrays.copyOf(this.x, i3);
            this.w = (String[]) Arrays.copyOf(this.w, i3);
        }
        Object[] objArr2 = this.u;
        int i4 = this.v;
        this.v = i4 + 1;
        objArr2[i4] = obj;
    }
}
