package k.b.a.y;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.InputStream;
import java.io.StreamCorruptedException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentNavigableMap;
import java.util.concurrent.ConcurrentSkipListMap;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* compiled from: TzdbZoneRulesProvider.java */
/* loaded from: classes2.dex */
public final class c extends i {

    /* renamed from: c, reason: collision with root package name */
    private List<String> f19891c;

    /* renamed from: d, reason: collision with root package name */
    private final ConcurrentNavigableMap<String, a> f19892d = new ConcurrentSkipListMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TzdbZoneRulesProvider.java */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private final String f19893a;

        /* renamed from: b, reason: collision with root package name */
        private final String[] f19894b;

        /* renamed from: c, reason: collision with root package name */
        private final short[] f19895c;

        /* renamed from: d, reason: collision with root package name */
        private final AtomicReferenceArray<Object> f19896d;

        a(String str, String[] strArr, short[] sArr, AtomicReferenceArray<Object> atomicReferenceArray) {
            this.f19896d = atomicReferenceArray;
            this.f19893a = str;
            this.f19894b = strArr;
            this.f19895c = sArr;
        }

        public String toString() {
            return this.f19893a;
        }

        f a(String str) {
            int binarySearch = Arrays.binarySearch(this.f19894b, str);
            if (binarySearch < 0) {
                return null;
            }
            try {
                return a(this.f19895c[binarySearch]);
            } catch (Exception e2) {
                throw new g("Invalid binary time-zone data: TZDB:" + str + ", version: " + this.f19893a, e2);
            }
        }

        f a(short s) {
            Object obj = this.f19896d.get(s);
            if (obj instanceof byte[]) {
                obj = k.b.a.y.a.read(new DataInputStream(new ByteArrayInputStream((byte[]) obj)));
                this.f19896d.set(s, obj);
            }
            return (f) obj;
        }
    }

    public c(InputStream inputStream) {
        new CopyOnWriteArraySet();
        try {
            a(inputStream);
        } catch (Exception e2) {
            throw new g("Unable to load TZDB time-zone rules", e2);
        }
    }

    private Iterable<a> b(InputStream inputStream) {
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        if (dataInputStream.readByte() == 1) {
            if ("TZDB".equals(dataInputStream.readUTF())) {
                int readShort = dataInputStream.readShort();
                String[] strArr = new String[readShort];
                for (int i2 = 0; i2 < readShort; i2++) {
                    strArr[i2] = dataInputStream.readUTF();
                }
                int readShort2 = dataInputStream.readShort();
                String[] strArr2 = new String[readShort2];
                for (int i3 = 0; i3 < readShort2; i3++) {
                    strArr2[i3] = dataInputStream.readUTF();
                }
                this.f19891c = Arrays.asList(strArr2);
                int readShort3 = dataInputStream.readShort();
                Object[] objArr = new Object[readShort3];
                for (int i4 = 0; i4 < readShort3; i4++) {
                    byte[] bArr = new byte[dataInputStream.readShort()];
                    dataInputStream.readFully(bArr);
                    objArr[i4] = bArr;
                }
                AtomicReferenceArray atomicReferenceArray = new AtomicReferenceArray(objArr);
                HashSet hashSet = new HashSet(readShort);
                for (int i5 = 0; i5 < readShort; i5++) {
                    int readShort4 = dataInputStream.readShort();
                    String[] strArr3 = new String[readShort4];
                    short[] sArr = new short[readShort4];
                    for (int i6 = 0; i6 < readShort4; i6++) {
                        strArr3[i6] = strArr2[dataInputStream.readShort()];
                        sArr[i6] = dataInputStream.readShort();
                    }
                    hashSet.add(new a(strArr[i5], strArr3, sArr, atomicReferenceArray));
                }
                return hashSet;
            }
            throw new StreamCorruptedException("File format not recognised");
        }
        throw new StreamCorruptedException("File format not recognised");
    }

    @Override // k.b.a.y.i
    protected Set<String> a() {
        return new HashSet(this.f19891c);
    }

    public String toString() {
        return "TZDB";
    }

    @Override // k.b.a.y.i
    protected f a(String str, boolean z) {
        k.b.a.w.d.a(str, "zoneId");
        f a2 = this.f19892d.lastEntry().getValue().a(str);
        if (a2 != null) {
            return a2;
        }
        throw new g("Unknown time-zone ID: " + str);
    }

    private boolean a(InputStream inputStream) {
        boolean z = false;
        for (a aVar : b(inputStream)) {
            a putIfAbsent = this.f19892d.putIfAbsent(aVar.f19893a, aVar);
            if (putIfAbsent != null && !putIfAbsent.f19893a.equals(aVar.f19893a)) {
                throw new g("Data already loaded for TZDB time-zone rules version: " + aVar.f19893a);
            }
            z = true;
        }
        return z;
    }
}
