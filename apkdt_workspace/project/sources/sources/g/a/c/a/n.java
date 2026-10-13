package g.a.c.a;

import java.io.ByteArrayOutputStream;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: StandardMessageCodec.java */
/* loaded from: classes2.dex */
public class n implements i<Object> {

    /* renamed from: a, reason: collision with root package name */
    public static final n f18234a = new n();

    /* renamed from: b, reason: collision with root package name */
    private static final boolean f18235b;

    /* renamed from: c, reason: collision with root package name */
    private static final Charset f18236c;

    /* compiled from: StandardMessageCodec.java */
    /* loaded from: classes2.dex */
    static final class a extends ByteArrayOutputStream {
        /* JADX INFO: Access modifiers changed from: package-private */
        public byte[] a() {
            return ((ByteArrayOutputStream) this).buf;
        }
    }

    static {
        f18235b = ByteOrder.nativeOrder() == ByteOrder.LITTLE_ENDIAN;
        f18236c = Charset.forName("UTF8");
    }

    protected static final void b(ByteArrayOutputStream byteArrayOutputStream, int i2) {
        if (f18235b) {
            byteArrayOutputStream.write(i2);
            byteArrayOutputStream.write(i2 >>> 8);
        } else {
            byteArrayOutputStream.write(i2 >>> 8);
            byteArrayOutputStream.write(i2);
        }
    }

    protected static final void c(ByteArrayOutputStream byteArrayOutputStream, int i2) {
        if (f18235b) {
            byteArrayOutputStream.write(i2);
            byteArrayOutputStream.write(i2 >>> 8);
            byteArrayOutputStream.write(i2 >>> 16);
            byteArrayOutputStream.write(i2 >>> 24);
            return;
        }
        byteArrayOutputStream.write(i2 >>> 24);
        byteArrayOutputStream.write(i2 >>> 16);
        byteArrayOutputStream.write(i2 >>> 8);
        byteArrayOutputStream.write(i2);
    }

    protected static final void d(ByteArrayOutputStream byteArrayOutputStream, int i2) {
        if (i2 < 254) {
            byteArrayOutputStream.write(i2);
        } else if (i2 <= 65535) {
            byteArrayOutputStream.write(254);
            b(byteArrayOutputStream, i2);
        } else {
            byteArrayOutputStream.write(255);
            c(byteArrayOutputStream, i2);
        }
    }

    @Override // g.a.c.a.i
    public ByteBuffer a(Object obj) {
        if (obj == null) {
            return null;
        }
        a aVar = new a();
        a(aVar, obj);
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(aVar.size());
        allocateDirect.put(aVar.a(), 0, aVar.size());
        return allocateDirect;
    }

    @Override // g.a.c.a.i
    public Object a(ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            return null;
        }
        byteBuffer.order(ByteOrder.nativeOrder());
        Object b2 = b(byteBuffer);
        if (byteBuffer.hasRemaining()) {
            throw new IllegalArgumentException("Message corrupted");
        }
        return b2;
    }

    protected static final int d(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            int i2 = byteBuffer.get() & 255;
            if (i2 < 254) {
                return i2;
            }
            if (i2 == 254) {
                return byteBuffer.getChar();
            }
            return byteBuffer.getInt();
        }
        throw new IllegalArgumentException("Message corrupted");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Object b(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            return a(byteBuffer.get(), byteBuffer);
        }
        throw new IllegalArgumentException("Message corrupted");
    }

    protected static final void a(ByteArrayOutputStream byteArrayOutputStream, long j2) {
        if (f18235b) {
            byteArrayOutputStream.write((byte) j2);
            byteArrayOutputStream.write((byte) (j2 >>> 8));
            byteArrayOutputStream.write((byte) (j2 >>> 16));
            byteArrayOutputStream.write((byte) (j2 >>> 24));
            byteArrayOutputStream.write((byte) (j2 >>> 32));
            byteArrayOutputStream.write((byte) (j2 >>> 40));
            byteArrayOutputStream.write((byte) (j2 >>> 48));
            byteArrayOutputStream.write((byte) (j2 >>> 56));
            return;
        }
        byteArrayOutputStream.write((byte) (j2 >>> 56));
        byteArrayOutputStream.write((byte) (j2 >>> 48));
        byteArrayOutputStream.write((byte) (j2 >>> 40));
        byteArrayOutputStream.write((byte) (j2 >>> 32));
        byteArrayOutputStream.write((byte) (j2 >>> 24));
        byteArrayOutputStream.write((byte) (j2 >>> 16));
        byteArrayOutputStream.write((byte) (j2 >>> 8));
        byteArrayOutputStream.write((byte) j2);
    }

    protected static final byte[] c(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[d(byteBuffer)];
        byteBuffer.get(bArr);
        return bArr;
    }

    protected static final void a(ByteArrayOutputStream byteArrayOutputStream, double d2) {
        a(byteArrayOutputStream, Double.doubleToLongBits(d2));
    }

    protected static final void a(ByteArrayOutputStream byteArrayOutputStream, byte[] bArr) {
        d(byteArrayOutputStream, bArr.length);
        byteArrayOutputStream.write(bArr, 0, bArr.length);
    }

    protected static final void a(ByteArrayOutputStream byteArrayOutputStream, int i2) {
        int size = byteArrayOutputStream.size() % i2;
        if (size != 0) {
            for (int i3 = 0; i3 < i2 - size; i3++) {
                byteArrayOutputStream.write(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(ByteArrayOutputStream byteArrayOutputStream, Object obj) {
        int i2 = 0;
        if (obj != null && !obj.equals(null)) {
            if (obj == Boolean.TRUE) {
                byteArrayOutputStream.write(1);
                return;
            }
            if (obj == Boolean.FALSE) {
                byteArrayOutputStream.write(2);
                return;
            }
            if (obj instanceof Number) {
                if (!(obj instanceof Integer) && !(obj instanceof Short) && !(obj instanceof Byte)) {
                    if (obj instanceof Long) {
                        byteArrayOutputStream.write(4);
                        a(byteArrayOutputStream, ((Long) obj).longValue());
                        return;
                    }
                    if (!(obj instanceof Float) && !(obj instanceof Double)) {
                        if (obj instanceof BigInteger) {
                            byteArrayOutputStream.write(5);
                            a(byteArrayOutputStream, ((BigInteger) obj).toString(16).getBytes(f18236c));
                            return;
                        }
                        throw new IllegalArgumentException("Unsupported Number type: " + obj.getClass());
                    }
                    byteArrayOutputStream.write(6);
                    a(byteArrayOutputStream, 8);
                    a(byteArrayOutputStream, ((Number) obj).doubleValue());
                    return;
                }
                byteArrayOutputStream.write(3);
                c(byteArrayOutputStream, ((Number) obj).intValue());
                return;
            }
            if (obj instanceof String) {
                byteArrayOutputStream.write(7);
                a(byteArrayOutputStream, ((String) obj).getBytes(f18236c));
                return;
            }
            if (obj instanceof byte[]) {
                byteArrayOutputStream.write(8);
                a(byteArrayOutputStream, (byte[]) obj);
                return;
            }
            if (obj instanceof int[]) {
                byteArrayOutputStream.write(9);
                int[] iArr = (int[]) obj;
                d(byteArrayOutputStream, iArr.length);
                a(byteArrayOutputStream, 4);
                int length = iArr.length;
                while (i2 < length) {
                    c(byteArrayOutputStream, iArr[i2]);
                    i2++;
                }
                return;
            }
            if (obj instanceof long[]) {
                byteArrayOutputStream.write(10);
                long[] jArr = (long[]) obj;
                d(byteArrayOutputStream, jArr.length);
                a(byteArrayOutputStream, 8);
                int length2 = jArr.length;
                while (i2 < length2) {
                    a(byteArrayOutputStream, jArr[i2]);
                    i2++;
                }
                return;
            }
            if (obj instanceof double[]) {
                byteArrayOutputStream.write(11);
                double[] dArr = (double[]) obj;
                d(byteArrayOutputStream, dArr.length);
                a(byteArrayOutputStream, 8);
                int length3 = dArr.length;
                while (i2 < length3) {
                    a(byteArrayOutputStream, dArr[i2]);
                    i2++;
                }
                return;
            }
            if (obj instanceof List) {
                byteArrayOutputStream.write(12);
                List list = (List) obj;
                d(byteArrayOutputStream, list.size());
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    a(byteArrayOutputStream, it.next());
                }
                return;
            }
            if (obj instanceof Map) {
                byteArrayOutputStream.write(13);
                Map map = (Map) obj;
                d(byteArrayOutputStream, map.size());
                for (Map.Entry entry : map.entrySet()) {
                    a(byteArrayOutputStream, entry.getKey());
                    a(byteArrayOutputStream, entry.getValue());
                }
                return;
            }
            throw new IllegalArgumentException("Unsupported value: " + obj);
        }
        byteArrayOutputStream.write(0);
    }

    protected static final void a(ByteBuffer byteBuffer, int i2) {
        int position = byteBuffer.position() % i2;
        if (position != 0) {
            byteBuffer.position((byteBuffer.position() + i2) - position);
        }
    }

    protected Object a(byte b2, ByteBuffer byteBuffer) {
        long[] jArr;
        int i2 = 0;
        switch (b2) {
            case 0:
                return null;
            case 1:
                return true;
            case 2:
                return false;
            case 3:
                return Integer.valueOf(byteBuffer.getInt());
            case 4:
                return Long.valueOf(byteBuffer.getLong());
            case 5:
                return new BigInteger(new String(c(byteBuffer), f18236c), 16);
            case 6:
                a(byteBuffer, 8);
                return Double.valueOf(byteBuffer.getDouble());
            case 7:
                return new String(c(byteBuffer), f18236c);
            case 8:
                return c(byteBuffer);
            case 9:
                int d2 = d(byteBuffer);
                int[] iArr = new int[d2];
                a(byteBuffer, 4);
                byteBuffer.asIntBuffer().get(iArr);
                byteBuffer.position(byteBuffer.position() + (d2 * 4));
                return iArr;
            case 10:
                int d3 = d(byteBuffer);
                long[] jArr2 = new long[d3];
                a(byteBuffer, 8);
                byteBuffer.asLongBuffer().get(jArr2);
                byteBuffer.position(byteBuffer.position() + (d3 * 8));
                jArr = jArr2;
                break;
            case 11:
                int d4 = d(byteBuffer);
                double[] dArr = new double[d4];
                a(byteBuffer, 8);
                byteBuffer.asDoubleBuffer().get(dArr);
                byteBuffer.position(byteBuffer.position() + (d4 * 8));
                jArr = dArr;
                break;
            case 12:
                int d5 = d(byteBuffer);
                ArrayList arrayList = new ArrayList(d5);
                while (i2 < d5) {
                    arrayList.add(b(byteBuffer));
                    i2++;
                }
                return arrayList;
            case 13:
                int d6 = d(byteBuffer);
                HashMap hashMap = new HashMap();
                while (i2 < d6) {
                    hashMap.put(b(byteBuffer), b(byteBuffer));
                    i2++;
                }
                return hashMap;
            default:
                throw new IllegalArgumentException("Message corrupted");
        }
        return jArr;
    }
}
