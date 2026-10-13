package k.b.a;

import com.alipay.mobile.security.zim.biz.ZimPlatform;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.Serializable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* compiled from: ZoneOffset.java */
/* loaded from: classes2.dex */
public final class r extends q implements k.b.a.x.e, k.b.a.x.f, Comparable<r>, Serializable {
    private static final long serialVersionUID = 2357656521762053153L;

    /* renamed from: e, reason: collision with root package name */
    private final transient String f19719e;
    private final int totalSeconds;
    public static final k.b.a.x.k<r> FROM = new a();

    /* renamed from: f, reason: collision with root package name */
    private static final ConcurrentMap<Integer, r> f19717f = new ConcurrentHashMap(16, 0.75f, 4);

    /* renamed from: g, reason: collision with root package name */
    private static final ConcurrentMap<String, r> f19718g = new ConcurrentHashMap(16, 0.75f, 4);
    public static final r UTC = ofTotalSeconds(0);
    public static final r MIN = ofTotalSeconds(-64800);
    public static final r MAX = ofTotalSeconds(64800);

    /* compiled from: ZoneOffset.java */
    /* loaded from: classes2.dex */
    class a implements k.b.a.x.k<r> {
        a() {
        }

        @Override // k.b.a.x.k
        public r a(k.b.a.x.e eVar) {
            return r.from(eVar);
        }
    }

    private r(int i2) {
        this.totalSeconds = i2;
        this.f19719e = a(i2);
    }

    private static int a(int i2, int i3, int i4) {
        return (i2 * 3600) + (i3 * 60) + i4;
    }

    private static int a(CharSequence charSequence, int i2, boolean z) {
        if (z && charSequence.charAt(i2 - 1) != ':') {
            throw new b("Invalid ID for ZoneOffset, colon not found when expected: " + ((Object) charSequence));
        }
        char charAt = charSequence.charAt(i2);
        char charAt2 = charSequence.charAt(i2 + 1);
        if (charAt >= '0' && charAt <= '9' && charAt2 >= '0' && charAt2 <= '9') {
            return ((charAt - '0') * 10) + (charAt2 - '0');
        }
        throw new b("Invalid ID for ZoneOffset, non numeric characters found: " + ((Object) charSequence));
    }

    private static void b(int i2, int i3, int i4) {
        if (i2 >= -18 && i2 <= 18) {
            if (i2 > 0) {
                if (i3 < 0 || i4 < 0) {
                    throw new b("Zone offset minutes and seconds must be positive because hours is positive");
                }
            } else if (i2 < 0) {
                if (i3 > 0 || i4 > 0) {
                    throw new b("Zone offset minutes and seconds must be negative because hours is negative");
                }
            } else if ((i3 > 0 && i4 < 0) || (i3 < 0 && i4 > 0)) {
                throw new b("Zone offset minutes and seconds must have the same sign");
            }
            if (Math.abs(i3) <= 59) {
                if (Math.abs(i4) <= 59) {
                    if (Math.abs(i2) == 18) {
                        if (Math.abs(i3) > 0 || Math.abs(i4) > 0) {
                            throw new b("Zone offset not in valid range: -18:00 to +18:00");
                        }
                        return;
                    }
                    return;
                }
                throw new b("Zone offset seconds not in valid range: abs(value) " + Math.abs(i4) + " is not in the range 0 to 59");
            }
            throw new b("Zone offset minutes not in valid range: abs(value) " + Math.abs(i3) + " is not in the range 0 to 59");
        }
        throw new b("Zone offset hours not in valid range: value " + i2 + " is not in the range -18 to 18");
    }

    public static r from(k.b.a.x.e eVar) {
        r rVar = (r) eVar.query(k.b.a.x.j.d());
        if (rVar != null) {
            return rVar;
        }
        throw new b("Unable to obtain ZoneOffset from TemporalAccessor: " + eVar + ", type " + eVar.getClass().getName());
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0099 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00bd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static k.b.a.r of(java.lang.String r7) {
        /*
            java.lang.String r0 = "offsetId"
            k.b.a.w.d.a(r7, r0)
            java.util.concurrent.ConcurrentMap<java.lang.String, k.b.a.r> r0 = k.b.a.r.f19718g
            java.lang.Object r0 = r0.get(r7)
            k.b.a.r r0 = (k.b.a.r) r0
            if (r0 == 0) goto L10
            return r0
        L10:
            int r0 = r7.length()
            r1 = 2
            r2 = 1
            r3 = 0
            if (r0 == r1) goto L6d
            r1 = 3
            if (r0 == r1) goto L89
            r4 = 5
            if (r0 == r4) goto L64
            r5 = 6
            r6 = 4
            if (r0 == r5) goto L5b
            r5 = 7
            if (r0 == r5) goto L4e
            r1 = 9
            if (r0 != r1) goto L37
            int r0 = a(r7, r2, r3)
            int r1 = a(r7, r6, r2)
            int r2 = a(r7, r5, r2)
            goto L8f
        L37:
            k.b.a.b r0 = new k.b.a.b
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Invalid ID for ZoneOffset, invalid format: "
            r1.append(r2)
            r1.append(r7)
            java.lang.String r7 = r1.toString()
            r0.<init>(r7)
            throw r0
        L4e:
            int r0 = a(r7, r2, r3)
            int r1 = a(r7, r1, r3)
            int r2 = a(r7, r4, r3)
            goto L8f
        L5b:
            int r0 = a(r7, r2, r3)
            int r1 = a(r7, r6, r2)
            goto L8e
        L64:
            int r0 = a(r7, r2, r3)
            int r1 = a(r7, r1, r3)
            goto L8e
        L6d:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            char r1 = r7.charAt(r3)
            r0.append(r1)
            java.lang.String r1 = "0"
            r0.append(r1)
            char r7 = r7.charAt(r2)
            r0.append(r7)
            java.lang.String r7 = r0.toString()
        L89:
            int r0 = a(r7, r2, r3)
            r1 = 0
        L8e:
            r2 = 0
        L8f:
            char r3 = r7.charAt(r3)
            r4 = 43
            r5 = 45
            if (r3 == r4) goto Lb3
            if (r3 != r5) goto L9c
            goto Lb3
        L9c:
            k.b.a.b r0 = new k.b.a.b
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Invalid ID for ZoneOffset, plus/minus not found when expected: "
            r1.append(r2)
            r1.append(r7)
            java.lang.String r7 = r1.toString()
            r0.<init>(r7)
            throw r0
        Lb3:
            if (r3 != r5) goto Lbd
            int r7 = -r0
            int r0 = -r1
            int r1 = -r2
            k.b.a.r r7 = ofHoursMinutesSeconds(r7, r0, r1)
            return r7
        Lbd:
            k.b.a.r r7 = ofHoursMinutesSeconds(r0, r1, r2)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: k.b.a.r.of(java.lang.String):k.b.a.r");
    }

    public static r ofHours(int i2) {
        return ofHoursMinutesSeconds(i2, 0, 0);
    }

    public static r ofHoursMinutes(int i2, int i3) {
        return ofHoursMinutesSeconds(i2, i3, 0);
    }

    public static r ofHoursMinutesSeconds(int i2, int i3, int i4) {
        b(i2, i3, i4);
        return ofTotalSeconds(a(i2, i3, i4));
    }

    public static r ofTotalSeconds(int i2) {
        if (Math.abs(i2) <= 64800) {
            if (i2 % 900 == 0) {
                Integer valueOf = Integer.valueOf(i2);
                r rVar = f19717f.get(valueOf);
                if (rVar != null) {
                    return rVar;
                }
                f19717f.putIfAbsent(valueOf, new r(i2));
                r rVar2 = f19717f.get(valueOf);
                f19718g.putIfAbsent(rVar2.getId(), rVar2);
                return rVar2;
            }
            return new r(i2);
        }
        throw new b("Zone offset not in valid range: -18:00 to +18:00");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static r readExternal(DataInput dataInput) {
        byte readByte = dataInput.readByte();
        return readByte == Byte.MAX_VALUE ? ofTotalSeconds(dataInput.readInt()) : ofTotalSeconds(readByte * 900);
    }

    private Object readResolve() {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new n((byte) 8, this);
    }

    @Override // k.b.a.x.f
    public k.b.a.x.d adjustInto(k.b.a.x.d dVar) {
        return dVar.with(k.b.a.x.a.OFFSET_SECONDS, this.totalSeconds);
    }

    @Override // k.b.a.q
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof r) && this.totalSeconds == ((r) obj).totalSeconds;
    }

    @Override // k.b.a.x.e
    public int get(k.b.a.x.i iVar) {
        if (iVar == k.b.a.x.a.OFFSET_SECONDS) {
            return this.totalSeconds;
        }
        if (!(iVar instanceof k.b.a.x.a)) {
            return range(iVar).checkValidIntValue(getLong(iVar), iVar);
        }
        throw new k.b.a.x.m("Unsupported field: " + iVar);
    }

    @Override // k.b.a.q
    public String getId() {
        return this.f19719e;
    }

    @Override // k.b.a.x.e
    public long getLong(k.b.a.x.i iVar) {
        if (iVar == k.b.a.x.a.OFFSET_SECONDS) {
            return this.totalSeconds;
        }
        if (!(iVar instanceof k.b.a.x.a)) {
            return iVar.getFrom(this);
        }
        throw new b("Unsupported field: " + iVar);
    }

    @Override // k.b.a.q
    public k.b.a.y.f getRules() {
        return k.b.a.y.f.of(this);
    }

    public int getTotalSeconds() {
        return this.totalSeconds;
    }

    @Override // k.b.a.q
    public int hashCode() {
        return this.totalSeconds;
    }

    @Override // k.b.a.x.e
    public boolean isSupported(k.b.a.x.i iVar) {
        return iVar instanceof k.b.a.x.a ? iVar == k.b.a.x.a.OFFSET_SECONDS : iVar != null && iVar.isSupportedBy(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // k.b.a.x.e
    public <R> R query(k.b.a.x.k<R> kVar) {
        if (kVar == k.b.a.x.j.d() || kVar == k.b.a.x.j.f()) {
            return this;
        }
        if (kVar == k.b.a.x.j.b() || kVar == k.b.a.x.j.c() || kVar == k.b.a.x.j.e() || kVar == k.b.a.x.j.a() || kVar == k.b.a.x.j.g()) {
            return null;
        }
        return kVar.a(this);
    }

    @Override // k.b.a.x.e
    public k.b.a.x.n range(k.b.a.x.i iVar) {
        if (iVar == k.b.a.x.a.OFFSET_SECONDS) {
            return iVar.range();
        }
        if (!(iVar instanceof k.b.a.x.a)) {
            return iVar.rangeRefinedBy(this);
        }
        throw new k.b.a.x.m("Unsupported field: " + iVar);
    }

    @Override // k.b.a.q
    public String toString() {
        return this.f19719e;
    }

    @Override // k.b.a.q
    void write(DataOutput dataOutput) {
        dataOutput.writeByte(8);
        writeExternal(dataOutput);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) {
        int i2 = this.totalSeconds;
        int i3 = i2 % 900 == 0 ? i2 / 900 : 127;
        dataOutput.writeByte(i3);
        if (i3 == 127) {
            dataOutput.writeInt(i2);
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(r rVar) {
        return rVar.totalSeconds - this.totalSeconds;
    }

    private static String a(int i2) {
        if (i2 == 0) {
            return "Z";
        }
        int abs = Math.abs(i2);
        StringBuilder sb = new StringBuilder();
        int i3 = abs / 3600;
        int i4 = (abs / 60) % 60;
        sb.append(i2 < 0 ? "-" : "+");
        sb.append(i3 < 10 ? ZimPlatform.REASON_0 : "");
        sb.append(i3);
        sb.append(i4 < 10 ? ":0" : ":");
        sb.append(i4);
        int i5 = abs % 60;
        if (i5 != 0) {
            sb.append(i5 >= 10 ? ":" : ":0");
            sb.append(i5);
        }
        return sb.toString();
    }
}
