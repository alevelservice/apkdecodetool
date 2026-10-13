package com.facebook.soloader;

import java.io.File;
import java.io.FileInputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;

/* compiled from: MinElf.java */
/* loaded from: classes.dex */
public final class h {

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MinElf.java */
    /* loaded from: classes.dex */
    public static class a extends RuntimeException {
        a(String str) {
            super(str);
        }
    }

    public static String[] a(File file) {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            return a(fileInputStream.getChannel());
        } finally {
            fileInputStream.close();
        }
    }

    private static String b(FileChannel fileChannel, ByteBuffer byteBuffer, long j2) {
        StringBuilder sb = new StringBuilder();
        while (true) {
            long j3 = 1 + j2;
            short e2 = e(fileChannel, byteBuffer, j2);
            if (e2 != 0) {
                sb.append((char) e2);
                j2 = j3;
            } else {
                return sb.toString();
            }
        }
    }

    private static int c(FileChannel fileChannel, ByteBuffer byteBuffer, long j2) {
        a(fileChannel, byteBuffer, 2, j2);
        return byteBuffer.getShort() & 65535;
    }

    private static long d(FileChannel fileChannel, ByteBuffer byteBuffer, long j2) {
        a(fileChannel, byteBuffer, 4, j2);
        return byteBuffer.getInt() & 4294967295L;
    }

    private static short e(FileChannel fileChannel, ByteBuffer byteBuffer, long j2) {
        a(fileChannel, byteBuffer, 1, j2);
        return (short) (byteBuffer.get() & 255);
    }

    public static String[] a(FileChannel fileChannel) {
        long a2;
        long c2;
        int c3;
        long j2;
        boolean z;
        long a3;
        long j3;
        long a4;
        long j4;
        long a5;
        long a6;
        long d2;
        long j5;
        long a7;
        long a8;
        long a9;
        long d3;
        long a10;
        long d4;
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        if (d(fileChannel, allocate, 0L) == 1179403647) {
            boolean z2 = e(fileChannel, allocate, 4L) == 1;
            if (e(fileChannel, allocate, 5L) == 2) {
                allocate.order(ByteOrder.BIG_ENDIAN);
            }
            if (z2) {
                a2 = d(fileChannel, allocate, 28L);
            } else {
                a2 = a(fileChannel, allocate, 32L);
            }
            if (z2) {
                c2 = c(fileChannel, allocate, 44L);
            } else {
                c2 = c(fileChannel, allocate, 56L);
            }
            if (z2) {
                c3 = c(fileChannel, allocate, 42L);
            } else {
                c3 = c(fileChannel, allocate, 54L);
            }
            if (c2 == 65535) {
                if (z2) {
                    a10 = d(fileChannel, allocate, 32L);
                } else {
                    a10 = a(fileChannel, allocate, 40L);
                }
                if (z2) {
                    d4 = d(fileChannel, allocate, a10 + 28);
                } else {
                    d4 = d(fileChannel, allocate, a10 + 44);
                }
                c2 = d4;
            }
            long j6 = a2;
            long j7 = 0;
            while (true) {
                if (j7 >= c2) {
                    j2 = 0;
                    break;
                }
                if (z2) {
                    d3 = d(fileChannel, allocate, j6 + 0);
                } else {
                    d3 = d(fileChannel, allocate, j6 + 0);
                }
                if (d3 != 2) {
                    j6 += c3;
                    j7++;
                } else if (z2) {
                    j2 = d(fileChannel, allocate, j6 + 4);
                } else {
                    j2 = a(fileChannel, allocate, j6 + 8);
                }
            }
            long j8 = 0;
            if (j2 == 0) {
                throw new a("ELF file does not contain dynamic linking information");
            }
            long j9 = j2;
            long j10 = 0;
            int i2 = 0;
            while (true) {
                if (z2) {
                    z = z2;
                    a3 = d(fileChannel, allocate, j9 + j8);
                } else {
                    z = z2;
                    a3 = a(fileChannel, allocate, j9 + j8);
                }
                if (a3 == 1) {
                    j3 = j2;
                    if (i2 == Integer.MAX_VALUE) {
                        throw new a("malformed DT_NEEDED section");
                    }
                    i2++;
                } else {
                    j3 = j2;
                    if (a3 == 5) {
                        if (z) {
                            a4 = d(fileChannel, allocate, j9 + 4);
                        } else {
                            a4 = a(fileChannel, allocate, j9 + 8);
                        }
                        j10 = a4;
                    }
                }
                long j11 = 16;
                j9 += z ? 8L : 16L;
                j8 = 0;
                if (a3 != 0) {
                    z2 = z;
                    j2 = j3;
                } else {
                    if (j10 == 0) {
                        throw new a("Dynamic section string-table not found");
                    }
                    int i3 = 0;
                    while (true) {
                        if (i3 >= c2) {
                            j4 = 0;
                            break;
                        }
                        if (z) {
                            d2 = d(fileChannel, allocate, a2 + j8);
                        } else {
                            d2 = d(fileChannel, allocate, a2 + j8);
                        }
                        if (d2 == 1) {
                            if (z) {
                                a7 = d(fileChannel, allocate, a2 + 8);
                            } else {
                                a7 = a(fileChannel, allocate, a2 + j11);
                            }
                            if (z) {
                                j5 = c2;
                                a8 = d(fileChannel, allocate, a2 + 20);
                            } else {
                                j5 = c2;
                                a8 = a(fileChannel, allocate, a2 + 40);
                            }
                            if (a7 <= j10 && j10 < a8 + a7) {
                                if (z) {
                                    a9 = d(fileChannel, allocate, a2 + 4);
                                } else {
                                    a9 = a(fileChannel, allocate, a2 + 8);
                                }
                                j4 = a9 + (j10 - a7);
                            }
                        } else {
                            j5 = c2;
                        }
                        a2 += c3;
                        i3++;
                        c2 = j5;
                        j11 = 16;
                        j8 = 0;
                    }
                    long j12 = 0;
                    if (j4 != 0) {
                        String[] strArr = new String[i2];
                        int i4 = 0;
                        while (true) {
                            if (z) {
                                a5 = d(fileChannel, allocate, j3 + j12);
                            } else {
                                a5 = a(fileChannel, allocate, j3 + j12);
                            }
                            if (a5 == 1) {
                                if (z) {
                                    a6 = d(fileChannel, allocate, j3 + 4);
                                } else {
                                    a6 = a(fileChannel, allocate, j3 + 8);
                                }
                                strArr[i4] = b(fileChannel, allocate, a6 + j4);
                                if (i4 == Integer.MAX_VALUE) {
                                    throw new a("malformed DT_NEEDED section");
                                }
                                i4++;
                            }
                            j3 += z ? 8L : 16L;
                            if (a5 == 0) {
                                if (i4 == strArr.length) {
                                    return strArr;
                                }
                                throw new a("malformed DT_NEEDED section");
                            }
                            j12 = 0;
                        }
                    } else {
                        throw new a("did not find file offset of DT_STRTAB table");
                    }
                }
            }
        } else {
            throw new a("file is not ELF");
        }
    }

    private static void a(FileChannel fileChannel, ByteBuffer byteBuffer, int i2, long j2) {
        int read;
        byteBuffer.position(0);
        byteBuffer.limit(i2);
        while (byteBuffer.remaining() > 0 && (read = fileChannel.read(byteBuffer, j2)) != -1) {
            j2 += read;
        }
        if (byteBuffer.remaining() <= 0) {
            byteBuffer.position(0);
            return;
        }
        throw new a("ELF file truncated");
    }

    private static long a(FileChannel fileChannel, ByteBuffer byteBuffer, long j2) {
        a(fileChannel, byteBuffer, 8, j2);
        return byteBuffer.getLong();
    }
}
