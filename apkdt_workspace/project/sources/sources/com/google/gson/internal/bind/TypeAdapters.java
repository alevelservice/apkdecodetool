package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.i;
import com.google.gson.internal.f;
import com.google.gson.j;
import com.google.gson.n;
import com.google.gson.p;
import com.google.gson.r.c;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Currency;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;

/* loaded from: classes2.dex */
public final class TypeAdapters {

    /* renamed from: a, reason: collision with root package name */
    public static final TypeAdapter<Class> f15399a = new TypeAdapter<Class>() { // from class: com.google.gson.internal.bind.TypeAdapters.1
        @Override // com.google.gson.TypeAdapter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(c cVar, Class cls) {
            throw new UnsupportedOperationException("Attempted to serialize java.lang.Class: " + cls.getName() + ". Forgot to register a type adapter?");
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.TypeAdapter
        /* renamed from: read */
        public Class read2(com.google.gson.r.a aVar) {
            throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
        }
    }.nullSafe();

    /* renamed from: b, reason: collision with root package name */
    public static final p f15400b = a(Class.class, f15399a);

    /* renamed from: c, reason: collision with root package name */
    public static final TypeAdapter<BitSet> f15401c = new TypeAdapter<BitSet>() { // from class: com.google.gson.internal.bind.TypeAdapters.2
        @Override // com.google.gson.TypeAdapter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(c cVar, BitSet bitSet) {
            cVar.i();
            int length = bitSet.length();
            for (int i2 = 0; i2 < length; i2++) {
                cVar.h(bitSet.get(i2) ? 1L : 0L);
            }
            cVar.k();
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x002b, code lost:
        
            if (java.lang.Integer.parseInt(r1) != 0) goto L23;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x002e, code lost:
        
            r5 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x0067, code lost:
        
            if (r8.u() != 0) goto L23;
         */
        @Override // com.google.gson.TypeAdapter
        /* renamed from: read, reason: avoid collision after fix types in other method */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.util.BitSet read2(com.google.gson.r.a r8) {
            /*
                r7 = this;
                java.util.BitSet r0 = new java.util.BitSet
                r0.<init>()
                r8.i()
                com.google.gson.r.b r1 = r8.C()
                r2 = 0
                r3 = 0
            Le:
                com.google.gson.r.b r4 = com.google.gson.r.b.END_ARRAY
                if (r1 == r4) goto L75
                int[] r4 = com.google.gson.internal.bind.TypeAdapters.a.f15428a
                int r5 = r1.ordinal()
                r4 = r4[r5]
                r5 = 1
                if (r4 == r5) goto L63
                r6 = 2
                if (r4 == r6) goto L5e
                r6 = 3
                if (r4 != r6) goto L47
                java.lang.String r1 = r8.B()
                int r1 = java.lang.Integer.parseInt(r1)     // Catch: java.lang.NumberFormatException -> L30
                if (r1 == 0) goto L2e
                goto L69
            L2e:
                r5 = 0
                goto L69
            L30:
                com.google.gson.n r8 = new com.google.gson.n
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r2 = "Error: Expecting: bitset number value (1, 0), Found: "
                r0.append(r2)
                r0.append(r1)
                java.lang.String r0 = r0.toString()
                r8.<init>(r0)
                throw r8
            L47:
                com.google.gson.n r8 = new com.google.gson.n
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r2 = "Invalid bitset value type: "
                r0.append(r2)
                r0.append(r1)
                java.lang.String r0 = r0.toString()
                r8.<init>(r0)
                throw r8
            L5e:
                boolean r5 = r8.s()
                goto L69
            L63:
                int r1 = r8.u()
                if (r1 == 0) goto L2e
            L69:
                if (r5 == 0) goto L6e
                r0.set(r3)
            L6e:
                int r3 = r3 + 1
                com.google.gson.r.b r1 = r8.C()
                goto Le
            L75:
                r8.l()
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.bind.TypeAdapters.AnonymousClass2.read2(com.google.gson.r.a):java.util.BitSet");
        }
    }.nullSafe();

    /* renamed from: d, reason: collision with root package name */
    public static final p f15402d = a(BitSet.class, f15401c);

    /* renamed from: e, reason: collision with root package name */
    public static final TypeAdapter<Boolean> f15403e = new TypeAdapter<Boolean>() { // from class: com.google.gson.internal.bind.TypeAdapters.3
        @Override // com.google.gson.TypeAdapter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(c cVar, Boolean bool) {
            cVar.a(bool);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.TypeAdapter
        /* renamed from: read */
        public Boolean read2(com.google.gson.r.a aVar) {
            com.google.gson.r.b C2 = aVar.C();
            if (C2 == com.google.gson.r.b.NULL) {
                aVar.A();
                return null;
            }
            if (C2 == com.google.gson.r.b.STRING) {
                return Boolean.valueOf(Boolean.parseBoolean(aVar.B()));
            }
            return Boolean.valueOf(aVar.s());
        }
    };

    /* renamed from: f, reason: collision with root package name */
    public static final TypeAdapter<Boolean> f15404f = new TypeAdapter<Boolean>() { // from class: com.google.gson.internal.bind.TypeAdapters.4
        @Override // com.google.gson.TypeAdapter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(c cVar, Boolean bool) {
            cVar.d(bool == null ? "null" : bool.toString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.TypeAdapter
        /* renamed from: read */
        public Boolean read2(com.google.gson.r.a aVar) {
            if (aVar.C() == com.google.gson.r.b.NULL) {
                aVar.A();
                return null;
            }
            return Boolean.valueOf(aVar.B());
        }
    };

    /* renamed from: g, reason: collision with root package name */
    public static final p f15405g = a(Boolean.TYPE, Boolean.class, f15403e);

    /* renamed from: h, reason: collision with root package name */
    public static final TypeAdapter<Number> f15406h = new TypeAdapter<Number>() { // from class: com.google.gson.internal.bind.TypeAdapters.5
        @Override // com.google.gson.TypeAdapter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(c cVar, Number number) {
            cVar.a(number);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.TypeAdapter
        /* renamed from: read */
        public Number read2(com.google.gson.r.a aVar) {
            if (aVar.C() == com.google.gson.r.b.NULL) {
                aVar.A();
                return null;
            }
            try {
                return Byte.valueOf((byte) aVar.u());
            } catch (NumberFormatException e2) {
                throw new n(e2);
            }
        }
    };

    /* renamed from: i, reason: collision with root package name */
    public static final p f15407i = a(Byte.TYPE, Byte.class, f15406h);

    /* renamed from: j, reason: collision with root package name */
    public static final TypeAdapter<Number> f15408j = new TypeAdapter<Number>() { // from class: com.google.gson.internal.bind.TypeAdapters.6
        @Override // com.google.gson.TypeAdapter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(c cVar, Number number) {
            cVar.a(number);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.TypeAdapter
        /* renamed from: read */
        public Number read2(com.google.gson.r.a aVar) {
            if (aVar.C() == com.google.gson.r.b.NULL) {
                aVar.A();
                return null;
            }
            try {
                return Short.valueOf((short) aVar.u());
            } catch (NumberFormatException e2) {
                throw new n(e2);
            }
        }
    };

    /* renamed from: k, reason: collision with root package name */
    public static final p f15409k = a(Short.TYPE, Short.class, f15408j);

    /* renamed from: l, reason: collision with root package name */
    public static final TypeAdapter<Number> f15410l = new TypeAdapter<Number>() { // from class: com.google.gson.internal.bind.TypeAdapters.7
        @Override // com.google.gson.TypeAdapter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(c cVar, Number number) {
            cVar.a(number);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.TypeAdapter
        /* renamed from: read */
        public Number read2(com.google.gson.r.a aVar) {
            if (aVar.C() == com.google.gson.r.b.NULL) {
                aVar.A();
                return null;
            }
            try {
                return Integer.valueOf(aVar.u());
            } catch (NumberFormatException e2) {
                throw new n(e2);
            }
        }
    };
    public static final p m = a(Integer.TYPE, Integer.class, f15410l);
    public static final TypeAdapter<AtomicInteger> n = new TypeAdapter<AtomicInteger>() { // from class: com.google.gson.internal.bind.TypeAdapters.8
        @Override // com.google.gson.TypeAdapter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(c cVar, AtomicInteger atomicInteger) {
            cVar.h(atomicInteger.get());
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: read, reason: avoid collision after fix types in other method */
        public AtomicInteger read2(com.google.gson.r.a aVar) {
            try {
                return new AtomicInteger(aVar.u());
            } catch (NumberFormatException e2) {
                throw new n(e2);
            }
        }
    }.nullSafe();
    public static final p o = a(AtomicInteger.class, n);
    public static final TypeAdapter<AtomicBoolean> p = new TypeAdapter<AtomicBoolean>() { // from class: com.google.gson.internal.bind.TypeAdapters.9
        @Override // com.google.gson.TypeAdapter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(c cVar, AtomicBoolean atomicBoolean) {
            cVar.d(atomicBoolean.get());
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: read, reason: avoid collision after fix types in other method */
        public AtomicBoolean read2(com.google.gson.r.a aVar) {
            return new AtomicBoolean(aVar.s());
        }
    }.nullSafe();
    public static final p q = a(AtomicBoolean.class, p);
    public static final TypeAdapter<AtomicIntegerArray> r = new TypeAdapter<AtomicIntegerArray>() { // from class: com.google.gson.internal.bind.TypeAdapters.10
        @Override // com.google.gson.TypeAdapter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(c cVar, AtomicIntegerArray atomicIntegerArray) {
            cVar.i();
            int length = atomicIntegerArray.length();
            for (int i2 = 0; i2 < length; i2++) {
                cVar.h(atomicIntegerArray.get(i2));
            }
            cVar.k();
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: read, reason: avoid collision after fix types in other method */
        public AtomicIntegerArray read2(com.google.gson.r.a aVar) {
            ArrayList arrayList = new ArrayList();
            aVar.i();
            while (aVar.p()) {
                try {
                    arrayList.add(Integer.valueOf(aVar.u()));
                } catch (NumberFormatException e2) {
                    throw new n(e2);
                }
            }
            aVar.l();
            int size = arrayList.size();
            AtomicIntegerArray atomicIntegerArray = new AtomicIntegerArray(size);
            for (int i2 = 0; i2 < size; i2++) {
                atomicIntegerArray.set(i2, ((Integer) arrayList.get(i2)).intValue());
            }
            return atomicIntegerArray;
        }
    }.nullSafe();
    public static final p s = a(AtomicIntegerArray.class, r);
    public static final TypeAdapter<Number> t = new TypeAdapter<Number>() { // from class: com.google.gson.internal.bind.TypeAdapters.11
        @Override // com.google.gson.TypeAdapter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(c cVar, Number number) {
            cVar.a(number);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.TypeAdapter
        /* renamed from: read */
        public Number read2(com.google.gson.r.a aVar) {
            if (aVar.C() == com.google.gson.r.b.NULL) {
                aVar.A();
                return null;
            }
            try {
                return Long.valueOf(aVar.v());
            } catch (NumberFormatException e2) {
                throw new n(e2);
            }
        }
    };
    public static final TypeAdapter<Number> u = new TypeAdapter<Number>() { // from class: com.google.gson.internal.bind.TypeAdapters.12
        @Override // com.google.gson.TypeAdapter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(c cVar, Number number) {
            cVar.a(number);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.TypeAdapter
        /* renamed from: read */
        public Number read2(com.google.gson.r.a aVar) {
            if (aVar.C() == com.google.gson.r.b.NULL) {
                aVar.A();
                return null;
            }
            return Float.valueOf((float) aVar.t());
        }
    };
    public static final TypeAdapter<Number> v = new TypeAdapter<Number>() { // from class: com.google.gson.internal.bind.TypeAdapters.13
        @Override // com.google.gson.TypeAdapter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(c cVar, Number number) {
            cVar.a(number);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.TypeAdapter
        /* renamed from: read */
        public Number read2(com.google.gson.r.a aVar) {
            if (aVar.C() == com.google.gson.r.b.NULL) {
                aVar.A();
                return null;
            }
            return Double.valueOf(aVar.t());
        }
    };
    public static final TypeAdapter<Number> w = new TypeAdapter<Number>() { // from class: com.google.gson.internal.bind.TypeAdapters.14
        @Override // com.google.gson.TypeAdapter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(c cVar, Number number) {
            cVar.a(number);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.TypeAdapter
        /* renamed from: read */
        public Number read2(com.google.gson.r.a aVar) {
            com.google.gson.r.b C2 = aVar.C();
            int i2 = a.f15428a[C2.ordinal()];
            if (i2 == 1 || i2 == 3) {
                return new f(aVar.B());
            }
            if (i2 == 4) {
                aVar.A();
                return null;
            }
            throw new n("Expecting number, got: " + C2);
        }
    };
    public static final p x = a(Number.class, w);
    public static final TypeAdapter<Character> y = new TypeAdapter<Character>() { // from class: com.google.gson.internal.bind.TypeAdapters.15
        @Override // com.google.gson.TypeAdapter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(c cVar, Character ch) {
            cVar.d(ch == null ? null : String.valueOf(ch));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.TypeAdapter
        /* renamed from: read */
        public Character read2(com.google.gson.r.a aVar) {
            if (aVar.C() == com.google.gson.r.b.NULL) {
                aVar.A();
                return null;
            }
            String B2 = aVar.B();
            if (B2.length() == 1) {
                return Character.valueOf(B2.charAt(0));
            }
            throw new n("Expecting character, got: " + B2);
        }
    };
    public static final p z = a(Character.TYPE, Character.class, y);
    public static final TypeAdapter<String> A = new TypeAdapter<String>() { // from class: com.google.gson.internal.bind.TypeAdapters.16
        @Override // com.google.gson.TypeAdapter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(c cVar, String str) {
            cVar.d(str);
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: read, reason: avoid collision after fix types in other method */
        public String read2(com.google.gson.r.a aVar) {
            com.google.gson.r.b C2 = aVar.C();
            if (C2 == com.google.gson.r.b.NULL) {
                aVar.A();
                return null;
            }
            if (C2 == com.google.gson.r.b.BOOLEAN) {
                return Boolean.toString(aVar.s());
            }
            return aVar.B();
        }
    };
    public static final TypeAdapter<BigDecimal> B = new TypeAdapter<BigDecimal>() { // from class: com.google.gson.internal.bind.TypeAdapters.17
        @Override // com.google.gson.TypeAdapter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(c cVar, BigDecimal bigDecimal) {
            cVar.a(bigDecimal);
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: read, reason: avoid collision after fix types in other method */
        public BigDecimal read2(com.google.gson.r.a aVar) {
            if (aVar.C() == com.google.gson.r.b.NULL) {
                aVar.A();
                return null;
            }
            try {
                return new BigDecimal(aVar.B());
            } catch (NumberFormatException e2) {
                throw new n(e2);
            }
        }
    };
    public static final TypeAdapter<BigInteger> C = new TypeAdapter<BigInteger>() { // from class: com.google.gson.internal.bind.TypeAdapters.18
        @Override // com.google.gson.TypeAdapter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(c cVar, BigInteger bigInteger) {
            cVar.a(bigInteger);
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: read, reason: avoid collision after fix types in other method */
        public BigInteger read2(com.google.gson.r.a aVar) {
            if (aVar.C() == com.google.gson.r.b.NULL) {
                aVar.A();
                return null;
            }
            try {
                return new BigInteger(aVar.B());
            } catch (NumberFormatException e2) {
                throw new n(e2);
            }
        }
    };
    public static final p D = a(String.class, A);
    public static final TypeAdapter<StringBuilder> E = new TypeAdapter<StringBuilder>() { // from class: com.google.gson.internal.bind.TypeAdapters.19
        @Override // com.google.gson.TypeAdapter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(c cVar, StringBuilder sb) {
            cVar.d(sb == null ? null : sb.toString());
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: read, reason: avoid collision after fix types in other method */
        public StringBuilder read2(com.google.gson.r.a aVar) {
            if (aVar.C() == com.google.gson.r.b.NULL) {
                aVar.A();
                return null;
            }
            return new StringBuilder(aVar.B());
        }
    };
    public static final p F = a(StringBuilder.class, E);
    public static final TypeAdapter<StringBuffer> G = new TypeAdapter<StringBuffer>() { // from class: com.google.gson.internal.bind.TypeAdapters.20
        @Override // com.google.gson.TypeAdapter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(c cVar, StringBuffer stringBuffer) {
            cVar.d(stringBuffer == null ? null : stringBuffer.toString());
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: read, reason: avoid collision after fix types in other method */
        public StringBuffer read2(com.google.gson.r.a aVar) {
            if (aVar.C() == com.google.gson.r.b.NULL) {
                aVar.A();
                return null;
            }
            return new StringBuffer(aVar.B());
        }
    };
    public static final p H = a(StringBuffer.class, G);
    public static final TypeAdapter<URL> I = new TypeAdapter<URL>() { // from class: com.google.gson.internal.bind.TypeAdapters.21
        @Override // com.google.gson.TypeAdapter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(c cVar, URL url) {
            cVar.d(url == null ? null : url.toExternalForm());
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: read, reason: avoid collision after fix types in other method */
        public URL read2(com.google.gson.r.a aVar) {
            if (aVar.C() == com.google.gson.r.b.NULL) {
                aVar.A();
                return null;
            }
            String B2 = aVar.B();
            if ("null".equals(B2)) {
                return null;
            }
            return new URL(B2);
        }
    };
    public static final p J = a(URL.class, I);
    public static final TypeAdapter<URI> K = new TypeAdapter<URI>() { // from class: com.google.gson.internal.bind.TypeAdapters.22
        @Override // com.google.gson.TypeAdapter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(c cVar, URI uri) {
            cVar.d(uri == null ? null : uri.toASCIIString());
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: read, reason: avoid collision after fix types in other method */
        public URI read2(com.google.gson.r.a aVar) {
            if (aVar.C() == com.google.gson.r.b.NULL) {
                aVar.A();
                return null;
            }
            try {
                String B2 = aVar.B();
                if ("null".equals(B2)) {
                    return null;
                }
                return new URI(B2);
            } catch (URISyntaxException e2) {
                throw new i(e2);
            }
        }
    };
    public static final p L = a(URI.class, K);
    public static final TypeAdapter<InetAddress> M = new TypeAdapter<InetAddress>() { // from class: com.google.gson.internal.bind.TypeAdapters.23
        @Override // com.google.gson.TypeAdapter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(c cVar, InetAddress inetAddress) {
            cVar.d(inetAddress == null ? null : inetAddress.getHostAddress());
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: read, reason: avoid collision after fix types in other method */
        public InetAddress read2(com.google.gson.r.a aVar) {
            if (aVar.C() == com.google.gson.r.b.NULL) {
                aVar.A();
                return null;
            }
            return InetAddress.getByName(aVar.B());
        }
    };
    public static final p N = b(InetAddress.class, M);
    public static final TypeAdapter<UUID> O = new TypeAdapter<UUID>() { // from class: com.google.gson.internal.bind.TypeAdapters.24
        @Override // com.google.gson.TypeAdapter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(c cVar, UUID uuid) {
            cVar.d(uuid == null ? null : uuid.toString());
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: read, reason: avoid collision after fix types in other method */
        public UUID read2(com.google.gson.r.a aVar) {
            if (aVar.C() == com.google.gson.r.b.NULL) {
                aVar.A();
                return null;
            }
            return UUID.fromString(aVar.B());
        }
    };
    public static final p P = a(UUID.class, O);
    public static final TypeAdapter<Currency> Q = new TypeAdapter<Currency>() { // from class: com.google.gson.internal.bind.TypeAdapters.25
        @Override // com.google.gson.TypeAdapter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(c cVar, Currency currency) {
            cVar.d(currency.getCurrencyCode());
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: read, reason: avoid collision after fix types in other method */
        public Currency read2(com.google.gson.r.a aVar) {
            return Currency.getInstance(aVar.B());
        }
    }.nullSafe();
    public static final p R = a(Currency.class, Q);
    public static final p S = new p() { // from class: com.google.gson.internal.bind.TypeAdapters.26
        @Override // com.google.gson.p
        public <T> TypeAdapter<T> create(Gson gson, com.google.gson.q.a<T> aVar) {
            if (aVar.getRawType() != Timestamp.class) {
                return null;
            }
            final TypeAdapter<T> a2 = gson.a((Class) Date.class);
            return (TypeAdapter<T>) new TypeAdapter<Timestamp>(this) { // from class: com.google.gson.internal.bind.TypeAdapters.26.1
                @Override // com.google.gson.TypeAdapter
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public void write(c cVar, Timestamp timestamp) {
                    a2.write(cVar, timestamp);
                }

                @Override // com.google.gson.TypeAdapter
                /* renamed from: read, reason: avoid collision after fix types in other method */
                public Timestamp read2(com.google.gson.r.a aVar2) {
                    Date date = (Date) a2.read2(aVar2);
                    if (date != null) {
                        return new Timestamp(date.getTime());
                    }
                    return null;
                }
            };
        }
    };
    public static final TypeAdapter<Calendar> T = new TypeAdapter<Calendar>() { // from class: com.google.gson.internal.bind.TypeAdapters.27
        @Override // com.google.gson.TypeAdapter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(c cVar, Calendar calendar) {
            if (calendar == null) {
                cVar.q();
                return;
            }
            cVar.j();
            cVar.b("year");
            cVar.h(calendar.get(1));
            cVar.b("month");
            cVar.h(calendar.get(2));
            cVar.b("dayOfMonth");
            cVar.h(calendar.get(5));
            cVar.b("hourOfDay");
            cVar.h(calendar.get(11));
            cVar.b("minute");
            cVar.h(calendar.get(12));
            cVar.b("second");
            cVar.h(calendar.get(13));
            cVar.l();
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: read, reason: avoid collision after fix types in other method */
        public Calendar read2(com.google.gson.r.a aVar) {
            if (aVar.C() == com.google.gson.r.b.NULL) {
                aVar.A();
                return null;
            }
            aVar.j();
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            int i7 = 0;
            while (aVar.C() != com.google.gson.r.b.END_OBJECT) {
                String z2 = aVar.z();
                int u2 = aVar.u();
                if ("year".equals(z2)) {
                    i2 = u2;
                } else if ("month".equals(z2)) {
                    i3 = u2;
                } else if ("dayOfMonth".equals(z2)) {
                    i4 = u2;
                } else if ("hourOfDay".equals(z2)) {
                    i5 = u2;
                } else if ("minute".equals(z2)) {
                    i6 = u2;
                } else if ("second".equals(z2)) {
                    i7 = u2;
                }
            }
            aVar.m();
            return new GregorianCalendar(i2, i3, i4, i5, i6, i7);
        }
    };
    public static final p U = b(Calendar.class, GregorianCalendar.class, T);
    public static final TypeAdapter<Locale> V = new TypeAdapter<Locale>() { // from class: com.google.gson.internal.bind.TypeAdapters.28
        @Override // com.google.gson.TypeAdapter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(c cVar, Locale locale) {
            cVar.d(locale == null ? null : locale.toString());
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: read, reason: avoid collision after fix types in other method */
        public Locale read2(com.google.gson.r.a aVar) {
            if (aVar.C() == com.google.gson.r.b.NULL) {
                aVar.A();
                return null;
            }
            StringTokenizer stringTokenizer = new StringTokenizer(aVar.B(), "_");
            String nextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            String nextToken2 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            String nextToken3 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            if (nextToken2 == null && nextToken3 == null) {
                return new Locale(nextToken);
            }
            if (nextToken3 == null) {
                return new Locale(nextToken, nextToken2);
            }
            return new Locale(nextToken, nextToken2, nextToken3);
        }
    };
    public static final p W = a(Locale.class, V);
    public static final TypeAdapter<JsonElement> X = new TypeAdapter<JsonElement>() { // from class: com.google.gson.internal.bind.TypeAdapters.29
        @Override // com.google.gson.TypeAdapter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(c cVar, JsonElement jsonElement) {
            if (jsonElement != null && !jsonElement.isJsonNull()) {
                if (jsonElement.isJsonPrimitive()) {
                    JsonPrimitive asJsonPrimitive = jsonElement.getAsJsonPrimitive();
                    if (asJsonPrimitive.isNumber()) {
                        cVar.a(asJsonPrimitive.getAsNumber());
                        return;
                    } else if (asJsonPrimitive.isBoolean()) {
                        cVar.d(asJsonPrimitive.getAsBoolean());
                        return;
                    } else {
                        cVar.d(asJsonPrimitive.getAsString());
                        return;
                    }
                }
                if (jsonElement.isJsonArray()) {
                    cVar.i();
                    Iterator<JsonElement> it = jsonElement.getAsJsonArray().iterator();
                    while (it.hasNext()) {
                        write(cVar, it.next());
                    }
                    cVar.k();
                    return;
                }
                if (jsonElement.isJsonObject()) {
                    cVar.j();
                    for (Map.Entry<String, JsonElement> entry : jsonElement.getAsJsonObject().entrySet()) {
                        cVar.b(entry.getKey());
                        write(cVar, entry.getValue());
                    }
                    cVar.l();
                    return;
                }
                throw new IllegalArgumentException("Couldn't write " + jsonElement.getClass());
            }
            cVar.q();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.gson.TypeAdapter
        /* renamed from: read */
        public JsonElement read2(com.google.gson.r.a aVar) {
            switch (a.f15428a[aVar.C().ordinal()]) {
                case 1:
                    return new JsonPrimitive(new f(aVar.B()));
                case 2:
                    return new JsonPrimitive(Boolean.valueOf(aVar.s()));
                case 3:
                    return new JsonPrimitive(aVar.B());
                case 4:
                    aVar.A();
                    return j.f15470a;
                case 5:
                    JsonArray jsonArray = new JsonArray();
                    aVar.i();
                    while (aVar.p()) {
                        jsonArray.add(read2(aVar));
                    }
                    aVar.l();
                    return jsonArray;
                case 6:
                    JsonObject jsonObject = new JsonObject();
                    aVar.j();
                    while (aVar.p()) {
                        jsonObject.add(aVar.z(), read2(aVar));
                    }
                    aVar.m();
                    return jsonObject;
                default:
                    throw new IllegalArgumentException();
            }
        }
    };
    public static final p Y = b(JsonElement.class, X);
    public static final p Z = new p() { // from class: com.google.gson.internal.bind.TypeAdapters.30
        @Override // com.google.gson.p
        public <T> TypeAdapter<T> create(Gson gson, com.google.gson.q.a<T> aVar) {
            Class<? super T> rawType = aVar.getRawType();
            if (!Enum.class.isAssignableFrom(rawType) || rawType == Enum.class) {
                return null;
            }
            if (!rawType.isEnum()) {
                rawType = rawType.getSuperclass();
            }
            return new EnumTypeAdapter(rawType);
        }
    };

    /* loaded from: classes2.dex */
    private static final class EnumTypeAdapter<T extends Enum<T>> extends TypeAdapter<T> {

        /* renamed from: a, reason: collision with root package name */
        private final Map<String, T> f15426a = new HashMap();

        /* renamed from: b, reason: collision with root package name */
        private final Map<T, String> f15427b = new HashMap();

        public EnumTypeAdapter(Class<T> cls) {
            try {
                for (T t : cls.getEnumConstants()) {
                    String name = t.name();
                    SerializedName serializedName = (SerializedName) cls.getField(name).getAnnotation(SerializedName.class);
                    if (serializedName != null) {
                        name = serializedName.value();
                        for (String str : serializedName.alternate()) {
                            this.f15426a.put(str, t);
                        }
                    }
                    this.f15426a.put(name, t);
                    this.f15427b.put(t, name);
                }
            } catch (NoSuchFieldException e2) {
                throw new AssertionError(e2);
            }
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(c cVar, T t) {
            cVar.d(t == null ? null : this.f15427b.get(t));
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: read */
        public T read2(com.google.gson.r.a aVar) {
            if (aVar.C() == com.google.gson.r.b.NULL) {
                aVar.A();
                return null;
            }
            return this.f15426a.get(aVar.B());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f15428a = new int[com.google.gson.r.b.values().length];

        static {
            try {
                f15428a[com.google.gson.r.b.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15428a[com.google.gson.r.b.BOOLEAN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15428a[com.google.gson.r.b.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15428a[com.google.gson.r.b.NULL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15428a[com.google.gson.r.b.BEGIN_ARRAY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f15428a[com.google.gson.r.b.BEGIN_OBJECT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f15428a[com.google.gson.r.b.END_DOCUMENT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f15428a[com.google.gson.r.b.NAME.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f15428a[com.google.gson.r.b.END_OBJECT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f15428a[com.google.gson.r.b.END_ARRAY.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    public static <TT> p a(final com.google.gson.q.a<TT> aVar, final TypeAdapter<TT> typeAdapter) {
        return new p() { // from class: com.google.gson.internal.bind.TypeAdapters.31
            @Override // com.google.gson.p
            public <T> TypeAdapter<T> create(Gson gson, com.google.gson.q.a<T> aVar2) {
                if (aVar2.equals(com.google.gson.q.a.this)) {
                    return typeAdapter;
                }
                return null;
            }
        };
    }

    public static <TT> p b(final Class<TT> cls, final Class<? extends TT> cls2, final TypeAdapter<? super TT> typeAdapter) {
        return new p() { // from class: com.google.gson.internal.bind.TypeAdapters.34
            @Override // com.google.gson.p
            public <T> TypeAdapter<T> create(Gson gson, com.google.gson.q.a<T> aVar) {
                Class<? super T> rawType = aVar.getRawType();
                if (rawType == cls || rawType == cls2) {
                    return typeAdapter;
                }
                return null;
            }

            public String toString() {
                return "Factory[type=" + cls.getName() + "+" + cls2.getName() + ",adapter=" + typeAdapter + "]";
            }
        };
    }

    public static <TT> p a(final Class<TT> cls, final TypeAdapter<TT> typeAdapter) {
        return new p() { // from class: com.google.gson.internal.bind.TypeAdapters.32
            @Override // com.google.gson.p
            public <T> TypeAdapter<T> create(Gson gson, com.google.gson.q.a<T> aVar) {
                if (aVar.getRawType() == cls) {
                    return typeAdapter;
                }
                return null;
            }

            public String toString() {
                return "Factory[type=" + cls.getName() + ",adapter=" + typeAdapter + "]";
            }
        };
    }

    public static <T1> p b(final Class<T1> cls, final TypeAdapter<T1> typeAdapter) {
        return new p() { // from class: com.google.gson.internal.bind.TypeAdapters.35
            @Override // com.google.gson.p
            public <T2> TypeAdapter<T2> create(Gson gson, com.google.gson.q.a<T2> aVar) {
                final Class<? super T2> rawType = aVar.getRawType();
                if (cls.isAssignableFrom(rawType)) {
                    return (TypeAdapter<T2>) new TypeAdapter<T1>() { // from class: com.google.gson.internal.bind.TypeAdapters.35.1
                        @Override // com.google.gson.TypeAdapter
                        /* renamed from: read */
                        public T1 read2(com.google.gson.r.a aVar2) {
                            T1 t1 = (T1) typeAdapter.read2(aVar2);
                            if (t1 == null || rawType.isInstance(t1)) {
                                return t1;
                            }
                            throw new n("Expected a " + rawType.getName() + " but was " + t1.getClass().getName());
                        }

                        @Override // com.google.gson.TypeAdapter
                        public void write(c cVar, T1 t1) {
                            typeAdapter.write(cVar, t1);
                        }
                    };
                }
                return null;
            }

            public String toString() {
                return "Factory[typeHierarchy=" + cls.getName() + ",adapter=" + typeAdapter + "]";
            }
        };
    }

    public static <TT> p a(final Class<TT> cls, final Class<TT> cls2, final TypeAdapter<? super TT> typeAdapter) {
        return new p() { // from class: com.google.gson.internal.bind.TypeAdapters.33
            @Override // com.google.gson.p
            public <T> TypeAdapter<T> create(Gson gson, com.google.gson.q.a<T> aVar) {
                Class<? super T> rawType = aVar.getRawType();
                if (rawType == cls || rawType == cls2) {
                    return typeAdapter;
                }
                return null;
            }

            public String toString() {
                return "Factory[type=" + cls2.getName() + "+" + cls.getName() + ",adapter=" + typeAdapter + "]";
            }
        };
    }
}
