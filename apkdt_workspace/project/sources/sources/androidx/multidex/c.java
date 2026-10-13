package androidx.multidex;

import java.io.File;
import java.io.RandomAccessFile;
import java.util.zip.CRC32;
import java.util.zip.ZipException;

/* compiled from: ZipUtil.java */
/* loaded from: classes.dex */
final class c {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ZipUtil.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        long f2513a;

        /* renamed from: b, reason: collision with root package name */
        long f2514b;

        a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long a(File file) {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
        try {
            return a(randomAccessFile, a(randomAccessFile));
        } finally {
            randomAccessFile.close();
        }
    }

    static a a(RandomAccessFile randomAccessFile) {
        long length = randomAccessFile.length() - 22;
        if (length >= 0) {
            long j2 = length - 65536;
            long j3 = j2 >= 0 ? j2 : 0L;
            int reverseBytes = Integer.reverseBytes(101010256);
            do {
                randomAccessFile.seek(length);
                if (randomAccessFile.readInt() == reverseBytes) {
                    randomAccessFile.skipBytes(2);
                    randomAccessFile.skipBytes(2);
                    randomAccessFile.skipBytes(2);
                    randomAccessFile.skipBytes(2);
                    a aVar = new a();
                    aVar.f2514b = Integer.reverseBytes(randomAccessFile.readInt()) & 4294967295L;
                    aVar.f2513a = Integer.reverseBytes(randomAccessFile.readInt()) & 4294967295L;
                    return aVar;
                }
                length--;
            } while (length >= j3);
            throw new ZipException("End Of Central Directory signature not found");
        }
        throw new ZipException("File too short to be a zip file: " + randomAccessFile.length());
    }

    static long a(RandomAccessFile randomAccessFile, a aVar) {
        CRC32 crc32 = new CRC32();
        long j2 = aVar.f2514b;
        randomAccessFile.seek(aVar.f2513a);
        byte[] bArr = new byte[16384];
        int read = randomAccessFile.read(bArr, 0, (int) Math.min(16384L, j2));
        while (read != -1) {
            crc32.update(bArr, 0, read);
            j2 -= read;
            if (j2 == 0) {
                break;
            }
            read = randomAccessFile.read(bArr, 0, (int) Math.min(16384L, j2));
        }
        return crc32.getValue();
    }
}
