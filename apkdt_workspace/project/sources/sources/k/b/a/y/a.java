package k.b.a.y;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.Externalizable;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.StreamCorruptedException;
import k.b.a.r;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Ser.java */
/* loaded from: classes2.dex */
public final class a implements Externalizable {
    static final byte SZR = 1;
    static final byte ZOT = 2;
    static final byte ZOTRULE = 3;
    private static final long serialVersionUID = -8885321777449118786L;
    private Object object;
    private byte type;

    public a() {
    }

    private static void a(byte b2, Object obj, DataOutput dataOutput) {
        dataOutput.writeByte(b2);
        if (b2 == 1) {
            ((b) obj).writeExternal(dataOutput);
        } else if (b2 == 2) {
            ((d) obj).writeExternal(dataOutput);
        } else {
            if (b2 == 3) {
                ((e) obj).writeExternal(dataOutput);
                return;
            }
            throw new InvalidClassException("Unknown serialized type");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object read(DataInput dataInput) {
        return a(dataInput.readByte(), dataInput);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long readEpochSec(DataInput dataInput) {
        if ((dataInput.readByte() & 255) == 255) {
            return dataInput.readLong();
        }
        return ((((r0 << 16) + ((dataInput.readByte() & 255) << 8)) + (dataInput.readByte() & 255)) * 900) - 4575744000L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static r readOffset(DataInput dataInput) {
        byte readByte = dataInput.readByte();
        return readByte == Byte.MAX_VALUE ? r.ofTotalSeconds(dataInput.readInt()) : r.ofTotalSeconds(readByte * 900);
    }

    private Object readResolve() {
        return this.object;
    }

    static void write(Object obj, DataOutput dataOutput) {
        a(SZR, obj, dataOutput);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void writeEpochSec(long j2, DataOutput dataOutput) {
        if (j2 >= -4575744000L && j2 < 10413792000L && j2 % 900 == 0) {
            int i2 = (int) ((j2 + 4575744000L) / 900);
            dataOutput.writeByte((i2 >>> 16) & 255);
            dataOutput.writeByte((i2 >>> 8) & 255);
            dataOutput.writeByte(i2 & 255);
            return;
        }
        dataOutput.writeByte(255);
        dataOutput.writeLong(j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void writeOffset(r rVar, DataOutput dataOutput) {
        int totalSeconds = rVar.getTotalSeconds();
        int i2 = totalSeconds % 900 == 0 ? totalSeconds / 900 : 127;
        dataOutput.writeByte(i2);
        if (i2 == 127) {
            dataOutput.writeInt(totalSeconds);
        }
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
    public a(byte b2, Object obj) {
        this.type = b2;
        this.object = obj;
    }

    private static Object a(byte b2, DataInput dataInput) {
        if (b2 == 1) {
            return b.readExternal(dataInput);
        }
        if (b2 == 2) {
            return d.readExternal(dataInput);
        }
        if (b2 == 3) {
            return e.readExternal(dataInput);
        }
        throw new StreamCorruptedException("Unknown serialized type");
    }
}
