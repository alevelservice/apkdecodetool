package j;

import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Arrays;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SegmentedByteString.java */
/* loaded from: classes2.dex */
public final class s extends f {
    final transient int[] directory;
    final transient byte[][] segments;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(c cVar, int i2) {
        super(null);
        w.a(cVar.f19640f, 0L, i2);
        int i3 = 0;
        q qVar = cVar.f19639e;
        int i4 = 0;
        int i5 = 0;
        while (i4 < i2) {
            int i6 = qVar.f19675c;
            int i7 = qVar.f19674b;
            if (i6 != i7) {
                i4 += i6 - i7;
                i5++;
                qVar = qVar.f19678f;
            } else {
                throw new AssertionError("s.limit == s.pos");
            }
        }
        this.segments = new byte[i5];
        this.directory = new int[i5 * 2];
        q qVar2 = cVar.f19639e;
        int i8 = 0;
        while (i3 < i2) {
            this.segments[i8] = qVar2.f19673a;
            i3 += qVar2.f19675c - qVar2.f19674b;
            if (i3 > i2) {
                i3 = i2;
            }
            int[] iArr = this.directory;
            iArr[i8] = i3;
            iArr[this.segments.length + i8] = qVar2.f19674b;
            qVar2.f19676d = true;
            i8++;
            qVar2 = qVar2.f19678f;
        }
    }

    private int a(int i2) {
        int binarySearch = Arrays.binarySearch(this.directory, 0, this.segments.length, i2 + 1);
        return binarySearch >= 0 ? binarySearch : binarySearch ^ (-1);
    }

    private Object writeReplace() {
        return a();
    }

    @Override // j.f
    public ByteBuffer asByteBuffer() {
        return ByteBuffer.wrap(toByteArray()).asReadOnlyBuffer();
    }

    @Override // j.f
    public String base64() {
        return a().base64();
    }

    @Override // j.f
    public String base64Url() {
        return a().base64Url();
    }

    @Override // j.f
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            if (fVar.size() == size() && rangeEquals(0, fVar, 0, size())) {
                return true;
            }
        }
        return false;
    }

    @Override // j.f
    public byte getByte(int i2) {
        w.a(this.directory[this.segments.length - 1], i2, 1L);
        int a2 = a(i2);
        int i3 = a2 == 0 ? 0 : this.directory[a2 - 1];
        int[] iArr = this.directory;
        byte[][] bArr = this.segments;
        return bArr[a2][(i2 - i3) + iArr[bArr.length + a2]];
    }

    @Override // j.f
    public int hashCode() {
        int i2 = this.hashCode;
        if (i2 != 0) {
            return i2;
        }
        int length = this.segments.length;
        int i3 = 0;
        int i4 = 1;
        int i5 = 0;
        while (i3 < length) {
            byte[] bArr = this.segments[i3];
            int[] iArr = this.directory;
            int i6 = iArr[length + i3];
            int i7 = iArr[i3];
            int i8 = (i7 - i5) + i6;
            while (i6 < i8) {
                i4 = (i4 * 31) + bArr[i6];
                i6++;
            }
            i3++;
            i5 = i7;
        }
        this.hashCode = i4;
        return i4;
    }

    @Override // j.f
    public String hex() {
        return a().hex();
    }

    @Override // j.f
    public f hmacSha1(f fVar) {
        return a().hmacSha1(fVar);
    }

    @Override // j.f
    public f hmacSha256(f fVar) {
        return a().hmacSha256(fVar);
    }

    @Override // j.f
    public int indexOf(byte[] bArr, int i2) {
        return a().indexOf(bArr, i2);
    }

    @Override // j.f
    byte[] internalArray() {
        return toByteArray();
    }

    @Override // j.f
    public int lastIndexOf(byte[] bArr, int i2) {
        return a().lastIndexOf(bArr, i2);
    }

    @Override // j.f
    public f md5() {
        return a().md5();
    }

    @Override // j.f
    public boolean rangeEquals(int i2, f fVar, int i3, int i4) {
        if (i2 < 0 || i2 > size() - i4) {
            return false;
        }
        int a2 = a(i2);
        while (i4 > 0) {
            int i5 = a2 == 0 ? 0 : this.directory[a2 - 1];
            int min = Math.min(i4, ((this.directory[a2] - i5) + i5) - i2);
            int[] iArr = this.directory;
            byte[][] bArr = this.segments;
            if (!fVar.rangeEquals(i3, bArr[a2], (i2 - i5) + iArr[bArr.length + a2], min)) {
                return false;
            }
            i2 += min;
            i3 += min;
            i4 -= min;
            a2++;
        }
        return true;
    }

    @Override // j.f
    public f sha1() {
        return a().sha1();
    }

    @Override // j.f
    public f sha256() {
        return a().sha256();
    }

    @Override // j.f
    public int size() {
        return this.directory[this.segments.length - 1];
    }

    @Override // j.f
    public String string(Charset charset) {
        return a().string(charset);
    }

    @Override // j.f
    public f substring(int i2) {
        return a().substring(i2);
    }

    @Override // j.f
    public f toAsciiLowercase() {
        return a().toAsciiLowercase();
    }

    @Override // j.f
    public f toAsciiUppercase() {
        return a().toAsciiUppercase();
    }

    @Override // j.f
    public byte[] toByteArray() {
        int[] iArr = this.directory;
        byte[][] bArr = this.segments;
        byte[] bArr2 = new byte[iArr[bArr.length - 1]];
        int length = bArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int[] iArr2 = this.directory;
            int i4 = iArr2[length + i2];
            int i5 = iArr2[i2];
            System.arraycopy(this.segments[i2], i4, bArr2, i3, i5 - i3);
            i2++;
            i3 = i5;
        }
        return bArr2;
    }

    @Override // j.f
    public String toString() {
        return a().toString();
    }

    @Override // j.f
    public String utf8() {
        return a().utf8();
    }

    @Override // j.f
    public void write(OutputStream outputStream) {
        if (outputStream != null) {
            int length = this.segments.length;
            int i2 = 0;
            int i3 = 0;
            while (i2 < length) {
                int[] iArr = this.directory;
                int i4 = iArr[length + i2];
                int i5 = iArr[i2];
                outputStream.write(this.segments[i2], i4, i5 - i3);
                i2++;
                i3 = i5;
            }
            return;
        }
        throw new IllegalArgumentException("out == null");
    }

    private f a() {
        return new f(toByteArray());
    }

    @Override // j.f
    public f substring(int i2, int i3) {
        return a().substring(i2, i3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // j.f
    public void write(c cVar) {
        int length = this.segments.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int[] iArr = this.directory;
            int i4 = iArr[length + i2];
            int i5 = iArr[i2];
            q qVar = new q(this.segments[i2], i4, (i4 + i5) - i3, true, false);
            q qVar2 = cVar.f19639e;
            if (qVar2 == null) {
                qVar.f19679g = qVar;
                qVar.f19678f = qVar;
                cVar.f19639e = qVar;
            } else {
                qVar2.f19679g.a(qVar);
            }
            i2++;
            i3 = i5;
        }
        cVar.f19640f += i3;
    }

    @Override // j.f
    public boolean rangeEquals(int i2, byte[] bArr, int i3, int i4) {
        if (i2 < 0 || i2 > size() - i4 || i3 < 0 || i3 > bArr.length - i4) {
            return false;
        }
        int a2 = a(i2);
        while (i4 > 0) {
            int i5 = a2 == 0 ? 0 : this.directory[a2 - 1];
            int min = Math.min(i4, ((this.directory[a2] - i5) + i5) - i2);
            int[] iArr = this.directory;
            byte[][] bArr2 = this.segments;
            if (!w.a(bArr2[a2], (i2 - i5) + iArr[bArr2.length + a2], bArr, i3, min)) {
                return false;
            }
            i2 += min;
            i3 += min;
            i4 -= min;
            a2++;
        }
        return true;
    }
}
