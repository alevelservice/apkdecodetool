package k.b.a.y;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import k.b.a.r;
import k.b.a.y.f;

/* compiled from: StandardZoneRules.java */
/* loaded from: classes2.dex */
final class b extends f implements Serializable {
    private static final long serialVersionUID = 3044319355680032515L;
    private final e[] lastRules;
    private final ConcurrentMap<Integer, d[]> lastRulesCache = new ConcurrentHashMap();
    private final long[] savingsInstantTransitions;
    private final k.b.a.g[] savingsLocalTransitions;
    private final r[] standardOffsets;
    private final long[] standardTransitions;
    private final r[] wallOffsets;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(r rVar, r rVar2, List<d> list, List<d> list2, List<e> list3) {
        this.standardTransitions = new long[list.size()];
        this.standardOffsets = new r[list.size() + 1];
        this.standardOffsets[0] = rVar;
        int i2 = 0;
        while (i2 < list.size()) {
            this.standardTransitions[i2] = list.get(i2).toEpochSecond();
            int i3 = i2 + 1;
            this.standardOffsets[i3] = list.get(i2).getOffsetAfter();
            i2 = i3;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(rVar2);
        for (d dVar : list2) {
            if (dVar.isGap()) {
                arrayList.add(dVar.getDateTimeBefore());
                arrayList.add(dVar.getDateTimeAfter());
            } else {
                arrayList.add(dVar.getDateTimeAfter());
                arrayList.add(dVar.getDateTimeBefore());
            }
            arrayList2.add(dVar.getOffsetAfter());
        }
        this.savingsLocalTransitions = (k.b.a.g[]) arrayList.toArray(new k.b.a.g[arrayList.size()]);
        this.wallOffsets = (r[]) arrayList2.toArray(new r[arrayList2.size()]);
        this.savingsInstantTransitions = new long[list2.size()];
        for (int i4 = 0; i4 < list2.size(); i4++) {
            this.savingsInstantTransitions[i4] = list2.get(i4).getInstant().getEpochSecond();
        }
        if (list3.size() <= 15) {
            this.lastRules = (e[]) list3.toArray(new e[list3.size()]);
            return;
        }
        throw new IllegalArgumentException("Too many transition rules");
    }

    private Object a(k.b.a.g gVar) {
        int i2 = 0;
        if (this.lastRules.length > 0) {
            if (gVar.isAfter(this.savingsLocalTransitions[r0.length - 1])) {
                d[] a2 = a(gVar.getYear());
                Object obj = null;
                int length = a2.length;
                while (i2 < length) {
                    d dVar = a2[i2];
                    Object a3 = a(gVar, dVar);
                    if ((a3 instanceof d) || a3.equals(dVar.getOffsetBefore())) {
                        return a3;
                    }
                    i2++;
                    obj = a3;
                }
                return obj;
            }
        }
        int binarySearch = Arrays.binarySearch(this.savingsLocalTransitions, gVar);
        if (binarySearch == -1) {
            return this.wallOffsets[0];
        }
        if (binarySearch < 0) {
            binarySearch = (-binarySearch) - 2;
        } else {
            Object[] objArr = this.savingsLocalTransitions;
            if (binarySearch < objArr.length - 1) {
                int i3 = binarySearch + 1;
                if (objArr[binarySearch].equals(objArr[i3])) {
                    binarySearch = i3;
                }
            }
        }
        if ((binarySearch & 1) == 0) {
            k.b.a.g[] gVarArr = this.savingsLocalTransitions;
            k.b.a.g gVar2 = gVarArr[binarySearch];
            k.b.a.g gVar3 = gVarArr[binarySearch + 1];
            r[] rVarArr = this.wallOffsets;
            int i4 = binarySearch / 2;
            r rVar = rVarArr[i4];
            r rVar2 = rVarArr[i4 + 1];
            if (rVar2.getTotalSeconds() > rVar.getTotalSeconds()) {
                return new d(gVar2, rVar, rVar2);
            }
            return new d(gVar3, rVar, rVar2);
        }
        return this.wallOffsets[(binarySearch / 2) + 1];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b readExternal(DataInput dataInput) {
        int readInt = dataInput.readInt();
        long[] jArr = new long[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            jArr[i2] = a.readEpochSec(dataInput);
        }
        r[] rVarArr = new r[readInt + 1];
        for (int i3 = 0; i3 < rVarArr.length; i3++) {
            rVarArr[i3] = a.readOffset(dataInput);
        }
        int readInt2 = dataInput.readInt();
        long[] jArr2 = new long[readInt2];
        for (int i4 = 0; i4 < readInt2; i4++) {
            jArr2[i4] = a.readEpochSec(dataInput);
        }
        r[] rVarArr2 = new r[readInt2 + 1];
        for (int i5 = 0; i5 < rVarArr2.length; i5++) {
            rVarArr2[i5] = a.readOffset(dataInput);
        }
        int readByte = dataInput.readByte();
        e[] eVarArr = new e[readByte];
        for (int i6 = 0; i6 < readByte; i6++) {
            eVarArr[i6] = e.readExternal(dataInput);
        }
        return new b(jArr, rVarArr, jArr2, rVarArr2, eVarArr);
    }

    private Object writeReplace() {
        return new a((byte) 1, this);
    }

    @Override // k.b.a.y.f
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return (obj instanceof f.a) && isFixedOffset() && getOffset(k.b.a.e.EPOCH).equals(((f.a) obj).getOffset(k.b.a.e.EPOCH));
        }
        b bVar = (b) obj;
        return Arrays.equals(this.standardTransitions, bVar.standardTransitions) && Arrays.equals(this.standardOffsets, bVar.standardOffsets) && Arrays.equals(this.savingsInstantTransitions, bVar.savingsInstantTransitions) && Arrays.equals(this.wallOffsets, bVar.wallOffsets) && Arrays.equals(this.lastRules, bVar.lastRules);
    }

    @Override // k.b.a.y.f
    public k.b.a.d getDaylightSavings(k.b.a.e eVar) {
        return k.b.a.d.ofSeconds(getOffset(eVar).getTotalSeconds() - getStandardOffset(eVar).getTotalSeconds());
    }

    @Override // k.b.a.y.f
    public r getOffset(k.b.a.e eVar) {
        long epochSecond = eVar.getEpochSecond();
        if (this.lastRules.length > 0) {
            if (epochSecond > this.savingsInstantTransitions[r8.length - 1]) {
                d[] a2 = a(a(epochSecond, this.wallOffsets[r8.length - 1]));
                d dVar = null;
                for (int i2 = 0; i2 < a2.length; i2++) {
                    dVar = a2[i2];
                    if (epochSecond < dVar.toEpochSecond()) {
                        return dVar.getOffsetBefore();
                    }
                }
                return dVar.getOffsetAfter();
            }
        }
        int binarySearch = Arrays.binarySearch(this.savingsInstantTransitions, epochSecond);
        if (binarySearch < 0) {
            binarySearch = (-binarySearch) - 2;
        }
        return this.wallOffsets[binarySearch + 1];
    }

    @Override // k.b.a.y.f
    public r getStandardOffset(k.b.a.e eVar) {
        int binarySearch = Arrays.binarySearch(this.standardTransitions, eVar.getEpochSecond());
        if (binarySearch < 0) {
            binarySearch = (-binarySearch) - 2;
        }
        return this.standardOffsets[binarySearch + 1];
    }

    @Override // k.b.a.y.f
    public d getTransition(k.b.a.g gVar) {
        Object a2 = a(gVar);
        if (a2 instanceof d) {
            return (d) a2;
        }
        return null;
    }

    @Override // k.b.a.y.f
    public List<e> getTransitionRules() {
        return Collections.unmodifiableList(Arrays.asList(this.lastRules));
    }

    @Override // k.b.a.y.f
    public List<d> getTransitions() {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (true) {
            long[] jArr = this.savingsInstantTransitions;
            if (i2 < jArr.length) {
                long j2 = jArr[i2];
                r[] rVarArr = this.wallOffsets;
                r rVar = rVarArr[i2];
                i2++;
                arrayList.add(new d(j2, rVar, rVarArr[i2]));
            } else {
                return Collections.unmodifiableList(arrayList);
            }
        }
    }

    @Override // k.b.a.y.f
    public List<r> getValidOffsets(k.b.a.g gVar) {
        Object a2 = a(gVar);
        if (a2 instanceof d) {
            return ((d) a2).getValidOffsets();
        }
        return Collections.singletonList((r) a2);
    }

    @Override // k.b.a.y.f
    public int hashCode() {
        return (((Arrays.hashCode(this.standardTransitions) ^ Arrays.hashCode(this.standardOffsets)) ^ Arrays.hashCode(this.savingsInstantTransitions)) ^ Arrays.hashCode(this.wallOffsets)) ^ Arrays.hashCode(this.lastRules);
    }

    @Override // k.b.a.y.f
    public boolean isDaylightSavings(k.b.a.e eVar) {
        return !getStandardOffset(eVar).equals(getOffset(eVar));
    }

    @Override // k.b.a.y.f
    public boolean isFixedOffset() {
        return this.savingsInstantTransitions.length == 0;
    }

    @Override // k.b.a.y.f
    public boolean isValidOffset(k.b.a.g gVar, r rVar) {
        return getValidOffsets(gVar).contains(rVar);
    }

    @Override // k.b.a.y.f
    public d nextTransition(k.b.a.e eVar) {
        if (this.savingsInstantTransitions.length == 0) {
            return null;
        }
        long epochSecond = eVar.getEpochSecond();
        long[] jArr = this.savingsInstantTransitions;
        if (epochSecond >= jArr[jArr.length - 1]) {
            if (this.lastRules.length == 0) {
                return null;
            }
            int a2 = a(epochSecond, this.wallOffsets[r12.length - 1]);
            for (d dVar : a(a2)) {
                if (epochSecond < dVar.toEpochSecond()) {
                    return dVar;
                }
            }
            if (a2 < 999999999) {
                return a(a2 + 1)[0];
            }
            return null;
        }
        int binarySearch = Arrays.binarySearch(jArr, epochSecond);
        int i2 = binarySearch < 0 ? (-binarySearch) - 1 : binarySearch + 1;
        long j2 = this.savingsInstantTransitions[i2];
        r[] rVarArr = this.wallOffsets;
        return new d(j2, rVarArr[i2], rVarArr[i2 + 1]);
    }

    @Override // k.b.a.y.f
    public d previousTransition(k.b.a.e eVar) {
        if (this.savingsInstantTransitions.length == 0) {
            return null;
        }
        long epochSecond = eVar.getEpochSecond();
        if (eVar.getNano() > 0 && epochSecond < Long.MAX_VALUE) {
            epochSecond++;
        }
        long j2 = this.savingsInstantTransitions[r12.length - 1];
        if (this.lastRules.length > 0 && epochSecond > j2) {
            r rVar = this.wallOffsets[r12.length - 1];
            int a2 = a(epochSecond, rVar);
            d[] a3 = a(a2);
            for (int length = a3.length - 1; length >= 0; length--) {
                if (epochSecond > a3[length].toEpochSecond()) {
                    return a3[length];
                }
            }
            int i2 = a2 - 1;
            if (i2 > a(j2, rVar)) {
                return a(i2)[r12.length - 1];
            }
        }
        int binarySearch = Arrays.binarySearch(this.savingsInstantTransitions, epochSecond);
        if (binarySearch < 0) {
            binarySearch = (-binarySearch) - 1;
        }
        if (binarySearch <= 0) {
            return null;
        }
        int i3 = binarySearch - 1;
        long j3 = this.savingsInstantTransitions[i3];
        r[] rVarArr = this.wallOffsets;
        return new d(j3, rVarArr[i3], rVarArr[binarySearch]);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("StandardZoneRules[currentStandardOffset=");
        sb.append(this.standardOffsets[r1.length - 1]);
        sb.append("]");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) {
        dataOutput.writeInt(this.standardTransitions.length);
        for (long j2 : this.standardTransitions) {
            a.writeEpochSec(j2, dataOutput);
        }
        for (r rVar : this.standardOffsets) {
            a.writeOffset(rVar, dataOutput);
        }
        dataOutput.writeInt(this.savingsInstantTransitions.length);
        for (long j3 : this.savingsInstantTransitions) {
            a.writeEpochSec(j3, dataOutput);
        }
        for (r rVar2 : this.wallOffsets) {
            a.writeOffset(rVar2, dataOutput);
        }
        dataOutput.writeByte(this.lastRules.length);
        for (e eVar : this.lastRules) {
            eVar.writeExternal(dataOutput);
        }
    }

    @Override // k.b.a.y.f
    public r getOffset(k.b.a.g gVar) {
        Object a2 = a(gVar);
        if (a2 instanceof d) {
            return ((d) a2).getOffsetBefore();
        }
        return (r) a2;
    }

    private Object a(k.b.a.g gVar, d dVar) {
        k.b.a.g dateTimeBefore = dVar.getDateTimeBefore();
        if (dVar.isGap()) {
            if (gVar.isBefore(dateTimeBefore)) {
                return dVar.getOffsetBefore();
            }
            return gVar.isBefore(dVar.getDateTimeAfter()) ? dVar : dVar.getOffsetAfter();
        }
        if (gVar.isBefore(dateTimeBefore)) {
            return gVar.isBefore(dVar.getDateTimeAfter()) ? dVar.getOffsetBefore() : dVar;
        }
        return dVar.getOffsetAfter();
    }

    private b(long[] jArr, r[] rVarArr, long[] jArr2, r[] rVarArr2, e[] eVarArr) {
        this.standardTransitions = jArr;
        this.standardOffsets = rVarArr;
        this.savingsInstantTransitions = jArr2;
        this.wallOffsets = rVarArr2;
        this.lastRules = eVarArr;
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (i2 < jArr2.length) {
            int i3 = i2 + 1;
            d dVar = new d(jArr2[i2], rVarArr2[i2], rVarArr2[i3]);
            if (dVar.isGap()) {
                arrayList.add(dVar.getDateTimeBefore());
                arrayList.add(dVar.getDateTimeAfter());
            } else {
                arrayList.add(dVar.getDateTimeAfter());
                arrayList.add(dVar.getDateTimeBefore());
            }
            i2 = i3;
        }
        this.savingsLocalTransitions = (k.b.a.g[]) arrayList.toArray(new k.b.a.g[arrayList.size()]);
    }

    private d[] a(int i2) {
        Integer valueOf = Integer.valueOf(i2);
        d[] dVarArr = this.lastRulesCache.get(valueOf);
        if (dVarArr != null) {
            return dVarArr;
        }
        e[] eVarArr = this.lastRules;
        d[] dVarArr2 = new d[eVarArr.length];
        for (int i3 = 0; i3 < eVarArr.length; i3++) {
            dVarArr2[i3] = eVarArr[i3].createTransition(i2);
        }
        if (i2 < 2100) {
            this.lastRulesCache.putIfAbsent(valueOf, dVarArr2);
        }
        return dVarArr2;
    }

    private int a(long j2, r rVar) {
        return k.b.a.f.ofEpochDay(k.b.a.w.d.b(j2 + rVar.getTotalSeconds(), 86400L)).getYear();
    }
}
