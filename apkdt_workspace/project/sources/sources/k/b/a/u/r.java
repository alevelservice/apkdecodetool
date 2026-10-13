package k.b.a.u;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.Serializable;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: JapaneseEra.java */
/* loaded from: classes2.dex */
public final class r extends k.b.a.w.a implements Serializable {
    static final int ERA_OFFSET = 2;
    private static final long serialVersionUID = 1466499369062886794L;

    /* renamed from: e, reason: collision with root package name */
    private final transient k.b.a.f f19755e;
    private final int eraValue;

    /* renamed from: f, reason: collision with root package name */
    private final transient String f19756f;
    public static final r MEIJI = new r(-1, k.b.a.f.of(1868, 9, 8), "Meiji");
    public static final r TAISHO = new r(0, k.b.a.f.of(1912, 7, 30), "Taisho");
    public static final r SHOWA = new r(1, k.b.a.f.of(1926, 12, 25), "Showa");
    public static final r HEISEI = new r(2, k.b.a.f.of(1989, 1, 8), "Heisei");

    /* renamed from: g, reason: collision with root package name */
    private static final AtomicReference<r[]> f19754g = new AtomicReference<>(new r[]{MEIJI, TAISHO, SHOWA, HEISEI});

    private r(int i2, k.b.a.f fVar, String str) {
        this.eraValue = i2;
        this.f19755e = fVar;
        this.f19756f = str;
    }

    private static int a(int i2) {
        return i2 + 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static r from(k.b.a.f fVar) {
        if (!fVar.isBefore(MEIJI.f19755e)) {
            r[] rVarArr = f19754g.get();
            for (int length = rVarArr.length - 1; length >= 0; length--) {
                r rVar = rVarArr[length];
                if (fVar.compareTo((b) rVar.f19755e) >= 0) {
                    return rVar;
                }
            }
            return null;
        }
        throw new k.b.a.b("Date too early: " + fVar);
    }

    public static r of(int i2) {
        r[] rVarArr = f19754g.get();
        if (i2 >= MEIJI.eraValue && i2 <= rVarArr[rVarArr.length - 1].eraValue) {
            return rVarArr[a(i2)];
        }
        throw new k.b.a.b("japaneseEra is invalid");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static r readExternal(DataInput dataInput) {
        return of(dataInput.readByte());
    }

    private Object readResolve() {
        try {
            return of(this.eraValue);
        } catch (k.b.a.b e2) {
            InvalidObjectException invalidObjectException = new InvalidObjectException("Invalid era");
            invalidObjectException.initCause(e2);
            throw invalidObjectException;
        }
    }

    public static r registerEra(k.b.a.f fVar, String str) {
        r[] rVarArr = f19754g.get();
        if (rVarArr.length <= 4) {
            k.b.a.w.d.a(fVar, "since");
            k.b.a.w.d.a(str, "name");
            if (fVar.isAfter(HEISEI.f19755e)) {
                r rVar = new r(3, fVar, str);
                r[] rVarArr2 = (r[]) Arrays.copyOf(rVarArr, 5);
                rVarArr2[4] = rVar;
                if (f19754g.compareAndSet(rVarArr, rVarArr2)) {
                    return rVar;
                }
                throw new k.b.a.b("Only one additional Japanese era can be added");
            }
            throw new k.b.a.b("Invalid since date for additional Japanese era, must be after Heisei");
        }
        throw new k.b.a.b("Only one additional Japanese era can be added");
    }

    public static r valueOf(String str) {
        k.b.a.w.d.a(str, "japaneseEra");
        for (r rVar : f19754g.get()) {
            if (str.equals(rVar.f19756f)) {
                return rVar;
            }
        }
        throw new IllegalArgumentException("Era not found: " + str);
    }

    public static r[] values() {
        r[] rVarArr = f19754g.get();
        return (r[]) Arrays.copyOf(rVarArr, rVarArr.length);
    }

    private Object writeReplace() {
        return new v((byte) 2, this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k.b.a.f endDate() {
        int a2 = a(this.eraValue);
        r[] values = values();
        if (a2 >= values.length - 1) {
            return k.b.a.f.MAX;
        }
        return values[a2 + 1].startDate().minusDays(1L);
    }

    @Override // k.b.a.u.j
    public int getValue() {
        return this.eraValue;
    }

    @Override // k.b.a.w.c, k.b.a.x.e
    public k.b.a.x.n range(k.b.a.x.i iVar) {
        if (iVar == k.b.a.x.a.ERA) {
            return p.INSTANCE.range(k.b.a.x.a.ERA);
        }
        return super.range(iVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k.b.a.f startDate() {
        return this.f19755e;
    }

    public String toString() {
        return this.f19756f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) {
        dataOutput.writeByte(getValue());
    }
}
