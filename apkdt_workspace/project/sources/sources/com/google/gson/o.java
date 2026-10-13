package com.google.gson;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: LongSerializationPolicy.java */
/* loaded from: classes.dex */
public abstract class o {
    public static final o DEFAULT = new a("DEFAULT", 0);
    public static final o STRING = new o("STRING", 1) { // from class: com.google.gson.o.b
        {
            a aVar = null;
        }

        @Override // com.google.gson.o
        public JsonElement serialize(Long l2) {
            return new JsonPrimitive(String.valueOf(l2));
        }
    };

    /* renamed from: e, reason: collision with root package name */
    private static final /* synthetic */ o[] f15471e = {DEFAULT, STRING};

    /* compiled from: LongSerializationPolicy.java */
    /* loaded from: classes.dex */
    enum a extends o {
        a(String str, int i2) {
            super(str, i2, null);
        }

        @Override // com.google.gson.o
        public JsonElement serialize(Long l2) {
            return new JsonPrimitive(l2);
        }
    }

    private o(String str, int i2) {
    }

    public static o valueOf(String str) {
        return (o) Enum.valueOf(o.class, str);
    }

    public static o[] values() {
        return (o[]) f15471e.clone();
    }

    public abstract JsonElement serialize(Long l2);

    /* synthetic */ o(String str, int i2, a aVar) {
        this(str, i2);
    }
}
