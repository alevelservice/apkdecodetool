package k.b.a;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.Serializable;
import java.util.regex.Pattern;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ZoneRegion.java */
/* loaded from: classes2.dex */
public final class s extends q implements Serializable {

    /* renamed from: f, reason: collision with root package name */
    private static final Pattern f19720f = Pattern.compile("[A-Za-z][A-Za-z0-9~/._+-]+");
    private static final long serialVersionUID = 8386373296231747096L;

    /* renamed from: e, reason: collision with root package name */
    private final transient k.b.a.y.f f19721e;
    private final String id;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(String str, k.b.a.y.f fVar) {
        this.id = str;
        this.f19721e = fVar;
    }

    private static s a(String str) {
        if (!str.equals("Z") && !str.startsWith("+") && !str.startsWith("-")) {
            if (!str.equals("UTC") && !str.equals("GMT") && !str.equals("UT")) {
                if (!str.startsWith("UTC+") && !str.startsWith("GMT+") && !str.startsWith("UTC-") && !str.startsWith("GMT-")) {
                    if (!str.startsWith("UT+") && !str.startsWith("UT-")) {
                        return ofId(str, false);
                    }
                    r of = r.of(str.substring(2));
                    if (of.getTotalSeconds() == 0) {
                        return new s("UT", of.getRules());
                    }
                    return new s("UT" + of.getId(), of.getRules());
                }
                r of2 = r.of(str.substring(3));
                if (of2.getTotalSeconds() == 0) {
                    return new s(str.substring(0, 3), of2.getRules());
                }
                return new s(str.substring(0, 3) + of2.getId(), of2.getRules());
            }
            return new s(str, r.UTC.getRules());
        }
        throw new b("Invalid ID for region-based ZoneId, invalid format: " + str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static s ofId(String str, boolean z) {
        k.b.a.w.d.a(str, "zoneId");
        if (str.length() >= 2 && f19720f.matcher(str).matches()) {
            k.b.a.y.f fVar = null;
            try {
                fVar = k.b.a.y.i.b(str, true);
            } catch (k.b.a.y.g e2) {
                if (str.equals("GMT0")) {
                    fVar = r.UTC.getRules();
                } else if (z) {
                    throw e2;
                }
            }
            return new s(str, fVar);
        }
        throw new b("Invalid ID for region-based ZoneId, invalid format: " + str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static q readExternal(DataInput dataInput) {
        return a(dataInput.readUTF());
    }

    private Object readResolve() {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new n((byte) 7, this);
    }

    @Override // k.b.a.q
    public String getId() {
        return this.id;
    }

    @Override // k.b.a.q
    public k.b.a.y.f getRules() {
        k.b.a.y.f fVar = this.f19721e;
        return fVar != null ? fVar : k.b.a.y.i.b(this.id, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // k.b.a.q
    public void write(DataOutput dataOutput) {
        dataOutput.writeByte(7);
        writeExternal(dataOutput);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeExternal(DataOutput dataOutput) {
        dataOutput.writeUTF(this.id);
    }
}
