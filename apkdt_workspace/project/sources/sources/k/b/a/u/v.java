package k.b.a.u;

import java.io.Externalizable;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.StreamCorruptedException;

/* compiled from: Ser.java */
/* loaded from: classes2.dex */
final class v implements Externalizable {
    static final byte CHRONO_LOCALDATETIME_TYPE = 12;
    static final byte CHRONO_TYPE = 11;
    static final byte CHRONO_ZONEDDATETIME_TYPE = 13;
    static final byte HIJRAH_DATE_TYPE = 3;
    static final byte HIJRAH_ERA_TYPE = 4;
    static final byte JAPANESE_DATE_TYPE = 1;
    static final byte JAPANESE_ERA_TYPE = 2;
    static final byte MINGUO_DATE_TYPE = 5;
    static final byte MINGUO_ERA_TYPE = 6;
    static final byte THAIBUDDHIST_DATE_TYPE = 7;
    static final byte THAIBUDDHIST_ERA_TYPE = 8;
    private static final long serialVersionUID = 7857518227608961174L;
    private Object object;
    private byte type;

    public v() {
    }

    private static void a(byte b2, Object obj, ObjectOutput objectOutput) {
        objectOutput.writeByte(b2);
        switch (b2) {
            case 1:
                ((q) obj).writeExternal(objectOutput);
                return;
            case 2:
                ((r) obj).writeExternal(objectOutput);
                return;
            case 3:
                ((l) obj).writeExternal(objectOutput);
                return;
            case 4:
                ((m) obj).writeExternal(objectOutput);
                return;
            case 5:
                ((t) obj).writeExternal(objectOutput);
                return;
            case 6:
                ((u) obj).writeExternal(objectOutput);
                return;
            case 7:
                ((x) obj).writeExternal(objectOutput);
                return;
            case 8:
                ((y) obj).writeExternal(objectOutput);
                return;
            case 9:
            case 10:
            default:
                throw new InvalidClassException("Unknown serialized type");
            case 11:
                ((i) obj).writeExternal(objectOutput);
                return;
            case 12:
                ((d) obj).writeExternal(objectOutput);
                return;
            case 13:
                ((h) obj).writeExternal(objectOutput);
                return;
        }
    }

    static Object read(ObjectInput objectInput) {
        return a(objectInput.readByte(), objectInput);
    }

    private Object readResolve() {
        return this.object;
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) {
        this.type = objectInput.readByte();
        this.object = a(this.type, objectInput);
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) {
        a(this.type, this.object, objectOutput);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(byte b2, Object obj) {
        this.type = b2;
        this.object = obj;
    }

    private static Object a(byte b2, ObjectInput objectInput) {
        switch (b2) {
            case 1:
                return q.readExternal(objectInput);
            case 2:
                return r.readExternal(objectInput);
            case 3:
                return l.readExternal(objectInput);
            case 4:
                return m.readExternal(objectInput);
            case 5:
                return t.readExternal(objectInput);
            case 6:
                return u.readExternal(objectInput);
            case 7:
                return x.readExternal(objectInput);
            case 8:
                return y.readExternal(objectInput);
            case 9:
            case 10:
            default:
                throw new StreamCorruptedException("Unknown serialized type");
            case 11:
                return i.readExternal(objectInput);
            case 12:
                return d.readExternal(objectInput);
            case 13:
                return h.readExternal(objectInput);
        }
    }
}
