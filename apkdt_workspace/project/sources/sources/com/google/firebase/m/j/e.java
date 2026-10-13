package com.google.firebase.m.j;

import android.util.Base64;
import android.util.JsonWriter;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.m.f;
import com.google.firebase.m.g;
import com.google.firebase.m.h;
import java.io.Writer;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;

/* compiled from: JsonValueObjectEncoderContext.java */
/* loaded from: classes.dex */
final class e implements f, h {

    /* renamed from: a, reason: collision with root package name */
    private e f15163a = null;

    /* renamed from: b, reason: collision with root package name */
    private boolean f15164b = true;

    /* renamed from: c, reason: collision with root package name */
    private final JsonWriter f15165c;

    /* renamed from: d, reason: collision with root package name */
    private final Map<Class<?>, com.google.firebase.m.e<?>> f15166d;

    /* renamed from: e, reason: collision with root package name */
    private final Map<Class<?>, g<?>> f15167e;

    /* renamed from: f, reason: collision with root package name */
    private final com.google.firebase.m.e<Object> f15168f;

    /* renamed from: g, reason: collision with root package name */
    private final boolean f15169g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(@NonNull Writer writer, @NonNull Map<Class<?>, com.google.firebase.m.e<?>> map, @NonNull Map<Class<?>, g<?>> map2, com.google.firebase.m.e<Object> eVar, boolean z) {
        this.f15165c = new JsonWriter(writer);
        this.f15166d = map;
        this.f15167e = map2;
        this.f15168f = eVar;
        this.f15169g = z;
    }

    private void b() {
        if (this.f15164b) {
            e eVar = this.f15163a;
            if (eVar != null) {
                eVar.b();
                this.f15163a.f15164b = false;
                this.f15163a = null;
                this.f15165c.endObject();
                return;
            }
            return;
        }
        throw new IllegalStateException("Parent context used since this context was created. Cannot use this context anymore.");
    }

    private e c(@NonNull String str, @Nullable Object obj) {
        if (obj == null) {
            return this;
        }
        b();
        this.f15165c.name(str);
        return a(obj, false);
    }

    @Override // com.google.firebase.m.f
    @NonNull
    public /* bridge */ /* synthetic */ f a(@NonNull String str, int i2) {
        a(str, i2);
        return this;
    }

    @Override // com.google.firebase.m.f
    @NonNull
    public /* bridge */ /* synthetic */ f a(@NonNull String str, long j2) {
        a(str, j2);
        return this;
    }

    @Override // com.google.firebase.m.f
    @NonNull
    public /* bridge */ /* synthetic */ f a(@NonNull String str, boolean z) {
        a(str, z);
        return this;
    }

    @Override // com.google.firebase.m.h
    @NonNull
    public /* bridge */ /* synthetic */ h a(@Nullable String str) {
        a(str);
        return this;
    }

    @Override // com.google.firebase.m.h
    @NonNull
    public /* bridge */ /* synthetic */ h a(boolean z) {
        a(z);
        return this;
    }

    @Override // com.google.firebase.m.f
    @NonNull
    public e a(@NonNull String str, @Nullable Object obj) {
        if (this.f15169g) {
            return c(str, obj);
        }
        return b(str, obj);
    }

    private e b(@NonNull String str, @Nullable Object obj) {
        b();
        this.f15165c.name(str);
        if (obj == null) {
            this.f15165c.nullValue();
            return this;
        }
        return a(obj, false);
    }

    @Override // com.google.firebase.m.f
    @NonNull
    public e a(@NonNull String str, int i2) {
        b();
        this.f15165c.name(str);
        a(i2);
        return this;
    }

    @Override // com.google.firebase.m.f
    @NonNull
    public e a(@NonNull String str, long j2) {
        b();
        this.f15165c.name(str);
        a(j2);
        return this;
    }

    @Override // com.google.firebase.m.f
    @NonNull
    public e a(@NonNull String str, boolean z) {
        b();
        this.f15165c.name(str);
        a(z);
        return this;
    }

    @Override // com.google.firebase.m.f
    @NonNull
    public f a(@NonNull com.google.firebase.m.d dVar, @Nullable Object obj) {
        return a(dVar.a(), obj);
    }

    @Override // com.google.firebase.m.f
    @NonNull
    public f a(@NonNull com.google.firebase.m.d dVar, long j2) {
        a(dVar.a(), j2);
        return this;
    }

    @Override // com.google.firebase.m.h
    @NonNull
    public e a(@Nullable String str) {
        b();
        this.f15165c.value(str);
        return this;
    }

    @NonNull
    public e a(int i2) {
        b();
        this.f15165c.value(i2);
        return this;
    }

    @NonNull
    public e a(long j2) {
        b();
        this.f15165c.value(j2);
        return this;
    }

    @Override // com.google.firebase.m.h
    @NonNull
    public e a(boolean z) {
        b();
        this.f15165c.value(z);
        return this;
    }

    @NonNull
    public e a(@Nullable byte[] bArr) {
        b();
        if (bArr == null) {
            this.f15165c.nullValue();
        } else {
            this.f15165c.value(Base64.encodeToString(bArr, 2));
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public e a(@Nullable Object obj, boolean z) {
        int i2 = 0;
        if (z && a(obj)) {
            Object[] objArr = new Object[1];
            objArr[0] = obj == null ? null : obj.getClass();
            throw new com.google.firebase.m.c(String.format("%s cannot be encoded inline", objArr));
        }
        if (obj == null) {
            this.f15165c.nullValue();
            return this;
        }
        if (obj instanceof Number) {
            this.f15165c.value((Number) obj);
            return this;
        }
        if (obj.getClass().isArray()) {
            if (obj instanceof byte[]) {
                a((byte[]) obj);
                return this;
            }
            this.f15165c.beginArray();
            if (obj instanceof int[]) {
                int length = ((int[]) obj).length;
                while (i2 < length) {
                    this.f15165c.value(r6[i2]);
                    i2++;
                }
            } else if (obj instanceof long[]) {
                long[] jArr = (long[]) obj;
                int length2 = jArr.length;
                while (i2 < length2) {
                    a(jArr[i2]);
                    i2++;
                }
            } else if (obj instanceof double[]) {
                double[] dArr = (double[]) obj;
                int length3 = dArr.length;
                while (i2 < length3) {
                    this.f15165c.value(dArr[i2]);
                    i2++;
                }
            } else if (obj instanceof boolean[]) {
                boolean[] zArr = (boolean[]) obj;
                int length4 = zArr.length;
                while (i2 < length4) {
                    this.f15165c.value(zArr[i2]);
                    i2++;
                }
            } else if (obj instanceof Number[]) {
                for (Number number : (Number[]) obj) {
                    a((Object) number, false);
                }
            } else {
                for (Object obj2 : (Object[]) obj) {
                    a(obj2, false);
                }
            }
            this.f15165c.endArray();
            return this;
        }
        if (obj instanceof Collection) {
            this.f15165c.beginArray();
            Iterator it = ((Collection) obj).iterator();
            while (it.hasNext()) {
                a(it.next(), false);
            }
            this.f15165c.endArray();
            return this;
        }
        if (obj instanceof Map) {
            this.f15165c.beginObject();
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                Object key = entry.getKey();
                try {
                    a((String) key, entry.getValue());
                } catch (ClassCastException e2) {
                    throw new com.google.firebase.m.c(String.format("Only String keys are currently supported in maps, got %s of type %s instead.", key, key.getClass()), e2);
                }
            }
            this.f15165c.endObject();
            return this;
        }
        com.google.firebase.m.e<?> eVar = this.f15166d.get(obj.getClass());
        if (eVar != null) {
            a(eVar, obj, z);
            return this;
        }
        g<?> gVar = this.f15167e.get(obj.getClass());
        if (gVar != null) {
            gVar.a(obj, this);
            return this;
        }
        if (obj instanceof Enum) {
            a(((Enum) obj).name());
            return this;
        }
        a(this.f15168f, obj, z);
        return this;
    }

    e a(com.google.firebase.m.e<Object> eVar, Object obj, boolean z) {
        if (!z) {
            this.f15165c.beginObject();
        }
        eVar.a(obj, this);
        if (!z) {
            this.f15165c.endObject();
        }
        return this;
    }

    private boolean a(Object obj) {
        return obj == null || obj.getClass().isArray() || (obj instanceof Collection) || (obj instanceof Date) || (obj instanceof Enum) || (obj instanceof Number);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        b();
        this.f15165c.flush();
    }
}
