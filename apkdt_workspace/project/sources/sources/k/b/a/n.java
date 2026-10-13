package k.b.a;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.Externalizable;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.StreamCorruptedException;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Ser.java */
/* loaded from: classes2.dex */
public final class n implements Externalizable {
    static final byte DURATION_TYPE = 1;
    static final byte INSTANT_TYPE = 2;
    static final byte LOCAL_DATE_TIME_TYPE = 4;
    static final byte LOCAL_DATE_TYPE = 3;
    static final byte LOCAL_TIME_TYPE = 5;
    static final byte MONTH_DAY_TYPE = 64;
    static final byte OFFSET_DATE_TIME_TYPE = 69;
    static final byte OFFSET_TIME_TYPE = 66;
    static final byte YEAR_MONTH_TYPE = 68;
    static final byte YEAR_TYPE = 67;
    static final byte ZONED_DATE_TIME_TYPE = 6;
    static final byte ZONE_OFFSET_TYPE = 8;
    static final byte ZONE_REGION_TYPE = 7;
    private static final long serialVersionUID = -7683839454370182990L;
    private Object object;
    private byte type;

    public n() {
    }

    private static Object a(byte b2, DataInput dataInput) {
        if (b2 != 64) {
            switch (b2) {
                case 1:
                    return d.readExternal(dataInput);
                case 2:
                    return e.readExternal(dataInput);
                case 3:
                    return f.readExternal(dataInput);
                case 4:
                    return g.readExternal(dataInput);
                case 5:
                    return h.readExternal(dataInput);
                case 6:
                    return t.readExternal(dataInput);
                case 7:
                    return s.readExternal(dataInput);
                case 8:
                    return r.readExternal(dataInput);
                default:
                    switch (b2) {
                        case 66:
                            return l.readExternal(dataInput);
                        case 67:
                            return o.readExternal(dataInput);
                        case 68:
                            return p.readExternal(dataInput);
                        case 69:
                            return k.readExternal(dataInput);
                        default:
                            throw new StreamCorruptedException("Unknown serialized type");
                    }
            }
        }
        return j.readExternal(dataInput);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object read(DataInput dataInput) {
        return a(dataInput.readByte(), dataInput);
    }

    private Object readResolve() {
        return this.object;
    }

    static void writeInternal(byte b2, Object obj, DataOutput dataOutput) {
        dataOutput.writeByte(b2);
        if (b2 != 64) {
            switch (b2) {
                case 1:
                    ((d) obj).writeExternal(dataOutput);
                    return;
                case 2:
                    ((e) obj).writeExternal(dataOutput);
                    return;
                case 3:
                    ((f) obj).writeExternal(dataOutput);
                    return;
                case 4:
                    ((g) obj).writeExternal(dataOutput);
                    return;
                case 5:
                    ((h) obj).writeExternal(dataOutput);
                    return;
                case 6:
                    ((t) obj).writeExternal(dataOutput);
                    return;
                case 7:
                    ((s) obj).writeExternal(dataOutput);
                    return;
                case 8:
                    ((r) obj).writeExternal(dataOutput);
                    return;
                default:
                    switch (b2) {
                        case 66:
                            ((l) obj).writeExternal(dataOutput);
                            return;
                        case 67:
                            ((o) obj).writeExternal(dataOutput);
                            return;
                        case 68:
                            ((p) obj).writeExternal(dataOutput);
                            return;
                        case 69:
                            ((k) obj).writeExternal(dataOutput);
                            return;
                        default:
                            throw new InvalidClassException("Unknown serialized type");
                    }
            }
        }
        ((j) obj).writeExternal(dataOutput);
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) {
        this.type = objectInput.readByte();
        this.object = a(this.type, objectInput);
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) {
        writeInternal(this.type, this.object, objectOutput);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(byte b2, Object obj) {
        this.type = b2;
        this.object = obj;
    }
}
