package androidx.exifinterface.media;

import android.content.res.AssetManager;
import android.media.MediaDataSource;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class ExifInterface {
    private static final d[] A;
    private static final d[] B;
    private static final d[] C;
    private static final d[] D;
    private static final d[] E;
    private static final d F;
    private static final d[] G;
    private static final d[] H;
    private static final d[] I;
    private static final d[] J;
    static final d[][] K;
    private static final d[] L;
    private static final HashMap<Integer, d>[] M;
    private static final HashMap<String, d>[] N;
    private static final HashSet<String> O;
    private static final HashMap<Integer, Integer> P;
    static final Charset Q;
    static final byte[] R;
    private static final byte[] S;
    private static final boolean n = Log.isLoggable("ExifInterface", 3);
    public static final int[] o;
    public static final int[] p;
    static final byte[] q;
    private static final byte[] r;
    private static final byte[] s;
    private static final byte[] t;
    private static final byte[] u;
    private static final byte[] v;
    private static SimpleDateFormat w;
    static final String[] x;
    static final int[] y;
    static final byte[] z;

    /* renamed from: a, reason: collision with root package name */
    private String f2097a;

    /* renamed from: b, reason: collision with root package name */
    private FileDescriptor f2098b;

    /* renamed from: c, reason: collision with root package name */
    private AssetManager.AssetInputStream f2099c;

    /* renamed from: d, reason: collision with root package name */
    private int f2100d;

    /* renamed from: e, reason: collision with root package name */
    private final HashMap<String, c>[] f2101e;

    /* renamed from: f, reason: collision with root package name */
    private Set<Integer> f2102f;

    /* renamed from: g, reason: collision with root package name */
    private ByteOrder f2103g;

    /* renamed from: h, reason: collision with root package name */
    private int f2104h;

    /* renamed from: i, reason: collision with root package name */
    private int f2105i;

    /* renamed from: j, reason: collision with root package name */
    private int f2106j;

    /* renamed from: k, reason: collision with root package name */
    private int f2107k;

    /* renamed from: l, reason: collision with root package name */
    private int f2108l;
    private int m;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.a.LIBRARY})
    /* loaded from: classes.dex */
    public @interface IfdType {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a extends MediaDataSource {

        /* renamed from: e, reason: collision with root package name */
        long f2109e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ b f2110f;

        a(ExifInterface exifInterface, b bVar) {
            this.f2110f = bVar;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // android.media.MediaDataSource
        public long getSize() {
            return -1L;
        }

        @Override // android.media.MediaDataSource
        public int readAt(long j2, byte[] bArr, int i2, int i3) {
            if (i3 == 0) {
                return 0;
            }
            if (j2 < 0) {
                return -1;
            }
            try {
                if (this.f2109e != j2) {
                    if (this.f2109e >= 0 && j2 >= this.f2109e + this.f2110f.available()) {
                        return -1;
                    }
                    this.f2110f.h(j2);
                    this.f2109e = j2;
                }
                if (i3 > this.f2110f.available()) {
                    i3 = this.f2110f.available();
                }
                int read = this.f2110f.read(bArr, i2, i3);
                if (read >= 0) {
                    this.f2109e += read;
                    return read;
                }
            } catch (IOException unused) {
            }
            this.f2109e = -1L;
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a, reason: collision with root package name */
        public final int f2117a;

        /* renamed from: b, reason: collision with root package name */
        public final int f2118b;

        /* renamed from: c, reason: collision with root package name */
        public final byte[] f2119c;

        c(int i2, int i3, byte[] bArr) {
            this(i2, i3, -1L, bArr);
        }

        public static c a(int[] iArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[ExifInterface.y[3] * iArr.length]);
            wrap.order(byteOrder);
            for (int i2 : iArr) {
                wrap.putShort((short) i2);
            }
            return new c(3, iArr.length, wrap.array());
        }

        public int b(ByteOrder byteOrder) {
            Object d2 = d(byteOrder);
            if (d2 != null) {
                if (d2 instanceof String) {
                    return Integer.parseInt((String) d2);
                }
                if (d2 instanceof long[]) {
                    long[] jArr = (long[]) d2;
                    if (jArr.length == 1) {
                        return (int) jArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                }
                if (d2 instanceof int[]) {
                    int[] iArr = (int[]) d2;
                    if (iArr.length == 1) {
                        return iArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                }
                throw new NumberFormatException("Couldn't find a integer value");
            }
            throw new NumberFormatException("NULL can't be converted to a integer value");
        }

        public String c(ByteOrder byteOrder) {
            Object d2 = d(byteOrder);
            if (d2 == null) {
                return null;
            }
            if (d2 instanceof String) {
                return (String) d2;
            }
            StringBuilder sb = new StringBuilder();
            int i2 = 0;
            if (d2 instanceof long[]) {
                long[] jArr = (long[]) d2;
                while (i2 < jArr.length) {
                    sb.append(jArr[i2]);
                    i2++;
                    if (i2 != jArr.length) {
                        sb.append(",");
                    }
                }
                return sb.toString();
            }
            if (d2 instanceof int[]) {
                int[] iArr = (int[]) d2;
                while (i2 < iArr.length) {
                    sb.append(iArr[i2]);
                    i2++;
                    if (i2 != iArr.length) {
                        sb.append(",");
                    }
                }
                return sb.toString();
            }
            if (d2 instanceof double[]) {
                double[] dArr = (double[]) d2;
                while (i2 < dArr.length) {
                    sb.append(dArr[i2]);
                    i2++;
                    if (i2 != dArr.length) {
                        sb.append(",");
                    }
                }
                return sb.toString();
            }
            if (!(d2 instanceof e[])) {
                return null;
            }
            e[] eVarArr = (e[]) d2;
            while (i2 < eVarArr.length) {
                sb.append(eVarArr[i2].f2124a);
                sb.append('/');
                sb.append(eVarArr[i2].f2125b);
                i2++;
                if (i2 != eVarArr.length) {
                    sb.append(",");
                }
            }
            return sb.toString();
        }

        Object d(ByteOrder byteOrder) {
            b bVar;
            byte b2;
            try {
                bVar = new b(this.f2119c);
                try {
                    bVar.a(byteOrder);
                    boolean z = true;
                    int i2 = 0;
                    switch (this.f2117a) {
                        case 1:
                        case 6:
                            if (this.f2119c.length == 1 && this.f2119c[0] >= 0 && this.f2119c[0] <= 1) {
                                String str = new String(new char[]{(char) (this.f2119c[0] + 48)});
                                try {
                                    bVar.close();
                                } catch (IOException unused) {
                                }
                                return str;
                            }
                            String str2 = new String(this.f2119c, ExifInterface.Q);
                            try {
                                bVar.close();
                            } catch (IOException unused2) {
                            }
                            return str2;
                        case 2:
                        case 7:
                            if (this.f2118b >= ExifInterface.z.length) {
                                int i3 = 0;
                                while (true) {
                                    if (i3 < ExifInterface.z.length) {
                                        if (this.f2119c[i3] != ExifInterface.z[i3]) {
                                            z = false;
                                        } else {
                                            i3++;
                                        }
                                    }
                                }
                                if (z) {
                                    i2 = ExifInterface.z.length;
                                }
                            }
                            StringBuilder sb = new StringBuilder();
                            while (i2 < this.f2118b && (b2 = this.f2119c[i2]) != 0) {
                                if (b2 >= 32) {
                                    sb.append((char) b2);
                                } else {
                                    sb.append('?');
                                }
                                i2++;
                            }
                            String sb2 = sb.toString();
                            try {
                                bVar.close();
                            } catch (IOException unused3) {
                            }
                            return sb2;
                        case 3:
                            int[] iArr = new int[this.f2118b];
                            while (i2 < this.f2118b) {
                                iArr[i2] = bVar.readUnsignedShort();
                                i2++;
                            }
                            try {
                                bVar.close();
                            } catch (IOException unused4) {
                            }
                            return iArr;
                        case 4:
                            long[] jArr = new long[this.f2118b];
                            while (i2 < this.f2118b) {
                                jArr[i2] = bVar.k();
                                i2++;
                            }
                            try {
                                bVar.close();
                            } catch (IOException unused5) {
                            }
                            return jArr;
                        case 5:
                            e[] eVarArr = new e[this.f2118b];
                            while (i2 < this.f2118b) {
                                eVarArr[i2] = new e(bVar.k(), bVar.k());
                                i2++;
                            }
                            try {
                                bVar.close();
                            } catch (IOException unused6) {
                            }
                            return eVarArr;
                        case 8:
                            int[] iArr2 = new int[this.f2118b];
                            while (i2 < this.f2118b) {
                                iArr2[i2] = bVar.readShort();
                                i2++;
                            }
                            try {
                                bVar.close();
                            } catch (IOException unused7) {
                            }
                            return iArr2;
                        case 9:
                            int[] iArr3 = new int[this.f2118b];
                            while (i2 < this.f2118b) {
                                iArr3[i2] = bVar.readInt();
                                i2++;
                            }
                            try {
                                bVar.close();
                            } catch (IOException unused8) {
                            }
                            return iArr3;
                        case 10:
                            e[] eVarArr2 = new e[this.f2118b];
                            while (i2 < this.f2118b) {
                                eVarArr2[i2] = new e(bVar.readInt(), bVar.readInt());
                                i2++;
                            }
                            try {
                                bVar.close();
                            } catch (IOException unused9) {
                            }
                            return eVarArr2;
                        case 11:
                            double[] dArr = new double[this.f2118b];
                            while (i2 < this.f2118b) {
                                dArr[i2] = bVar.readFloat();
                                i2++;
                            }
                            try {
                                bVar.close();
                            } catch (IOException unused10) {
                            }
                            return dArr;
                        case 12:
                            double[] dArr2 = new double[this.f2118b];
                            while (i2 < this.f2118b) {
                                dArr2[i2] = bVar.readDouble();
                                i2++;
                            }
                            try {
                                bVar.close();
                            } catch (IOException unused11) {
                            }
                            return dArr2;
                        default:
                            try {
                                bVar.close();
                            } catch (IOException unused12) {
                            }
                            return null;
                    }
                } catch (IOException unused13) {
                    if (bVar != null) {
                        try {
                            bVar.close();
                        } catch (IOException unused14) {
                        }
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    if (bVar != null) {
                        try {
                            bVar.close();
                        } catch (IOException unused15) {
                        }
                    }
                    throw th;
                }
            } catch (IOException unused16) {
                bVar = null;
            } catch (Throwable th2) {
                th = th2;
                bVar = null;
            }
        }

        public String toString() {
            return "(" + ExifInterface.x[this.f2117a] + ", data length:" + this.f2119c.length + ")";
        }

        c(int i2, int i3, long j2, byte[] bArr) {
            this.f2117a = i2;
            this.f2118b = i3;
            this.f2119c = bArr;
        }

        public static c a(int i2, ByteOrder byteOrder) {
            return a(new int[]{i2}, byteOrder);
        }

        public static c a(long[] jArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[ExifInterface.y[4] * jArr.length]);
            wrap.order(byteOrder);
            for (long j2 : jArr) {
                wrap.putInt((int) j2);
            }
            return new c(4, jArr.length, wrap.array());
        }

        public static c a(long j2, ByteOrder byteOrder) {
            return a(new long[]{j2}, byteOrder);
        }

        public static c a(String str) {
            byte[] bytes = (str + (char) 0).getBytes(ExifInterface.Q);
            return new c(2, bytes.length, bytes);
        }

        public static c a(e[] eVarArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[ExifInterface.y[5] * eVarArr.length]);
            wrap.order(byteOrder);
            for (e eVar : eVarArr) {
                wrap.putInt((int) eVar.f2124a);
                wrap.putInt((int) eVar.f2125b);
            }
            return new c(5, eVarArr.length, wrap.array());
        }

        public static c a(e eVar, ByteOrder byteOrder) {
            return a(new e[]{eVar}, byteOrder);
        }

        public double a(ByteOrder byteOrder) {
            Object d2 = d(byteOrder);
            if (d2 != null) {
                if (d2 instanceof String) {
                    return Double.parseDouble((String) d2);
                }
                if (d2 instanceof long[]) {
                    if (((long[]) d2).length == 1) {
                        return r5[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                }
                if (d2 instanceof int[]) {
                    if (((int[]) d2).length == 1) {
                        return r5[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                }
                if (d2 instanceof double[]) {
                    double[] dArr = (double[]) d2;
                    if (dArr.length == 1) {
                        return dArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                }
                if (d2 instanceof e[]) {
                    e[] eVarArr = (e[]) d2;
                    if (eVarArr.length == 1) {
                        return eVarArr[0].a();
                    }
                    throw new NumberFormatException("There are more than one component");
                }
                throw new NumberFormatException("Couldn't find a double value");
            }
            throw new NumberFormatException("NULL can't be converted to a double value");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class e {

        /* renamed from: a, reason: collision with root package name */
        public final long f2124a;

        /* renamed from: b, reason: collision with root package name */
        public final long f2125b;

        e(long j2, long j3) {
            if (j3 == 0) {
                this.f2124a = 0L;
                this.f2125b = 1L;
            } else {
                this.f2124a = j2;
                this.f2125b = j3;
            }
        }

        public double a() {
            double d2 = this.f2124a;
            double d3 = this.f2125b;
            Double.isNaN(d2);
            Double.isNaN(d3);
            return d2 / d3;
        }

        public String toString() {
            return this.f2124a + "/" + this.f2125b;
        }
    }

    static {
        Arrays.asList(1, 6, 3, 8);
        Arrays.asList(2, 7, 4, 5);
        o = new int[]{8, 8, 8};
        new int[1][0] = 4;
        p = new int[]{8};
        q = new byte[]{-1, -40, -1};
        r = new byte[]{102, 116, 121, 112};
        s = new byte[]{109, 105, 102, 49};
        t = new byte[]{104, 101, 105, 99};
        u = new byte[]{79, 76, 89, 77, 80, 0};
        v = new byte[]{79, 76, 89, 77, 80, 85, 83, 0, 73, 73};
        x = new String[]{"", "BYTE", "STRING", "USHORT", "ULONG", "URATIONAL", "SBYTE", "UNDEFINED", "SSHORT", "SLONG", "SRATIONAL", "SINGLE", "DOUBLE"};
        y = new int[]{0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8, 1};
        z = new byte[]{65, 83, 67, 73, 73, 0, 0, 0};
        A = new d[]{new d("NewSubfileType", 254, 4), new d("SubfileType", 255, 4), new d("ImageWidth", 256, 3, 4), new d("ImageLength", 257, 3, 4), new d("BitsPerSample", 258, 3), new d("Compression", 259, 3), new d("PhotometricInterpretation", 262, 3), new d("ImageDescription", 270, 2), new d("Make", 271, 2), new d("Model", 272, 2), new d("StripOffsets", 273, 3, 4), new d("Orientation", 274, 3), new d("SamplesPerPixel", 277, 3), new d("RowsPerStrip", 278, 3, 4), new d("StripByteCounts", 279, 3, 4), new d("XResolution", 282, 5), new d("YResolution", 283, 5), new d("PlanarConfiguration", 284, 3), new d("ResolutionUnit", 296, 3), new d("TransferFunction", 301, 3), new d("Software", 305, 2), new d("DateTime", 306, 2), new d("Artist", 315, 2), new d("WhitePoint", 318, 5), new d("PrimaryChromaticities", 319, 5), new d("SubIFDPointer", 330, 4), new d("JPEGInterchangeFormat", 513, 4), new d("JPEGInterchangeFormatLength", 514, 4), new d("YCbCrCoefficients", 529, 5), new d("YCbCrSubSampling", 530, 3), new d("YCbCrPositioning", 531, 3), new d("ReferenceBlackWhite", 532, 5), new d("Copyright", 33432, 2), new d("ExifIFDPointer", 34665, 4), new d("GPSInfoIFDPointer", 34853, 4), new d("SensorTopBorder", 4, 4), new d("SensorLeftBorder", 5, 4), new d("SensorBottomBorder", 6, 4), new d("SensorRightBorder", 7, 4), new d("ISO", 23, 3), new d("JpgFromRaw", 46, 7), new d("Xmp", 700, 1)};
        B = new d[]{new d("ExposureTime", 33434, 5), new d("FNumber", 33437, 5), new d("ExposureProgram", 34850, 3), new d("SpectralSensitivity", 34852, 2), new d("PhotographicSensitivity", 34855, 3), new d("OECF", 34856, 7), new d("ExifVersion", 36864, 2), new d("DateTimeOriginal", 36867, 2), new d("DateTimeDigitized", 36868, 2), new d("ComponentsConfiguration", 37121, 7), new d("CompressedBitsPerPixel", 37122, 5), new d("ShutterSpeedValue", 37377, 10), new d("ApertureValue", 37378, 5), new d("BrightnessValue", 37379, 10), new d("ExposureBiasValue", 37380, 10), new d("MaxApertureValue", 37381, 5), new d("SubjectDistance", 37382, 5), new d("MeteringMode", 37383, 3), new d("LightSource", 37384, 3), new d("Flash", 37385, 3), new d("FocalLength", 37386, 5), new d("SubjectArea", 37396, 3), new d("MakerNote", 37500, 7), new d("UserComment", 37510, 7), new d("SubSecTime", 37520, 2), new d("SubSecTimeOriginal", 37521, 2), new d("SubSecTimeDigitized", 37522, 2), new d("FlashpixVersion", 40960, 7), new d("ColorSpace", 40961, 3), new d("PixelXDimension", 40962, 3, 4), new d("PixelYDimension", 40963, 3, 4), new d("RelatedSoundFile", 40964, 2), new d("InteroperabilityIFDPointer", 40965, 4), new d("FlashEnergy", 41483, 5), new d("SpatialFrequencyResponse", 41484, 7), new d("FocalPlaneXResolution", 41486, 5), new d("FocalPlaneYResolution", 41487, 5), new d("FocalPlaneResolutionUnit", 41488, 3), new d("SubjectLocation", 41492, 3), new d("ExposureIndex", 41493, 5), new d("SensingMethod", 41495, 3), new d("FileSource", 41728, 7), new d("SceneType", 41729, 7), new d("CFAPattern", 41730, 7), new d("CustomRendered", 41985, 3), new d("ExposureMode", 41986, 3), new d("WhiteBalance", 41987, 3), new d("DigitalZoomRatio", 41988, 5), new d("FocalLengthIn35mmFilm", 41989, 3), new d("SceneCaptureType", 41990, 3), new d("GainControl", 41991, 3), new d("Contrast", 41992, 3), new d("Saturation", 41993, 3), new d("Sharpness", 41994, 3), new d("DeviceSettingDescription", 41995, 7), new d("SubjectDistanceRange", 41996, 3), new d("ImageUniqueID", 42016, 2), new d("DNGVersion", 50706, 1), new d("DefaultCropSize", 50720, 3, 4)};
        C = new d[]{new d("GPSVersionID", 0, 1), new d("GPSLatitudeRef", 1, 2), new d("GPSLatitude", 2, 5), new d("GPSLongitudeRef", 3, 2), new d("GPSLongitude", 4, 5), new d("GPSAltitudeRef", 5, 1), new d("GPSAltitude", 6, 5), new d("GPSTimeStamp", 7, 5), new d("GPSSatellites", 8, 2), new d("GPSStatus", 9, 2), new d("GPSMeasureMode", 10, 2), new d("GPSDOP", 11, 5), new d("GPSSpeedRef", 12, 2), new d("GPSSpeed", 13, 5), new d("GPSTrackRef", 14, 2), new d("GPSTrack", 15, 5), new d("GPSImgDirectionRef", 16, 2), new d("GPSImgDirection", 17, 5), new d("GPSMapDatum", 18, 2), new d("GPSDestLatitudeRef", 19, 2), new d("GPSDestLatitude", 20, 5), new d("GPSDestLongitudeRef", 21, 2), new d("GPSDestLongitude", 22, 5), new d("GPSDestBearingRef", 23, 2), new d("GPSDestBearing", 24, 5), new d("GPSDestDistanceRef", 25, 2), new d("GPSDestDistance", 26, 5), new d("GPSProcessingMethod", 27, 7), new d("GPSAreaInformation", 28, 7), new d("GPSDateStamp", 29, 2), new d("GPSDifferential", 30, 3)};
        D = new d[]{new d("InteroperabilityIndex", 1, 2)};
        E = new d[]{new d("NewSubfileType", 254, 4), new d("SubfileType", 255, 4), new d("ThumbnailImageWidth", 256, 3, 4), new d("ThumbnailImageLength", 257, 3, 4), new d("BitsPerSample", 258, 3), new d("Compression", 259, 3), new d("PhotometricInterpretation", 262, 3), new d("ImageDescription", 270, 2), new d("Make", 271, 2), new d("Model", 272, 2), new d("StripOffsets", 273, 3, 4), new d("ThumbnailOrientation", 274, 3), new d("SamplesPerPixel", 277, 3), new d("RowsPerStrip", 278, 3, 4), new d("StripByteCounts", 279, 3, 4), new d("XResolution", 282, 5), new d("YResolution", 283, 5), new d("PlanarConfiguration", 284, 3), new d("ResolutionUnit", 296, 3), new d("TransferFunction", 301, 3), new d("Software", 305, 2), new d("DateTime", 306, 2), new d("Artist", 315, 2), new d("WhitePoint", 318, 5), new d("PrimaryChromaticities", 319, 5), new d("SubIFDPointer", 330, 4), new d("JPEGInterchangeFormat", 513, 4), new d("JPEGInterchangeFormatLength", 514, 4), new d("YCbCrCoefficients", 529, 5), new d("YCbCrSubSampling", 530, 3), new d("YCbCrPositioning", 531, 3), new d("ReferenceBlackWhite", 532, 5), new d("Copyright", 33432, 2), new d("ExifIFDPointer", 34665, 4), new d("GPSInfoIFDPointer", 34853, 4), new d("DNGVersion", 50706, 1), new d("DefaultCropSize", 50720, 3, 4)};
        F = new d("StripOffsets", 273, 3);
        G = new d[]{new d("ThumbnailImage", 256, 7), new d("CameraSettingsIFDPointer", 8224, 4), new d("ImageProcessingIFDPointer", 8256, 4)};
        H = new d[]{new d("PreviewImageStart", 257, 4), new d("PreviewImageLength", 258, 4)};
        I = new d[]{new d("AspectFrame", 4371, 3)};
        J = new d[]{new d("ColorSpace", 55, 3)};
        d[] dVarArr = A;
        K = new d[][]{dVarArr, B, C, D, E, dVarArr, G, H, I, J};
        L = new d[]{new d("SubIFDPointer", 330, 4), new d("ExifIFDPointer", 34665, 4), new d("GPSInfoIFDPointer", 34853, 4), new d("InteroperabilityIFDPointer", 40965, 4), new d("CameraSettingsIFDPointer", 8224, 1), new d("ImageProcessingIFDPointer", 8256, 1)};
        new d("JPEGInterchangeFormat", 513, 4);
        new d("JPEGInterchangeFormatLength", 514, 4);
        d[][] dVarArr2 = K;
        M = new HashMap[dVarArr2.length];
        N = new HashMap[dVarArr2.length];
        O = new HashSet<>(Arrays.asList("FNumber", "DigitalZoomRatio", "ExposureTime", "SubjectDistance", "GPSTimeStamp"));
        P = new HashMap<>();
        Q = Charset.forName("US-ASCII");
        R = "Exif\u0000\u0000".getBytes(Q);
        S = "http://ns.adobe.com/xap/1.0/\u0000".getBytes(Q);
        w = new SimpleDateFormat("yyyy:MM:dd HH:mm:ss");
        w.setTimeZone(TimeZone.getTimeZone("UTC"));
        for (int i2 = 0; i2 < K.length; i2++) {
            M[i2] = new HashMap<>();
            N[i2] = new HashMap<>();
            for (d dVar : K[i2]) {
                M[i2].put(Integer.valueOf(dVar.f2120a), dVar);
                N[i2].put(dVar.f2121b, dVar);
            }
        }
        P.put(Integer.valueOf(L[0].f2120a), 5);
        P.put(Integer.valueOf(L[1].f2120a), 1);
        P.put(Integer.valueOf(L[2].f2120a), 2);
        P.put(Integer.valueOf(L[3].f2120a), 3);
        P.put(Integer.valueOf(L[4].f2120a), 7);
        P.put(Integer.valueOf(L[5].f2120a), 8);
        Pattern.compile(".*[1-9].*");
        Pattern.compile("^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$");
    }

    public ExifInterface(@NonNull String str) {
        d[][] dVarArr = K;
        this.f2101e = new HashMap[dVarArr.length];
        this.f2102f = new HashSet(dVarArr.length);
        this.f2103g = ByteOrder.BIG_ENDIAN;
        if (str != null) {
            c(str);
            return;
        }
        throw new NullPointerException("filename cannot be null");
    }

    @Nullable
    private c b(@NonNull String str) {
        if (str != null) {
            if ("ISOSpeedRatings".equals(str)) {
                boolean z2 = n;
                str = "PhotographicSensitivity";
            }
            for (int i2 = 0; i2 < K.length; i2++) {
                c cVar = this.f2101e[i2].get(str);
                if (cVar != null) {
                    return cVar;
                }
            }
            return null;
        }
        throw new NullPointerException("tag shouldn't be null");
    }

    private void c(String str) {
        FileInputStream fileInputStream;
        if (str != null) {
            this.f2099c = null;
            this.f2097a = str;
            try {
                fileInputStream = new FileInputStream(str);
                try {
                    if (a(fileInputStream.getFD())) {
                        this.f2098b = fileInputStream.getFD();
                    } else {
                        this.f2098b = null;
                    }
                    a((InputStream) fileInputStream);
                    a((Closeable) fileInputStream);
                } catch (Throwable th) {
                    th = th;
                    a((Closeable) fileInputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                fileInputStream = null;
            }
        } else {
            throw new NullPointerException("filename cannot be null");
        }
    }

    private boolean d(byte[] bArr) {
        byte[] bytes = "FUJIFILMCCD-RAW".getBytes(Charset.defaultCharset());
        for (int i2 = 0; i2 < bytes.length; i2++) {
            if (bArr[i2] != bytes[i2]) {
                return false;
            }
        }
        return true;
    }

    private boolean e(byte[] bArr) {
        b bVar = new b(bArr);
        this.f2103g = f(bVar);
        bVar.a(this.f2103g);
        short readShort = bVar.readShort();
        bVar.close();
        return readShort == 85;
    }

    private ByteOrder f(b bVar) {
        short readShort = bVar.readShort();
        if (readShort == 18761) {
            boolean z2 = n;
            return ByteOrder.LITTLE_ENDIAN;
        }
        if (readShort == 19789) {
            boolean z3 = n;
            return ByteOrder.BIG_ENDIAN;
        }
        throw new IOException("Invalid byte order: " + Integer.toHexString(readShort));
    }

    private void g(b bVar) {
        HashMap<String, c> hashMap = this.f2101e[4];
        c cVar = hashMap.get("Compression");
        if (cVar != null) {
            this.f2104h = cVar.b(this.f2103g);
            int i2 = this.f2104h;
            if (i2 != 1) {
                if (i2 == 6) {
                    a(bVar, hashMap);
                    return;
                } else if (i2 != 7) {
                    return;
                }
            }
            if (a((HashMap) hashMap)) {
                b(bVar, hashMap);
                return;
            }
            return;
        }
        this.f2104h = 6;
        a(bVar, hashMap);
    }

    @Nullable
    public String a(@NonNull String str) {
        if (str != null) {
            c b2 = b(str);
            if (b2 != null) {
                if (!O.contains(str)) {
                    return b2.c(this.f2103g);
                }
                if (str.equals("GPSTimeStamp")) {
                    int i2 = b2.f2117a;
                    if (i2 != 5 && i2 != 10) {
                        String str2 = "GPS Timestamp format is not rational. format=" + b2.f2117a;
                        return null;
                    }
                    e[] eVarArr = (e[]) b2.d(this.f2103g);
                    if (eVarArr != null && eVarArr.length == 3) {
                        return String.format("%02d:%02d:%02d", Integer.valueOf((int) (((float) eVarArr[0].f2124a) / ((float) eVarArr[0].f2125b))), Integer.valueOf((int) (((float) eVarArr[1].f2124a) / ((float) eVarArr[1].f2125b))), Integer.valueOf((int) (((float) eVarArr[2].f2124a) / ((float) eVarArr[2].f2125b))));
                    }
                    String str3 = "Invalid GPS Timestamp array. array=" + Arrays.toString(eVarArr);
                    return null;
                }
                try {
                    return Double.toString(b2.a(this.f2103g));
                } catch (NumberFormatException unused) {
                }
            }
            return null;
        }
        throw new NullPointerException("tag shouldn't be null");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b extends InputStream implements DataInput {

        /* renamed from: i, reason: collision with root package name */
        private static final ByteOrder f2111i = ByteOrder.LITTLE_ENDIAN;

        /* renamed from: j, reason: collision with root package name */
        private static final ByteOrder f2112j = ByteOrder.BIG_ENDIAN;

        /* renamed from: e, reason: collision with root package name */
        private DataInputStream f2113e;

        /* renamed from: f, reason: collision with root package name */
        private ByteOrder f2114f;

        /* renamed from: g, reason: collision with root package name */
        final int f2115g;

        /* renamed from: h, reason: collision with root package name */
        int f2116h;

        public b(InputStream inputStream) {
            this.f2114f = ByteOrder.BIG_ENDIAN;
            this.f2113e = new DataInputStream(inputStream);
            this.f2115g = this.f2113e.available();
            this.f2116h = 0;
            this.f2113e.mark(this.f2115g);
        }

        public void a(ByteOrder byteOrder) {
            this.f2114f = byteOrder;
        }

        @Override // java.io.InputStream
        public int available() {
            return this.f2113e.available();
        }

        public void h(long j2) {
            int i2 = this.f2116h;
            if (i2 > j2) {
                this.f2116h = 0;
                this.f2113e.reset();
                this.f2113e.mark(this.f2115g);
            } else {
                j2 -= i2;
            }
            int i3 = (int) j2;
            if (skipBytes(i3) != i3) {
                throw new IOException("Couldn't seek up to the byteCount");
            }
        }

        public int i() {
            return this.f2115g;
        }

        public int j() {
            return this.f2116h;
        }

        public long k() {
            return readInt() & 4294967295L;
        }

        @Override // java.io.InputStream
        public int read() {
            this.f2116h++;
            return this.f2113e.read();
        }

        @Override // java.io.DataInput
        public boolean readBoolean() {
            this.f2116h++;
            return this.f2113e.readBoolean();
        }

        @Override // java.io.DataInput
        public byte readByte() {
            this.f2116h++;
            if (this.f2116h <= this.f2115g) {
                int read = this.f2113e.read();
                if (read >= 0) {
                    return (byte) read;
                }
                throw new EOFException();
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public char readChar() {
            this.f2116h += 2;
            return this.f2113e.readChar();
        }

        @Override // java.io.DataInput
        public double readDouble() {
            return Double.longBitsToDouble(readLong());
        }

        @Override // java.io.DataInput
        public float readFloat() {
            return Float.intBitsToFloat(readInt());
        }

        @Override // java.io.DataInput
        public void readFully(byte[] bArr, int i2, int i3) {
            this.f2116h += i3;
            if (this.f2116h <= this.f2115g) {
                if (this.f2113e.read(bArr, i2, i3) != i3) {
                    throw new IOException("Couldn't read up to the length of buffer");
                }
                return;
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public int readInt() {
            this.f2116h += 4;
            if (this.f2116h <= this.f2115g) {
                int read = this.f2113e.read();
                int read2 = this.f2113e.read();
                int read3 = this.f2113e.read();
                int read4 = this.f2113e.read();
                if ((read | read2 | read3 | read4) >= 0) {
                    ByteOrder byteOrder = this.f2114f;
                    if (byteOrder == f2111i) {
                        return (read4 << 24) + (read3 << 16) + (read2 << 8) + read;
                    }
                    if (byteOrder == f2112j) {
                        return (read << 24) + (read2 << 16) + (read3 << 8) + read4;
                    }
                    throw new IOException("Invalid byte order: " + this.f2114f);
                }
                throw new EOFException();
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public String readLine() {
            return null;
        }

        @Override // java.io.DataInput
        public long readLong() {
            this.f2116h += 8;
            if (this.f2116h <= this.f2115g) {
                int read = this.f2113e.read();
                int read2 = this.f2113e.read();
                int read3 = this.f2113e.read();
                int read4 = this.f2113e.read();
                int read5 = this.f2113e.read();
                int read6 = this.f2113e.read();
                int read7 = this.f2113e.read();
                int read8 = this.f2113e.read();
                if ((read | read2 | read3 | read4 | read5 | read6 | read7 | read8) >= 0) {
                    ByteOrder byteOrder = this.f2114f;
                    if (byteOrder == f2111i) {
                        return (read8 << 56) + (read7 << 48) + (read6 << 40) + (read5 << 32) + (read4 << 24) + (read3 << 16) + (read2 << 8) + read;
                    }
                    if (byteOrder == f2112j) {
                        return (read << 56) + (read2 << 48) + (read3 << 40) + (read4 << 32) + (read5 << 24) + (read6 << 16) + (read7 << 8) + read8;
                    }
                    throw new IOException("Invalid byte order: " + this.f2114f);
                }
                throw new EOFException();
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public short readShort() {
            this.f2116h += 2;
            if (this.f2116h <= this.f2115g) {
                int read = this.f2113e.read();
                int read2 = this.f2113e.read();
                if ((read | read2) >= 0) {
                    ByteOrder byteOrder = this.f2114f;
                    if (byteOrder == f2111i) {
                        return (short) ((read2 << 8) + read);
                    }
                    if (byteOrder == f2112j) {
                        return (short) ((read << 8) + read2);
                    }
                    throw new IOException("Invalid byte order: " + this.f2114f);
                }
                throw new EOFException();
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public String readUTF() {
            this.f2116h += 2;
            return this.f2113e.readUTF();
        }

        @Override // java.io.DataInput
        public int readUnsignedByte() {
            this.f2116h++;
            return this.f2113e.readUnsignedByte();
        }

        @Override // java.io.DataInput
        public int readUnsignedShort() {
            this.f2116h += 2;
            if (this.f2116h <= this.f2115g) {
                int read = this.f2113e.read();
                int read2 = this.f2113e.read();
                if ((read | read2) >= 0) {
                    ByteOrder byteOrder = this.f2114f;
                    if (byteOrder == f2111i) {
                        return (read2 << 8) + read;
                    }
                    if (byteOrder == f2112j) {
                        return (read << 8) + read2;
                    }
                    throw new IOException("Invalid byte order: " + this.f2114f);
                }
                throw new EOFException();
            }
            throw new EOFException();
        }

        @Override // java.io.DataInput
        public int skipBytes(int i2) {
            int min = Math.min(i2, this.f2115g - this.f2116h);
            int i3 = 0;
            while (i3 < min) {
                i3 += this.f2113e.skipBytes(min - i3);
            }
            this.f2116h += i3;
            return i3;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i2, int i3) {
            int read = this.f2113e.read(bArr, i2, i3);
            this.f2116h += read;
            return read;
        }

        @Override // java.io.DataInput
        public void readFully(byte[] bArr) {
            this.f2116h += bArr.length;
            if (this.f2116h <= this.f2115g) {
                if (this.f2113e.read(bArr, 0, bArr.length) != bArr.length) {
                    throw new IOException("Couldn't read up to the length of buffer");
                }
                return;
            }
            throw new EOFException();
        }

        public b(byte[] bArr) {
            this(new ByteArrayInputStream(bArr));
        }
    }

    private void d(b bVar) {
        c cVar;
        a(bVar, bVar.available());
        b(bVar, 0);
        d(bVar, 0);
        d(bVar, 5);
        d(bVar, 4);
        b((InputStream) bVar);
        if (this.f2100d != 8 || (cVar = this.f2101e[1].get("MakerNote")) == null) {
            return;
        }
        b bVar2 = new b(cVar.f2119c);
        bVar2.a(this.f2103g);
        bVar2.h(6L);
        b(bVar2, 9);
        c cVar2 = this.f2101e[9].get("ColorSpace");
        if (cVar2 != null) {
            this.f2101e[1].put("ColorSpace", cVar2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class d {

        /* renamed from: a, reason: collision with root package name */
        public final int f2120a;

        /* renamed from: b, reason: collision with root package name */
        public final String f2121b;

        /* renamed from: c, reason: collision with root package name */
        public final int f2122c;

        /* renamed from: d, reason: collision with root package name */
        public final int f2123d;

        d(String str, int i2, int i3) {
            this.f2121b = str;
            this.f2120a = i2;
            this.f2122c = i3;
            this.f2123d = -1;
        }

        boolean a(int i2) {
            int i3;
            int i4 = this.f2122c;
            if (i4 == 7 || i2 == 7 || i4 == i2 || (i3 = this.f2123d) == i2) {
                return true;
            }
            if ((i4 == 4 || i3 == 4) && i2 == 3) {
                return true;
            }
            if ((this.f2122c == 9 || this.f2123d == 9) && i2 == 8) {
                return true;
            }
            return (this.f2122c == 12 || this.f2123d == 12) && i2 == 11;
        }

        d(String str, int i2, int i3, int i4) {
            this.f2121b = str;
            this.f2120a = i2;
            this.f2122c = i3;
            this.f2123d = i4;
        }
    }

    private void b() {
        for (int i2 = 0; i2 < this.f2101e.length; i2++) {
            String str = "The size of tag group[" + i2 + "]: " + this.f2101e[i2].size();
            for (Map.Entry<String, c> entry : this.f2101e[i2].entrySet()) {
                c value = entry.getValue();
                String str2 = "tagName: " + entry.getKey() + ", tagType: " + value.toString() + ", tagValue: '" + value.c(this.f2103g) + "'";
            }
        }
    }

    private void e(b bVar) {
        d(bVar);
        if (this.f2101e[0].get("JpgFromRaw") != null) {
            a(bVar, this.m, 5);
        }
        c cVar = this.f2101e[0].get("ISO");
        c cVar2 = this.f2101e[1].get("PhotographicSensitivity");
        if (cVar == null || cVar2 != null) {
            return;
        }
        this.f2101e[1].put("PhotographicSensitivity", cVar);
    }

    private boolean c(byte[] bArr) {
        b bVar = new b(bArr);
        this.f2103g = f(bVar);
        bVar.a(this.f2103g);
        short readShort = bVar.readShort();
        bVar.close();
        return readShort == 20306 || readShort == 21330;
    }

    private static boolean b(byte[] bArr) {
        int i2 = 0;
        while (true) {
            byte[] bArr2 = q;
            if (i2 >= bArr2.length) {
                return true;
            }
            if (bArr[i2] != bArr2[i2]) {
                return false;
            }
            i2++;
        }
    }

    private void b(b bVar) {
        d(bVar);
        c cVar = this.f2101e[1].get("MakerNote");
        if (cVar != null) {
            b bVar2 = new b(cVar.f2119c);
            bVar2.a(this.f2103g);
            byte[] bArr = new byte[u.length];
            bVar2.readFully(bArr);
            bVar2.h(0L);
            byte[] bArr2 = new byte[v.length];
            bVar2.readFully(bArr2);
            if (Arrays.equals(bArr, u)) {
                bVar2.h(8L);
            } else if (Arrays.equals(bArr2, v)) {
                bVar2.h(12L);
            }
            b(bVar2, 6);
            c cVar2 = this.f2101e[7].get("PreviewImageStart");
            c cVar3 = this.f2101e[7].get("PreviewImageLength");
            if (cVar2 != null && cVar3 != null) {
                this.f2101e[5].put("JPEGInterchangeFormat", cVar2);
                this.f2101e[5].put("JPEGInterchangeFormatLength", cVar3);
            }
            c cVar4 = this.f2101e[8].get("AspectFrame");
            if (cVar4 != null) {
                int[] iArr = (int[]) cVar4.d(this.f2103g);
                if (iArr != null && iArr.length == 4) {
                    if (iArr[2] <= iArr[0] || iArr[3] <= iArr[1]) {
                        return;
                    }
                    int i2 = (iArr[2] - iArr[0]) + 1;
                    int i3 = (iArr[3] - iArr[1]) + 1;
                    if (i2 < i3) {
                        int i4 = i2 + i3;
                        i3 = i4 - i3;
                        i2 = i4 - i3;
                    }
                    c a2 = c.a(i2, this.f2103g);
                    c a3 = c.a(i3, this.f2103g);
                    this.f2101e[0].put("ImageWidth", a2);
                    this.f2101e[0].put("ImageLength", a3);
                    return;
                }
                String str = "Invalid aspect frame values. frame=" + Arrays.toString(iArr);
            }
        }
    }

    private void c(b bVar) {
        bVar.skipBytes(84);
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[4];
        bVar.read(bArr);
        bVar.skipBytes(4);
        bVar.read(bArr2);
        int i2 = ByteBuffer.wrap(bArr).getInt();
        int i3 = ByteBuffer.wrap(bArr2).getInt();
        a(bVar, i2, 5);
        bVar.h(i3);
        bVar.a(ByteOrder.BIG_ENDIAN);
        int readInt = bVar.readInt();
        if (n) {
            String str = "numberOfDirectoryEntry: " + readInt;
        }
        for (int i4 = 0; i4 < readInt; i4++) {
            int readUnsignedShort = bVar.readUnsignedShort();
            int readUnsignedShort2 = bVar.readUnsignedShort();
            if (readUnsignedShort == F.f2120a) {
                short readShort = bVar.readShort();
                short readShort2 = bVar.readShort();
                c a2 = c.a((int) readShort, this.f2103g);
                c a3 = c.a((int) readShort2, this.f2103g);
                this.f2101e[0].put("ImageLength", a2);
                this.f2101e[0].put("ImageWidth", a3);
                if (n) {
                    String str2 = "Updated to length: " + ((int) readShort) + ", width: " + ((int) readShort2);
                    return;
                }
                return;
            }
            bVar.skipBytes(readUnsignedShort2);
        }
    }

    public int a(@NonNull String str, int i2) {
        if (str != null) {
            c b2 = b(str);
            if (b2 == null) {
                return i2;
            }
            try {
                return b2.b(this.f2103g);
            } catch (NumberFormatException unused) {
                return i2;
            }
        }
        throw new NullPointerException("tag shouldn't be null");
    }

    private void a(@NonNull InputStream inputStream) {
        if (inputStream != null) {
            for (int i2 = 0; i2 < K.length; i2++) {
                try {
                    try {
                        this.f2101e[i2] = new HashMap<>();
                    } catch (IOException unused) {
                        boolean z2 = n;
                        a();
                        if (!n) {
                            return;
                        }
                    }
                } catch (Throwable th) {
                    a();
                    if (n) {
                        b();
                    }
                    throw th;
                }
            }
            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream, 5000);
            this.f2100d = a(bufferedInputStream);
            b bVar = new b(bufferedInputStream);
            switch (this.f2100d) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 5:
                case 6:
                case 8:
                case 11:
                    d(bVar);
                    break;
                case 4:
                    a(bVar, 0, 0);
                    break;
                case 7:
                    b(bVar);
                    break;
                case 9:
                    c(bVar);
                    break;
                case 10:
                    e(bVar);
                    break;
                case 12:
                    a(bVar);
                    break;
            }
            g(bVar);
            a();
            if (!n) {
                return;
            }
            b();
            return;
        }
        throw new NullPointerException("inputstream shouldn't be null");
    }

    private void d(b bVar, int i2) {
        c a2;
        c a3;
        c cVar = this.f2101e[i2].get("DefaultCropSize");
        c cVar2 = this.f2101e[i2].get("SensorTopBorder");
        c cVar3 = this.f2101e[i2].get("SensorLeftBorder");
        c cVar4 = this.f2101e[i2].get("SensorBottomBorder");
        c cVar5 = this.f2101e[i2].get("SensorRightBorder");
        if (cVar == null) {
            if (cVar2 != null && cVar3 != null && cVar4 != null && cVar5 != null) {
                int b2 = cVar2.b(this.f2103g);
                int b3 = cVar4.b(this.f2103g);
                int b4 = cVar5.b(this.f2103g);
                int b5 = cVar3.b(this.f2103g);
                if (b3 <= b2 || b4 <= b5) {
                    return;
                }
                c a4 = c.a(b3 - b2, this.f2103g);
                c a5 = c.a(b4 - b5, this.f2103g);
                this.f2101e[i2].put("ImageLength", a4);
                this.f2101e[i2].put("ImageWidth", a5);
                return;
            }
            c(bVar, i2);
            return;
        }
        if (cVar.f2117a == 5) {
            e[] eVarArr = (e[]) cVar.d(this.f2103g);
            if (eVarArr != null && eVarArr.length == 2) {
                a2 = c.a(eVarArr[0], this.f2103g);
                a3 = c.a(eVarArr[1], this.f2103g);
            } else {
                String str = "Invalid crop size values. cropSize=" + Arrays.toString(eVarArr);
                return;
            }
        } else {
            int[] iArr = (int[]) cVar.d(this.f2103g);
            if (iArr != null && iArr.length == 2) {
                a2 = c.a(iArr[0], this.f2103g);
                a3 = c.a(iArr[1], this.f2103g);
            } else {
                String str2 = "Invalid crop size values. cropSize=" + Arrays.toString(iArr);
                return;
            }
        }
        this.f2101e[i2].put("ImageWidth", a2);
        this.f2101e[i2].put("ImageLength", a3);
    }

    private void c(b bVar, int i2) {
        c cVar;
        c cVar2 = this.f2101e[i2].get("ImageLength");
        c cVar3 = this.f2101e[i2].get("ImageWidth");
        if ((cVar2 == null || cVar3 == null) && (cVar = this.f2101e[i2].get("JPEGInterchangeFormat")) != null) {
            a(bVar, cVar.b(this.f2103g), i2);
        }
    }

    private static boolean a(FileDescriptor fileDescriptor) {
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                Os.lseek(fileDescriptor, 0L, OsConstants.SEEK_CUR);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    private int a(BufferedInputStream bufferedInputStream) {
        bufferedInputStream.mark(5000);
        byte[] bArr = new byte[5000];
        bufferedInputStream.read(bArr);
        bufferedInputStream.reset();
        if (b(bArr)) {
            return 4;
        }
        if (d(bArr)) {
            return 9;
        }
        if (a(bArr)) {
            return 12;
        }
        if (c(bArr)) {
            return 7;
        }
        return e(bArr) ? 10 : 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x026d  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x02cb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b(androidx.exifinterface.media.ExifInterface.b r28, int r29) {
        /*
            Method dump skipped, instructions count: 996
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.exifinterface.media.ExifInterface.b(androidx.exifinterface.media.ExifInterface$b, int):void");
    }

    private boolean a(byte[] bArr) {
        b bVar;
        long readInt;
        byte[] bArr2;
        b bVar2 = null;
        try {
            try {
                bVar = new b(bArr);
            } catch (Exception unused) {
            }
        } catch (Throwable th) {
            th = th;
            bVar = bVar2;
        }
        try {
            bVar.a(ByteOrder.BIG_ENDIAN);
            readInt = bVar.readInt();
            bArr2 = new byte[4];
            bVar.read(bArr2);
        } catch (Exception unused2) {
            bVar2 = bVar;
            boolean z2 = n;
            if (bVar2 != null) {
                bVar2.close();
            }
            return false;
        } catch (Throwable th2) {
            th = th2;
            if (bVar != null) {
                bVar.close();
            }
            throw th;
        }
        if (!Arrays.equals(bArr2, r)) {
            bVar.close();
            return false;
        }
        long j2 = 16;
        if (readInt == 1) {
            readInt = bVar.readLong();
            if (readInt < 16) {
                bVar.close();
                return false;
            }
        } else {
            j2 = 8;
        }
        if (readInt > bArr.length) {
            readInt = bArr.length;
        }
        long j3 = readInt - j2;
        if (j3 < 8) {
            bVar.close();
            return false;
        }
        byte[] bArr3 = new byte[4];
        boolean z3 = false;
        boolean z4 = false;
        for (long j4 = 0; j4 < j3 / 4; j4++) {
            if (bVar.read(bArr3) != bArr3.length) {
                bVar.close();
                return false;
            }
            if (j4 != 1) {
                if (Arrays.equals(bArr3, s)) {
                    z3 = true;
                } else if (Arrays.equals(bArr3, t)) {
                    z4 = true;
                }
                if (z3 && z4) {
                    bVar.close();
                    return true;
                }
            }
        }
        bVar.close();
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x018c, code lost:
    
        r18.a(r17.f2103g);
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0191, code lost:
    
        return;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:30:0x00af. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0178 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00b4 A[FALL_THROUGH] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(androidx.exifinterface.media.ExifInterface.b r18, int r19, int r20) {
        /*
            Method dump skipped, instructions count: 530
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.exifinterface.media.ExifInterface.a(androidx.exifinterface.media.ExifInterface$b, int, int):void");
    }

    private void a(b bVar) {
        String str;
        String str2;
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            if (Build.VERSION.SDK_INT >= 23) {
                mediaMetadataRetriever.setDataSource(new a(this, bVar));
            } else if (this.f2098b != null) {
                mediaMetadataRetriever.setDataSource(this.f2098b);
            } else if (this.f2097a == null) {
                return;
            } else {
                mediaMetadataRetriever.setDataSource(this.f2097a);
            }
            String extractMetadata = mediaMetadataRetriever.extractMetadata(33);
            String extractMetadata2 = mediaMetadataRetriever.extractMetadata(34);
            String extractMetadata3 = mediaMetadataRetriever.extractMetadata(26);
            String extractMetadata4 = mediaMetadataRetriever.extractMetadata(17);
            String str3 = null;
            if ("yes".equals(extractMetadata3)) {
                str3 = mediaMetadataRetriever.extractMetadata(29);
                str = mediaMetadataRetriever.extractMetadata(30);
                str2 = mediaMetadataRetriever.extractMetadata(31);
            } else if ("yes".equals(extractMetadata4)) {
                str3 = mediaMetadataRetriever.extractMetadata(18);
                str = mediaMetadataRetriever.extractMetadata(19);
                str2 = mediaMetadataRetriever.extractMetadata(24);
            } else {
                str = null;
                str2 = null;
            }
            if (str3 != null) {
                this.f2101e[0].put("ImageWidth", c.a(Integer.parseInt(str3), this.f2103g));
            }
            if (str != null) {
                this.f2101e[0].put("ImageLength", c.a(Integer.parseInt(str), this.f2103g));
            }
            if (str2 != null) {
                int i2 = 1;
                int parseInt = Integer.parseInt(str2);
                if (parseInt == 90) {
                    i2 = 6;
                } else if (parseInt == 180) {
                    i2 = 3;
                } else if (parseInt == 270) {
                    i2 = 8;
                }
                this.f2101e[0].put("Orientation", c.a(i2, this.f2103g));
            }
            if (extractMetadata != null && extractMetadata2 != null) {
                int parseInt2 = Integer.parseInt(extractMetadata);
                int parseInt3 = Integer.parseInt(extractMetadata2);
                if (parseInt3 > 6) {
                    bVar.h(parseInt2);
                    byte[] bArr = new byte[6];
                    if (bVar.read(bArr) == 6) {
                        int i3 = parseInt3 - 6;
                        if (Arrays.equals(bArr, R)) {
                            byte[] bArr2 = new byte[i3];
                            if (bVar.read(bArr2) == i3) {
                                a(bArr2, 0);
                            } else {
                                throw new IOException("Can't read exif");
                            }
                        } else {
                            throw new IOException("Invalid identifier");
                        }
                    } else {
                        throw new IOException("Can't read identifier");
                    }
                } else {
                    throw new IOException("Invalid exif length");
                }
            }
            if (n) {
                String str4 = "Heif meta: " + str3 + "x" + str + ", rotation " + str2;
            }
        } finally {
            mediaMetadataRetriever.release();
        }
    }

    private void b(b bVar, HashMap hashMap) {
        c cVar = (c) hashMap.get("StripOffsets");
        c cVar2 = (c) hashMap.get("StripByteCounts");
        if (cVar == null || cVar2 == null) {
            return;
        }
        long[] a2 = a(cVar.d(this.f2103g));
        long[] a3 = a(cVar2.d(this.f2103g));
        if (a2 == null || a3 == null) {
            return;
        }
        long j2 = 0;
        for (long j3 : a3) {
            j2 += j3;
        }
        byte[] bArr = new byte[(int) j2];
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < a2.length; i4++) {
            int i5 = (int) a2[i4];
            int i6 = (int) a3[i4];
            int i7 = i5 - i2;
            bVar.h(i7);
            int i8 = i2 + i7;
            byte[] bArr2 = new byte[i6];
            bVar.read(bArr2);
            i2 = i8 + i6;
            System.arraycopy(bArr2, 0, bArr, i3, bArr2.length);
            i3 += bArr2.length;
        }
    }

    private void a(byte[] bArr, int i2) {
        b bVar = new b(bArr);
        a(bVar, bArr.length);
        b(bVar, i2);
    }

    private boolean b(HashMap hashMap) {
        c cVar = (c) hashMap.get("ImageLength");
        c cVar2 = (c) hashMap.get("ImageWidth");
        if (cVar == null || cVar2 == null) {
            return false;
        }
        return cVar.b(this.f2103g) <= 512 && cVar2.b(this.f2103g) <= 512;
    }

    private void a() {
        String a2 = a("DateTimeOriginal");
        if (a2 != null && a("DateTime") == null) {
            this.f2101e[0].put("DateTime", c.a(a2));
        }
        if (a("ImageWidth") == null) {
            this.f2101e[0].put("ImageWidth", c.a(0L, this.f2103g));
        }
        if (a("ImageLength") == null) {
            this.f2101e[0].put("ImageLength", c.a(0L, this.f2103g));
        }
        if (a("Orientation") == null) {
            this.f2101e[0].put("Orientation", c.a(0L, this.f2103g));
        }
        if (a("LightSource") == null) {
            this.f2101e[1].put("LightSource", c.a(0L, this.f2103g));
        }
    }

    private void b(InputStream inputStream) {
        a(0, 5);
        a(0, 4);
        a(5, 4);
        c cVar = this.f2101e[1].get("PixelXDimension");
        c cVar2 = this.f2101e[1].get("PixelYDimension");
        if (cVar != null && cVar2 != null) {
            this.f2101e[0].put("ImageWidth", cVar);
            this.f2101e[0].put("ImageLength", cVar2);
        }
        if (this.f2101e[4].isEmpty() && b(this.f2101e[5])) {
            HashMap<String, c>[] hashMapArr = this.f2101e;
            hashMapArr[4] = hashMapArr[5];
            hashMapArr[5] = new HashMap<>();
        }
        b(this.f2101e[4]);
    }

    private void a(b bVar, int i2) {
        this.f2103g = f(bVar);
        bVar.a(this.f2103g);
        int readUnsignedShort = bVar.readUnsignedShort();
        int i3 = this.f2100d;
        if (i3 != 7 && i3 != 10 && readUnsignedShort != 42) {
            throw new IOException("Invalid start code: " + Integer.toHexString(readUnsignedShort));
        }
        int readInt = bVar.readInt();
        if (readInt >= 8 && readInt < i2) {
            int i4 = readInt - 8;
            if (i4 <= 0 || bVar.skipBytes(i4) == i4) {
                return;
            }
            throw new IOException("Couldn't jump to first Ifd: " + i4);
        }
        throw new IOException("Invalid first Ifd offset: " + readInt);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(androidx.exifinterface.media.ExifInterface.b r4, java.util.HashMap r5) {
        /*
            r3 = this;
            java.lang.String r0 = "JPEGInterchangeFormat"
            java.lang.Object r0 = r5.get(r0)
            androidx.exifinterface.media.ExifInterface$c r0 = (androidx.exifinterface.media.ExifInterface.c) r0
            java.lang.String r1 = "JPEGInterchangeFormatLength"
            java.lang.Object r5 = r5.get(r1)
            androidx.exifinterface.media.ExifInterface$c r5 = (androidx.exifinterface.media.ExifInterface.c) r5
            if (r0 == 0) goto L75
            if (r5 == 0) goto L75
            java.nio.ByteOrder r1 = r3.f2103g
            int r0 = r0.b(r1)
            java.nio.ByteOrder r1 = r3.f2103g
            int r5 = r5.b(r1)
            int r1 = r4.i()
            int r1 = r1 - r0
            int r5 = java.lang.Math.min(r5, r1)
            int r1 = r3.f2100d
            r2 = 4
            if (r1 == r2) goto L3d
            r2 = 9
            if (r1 == r2) goto L3d
            r2 = 10
            if (r1 != r2) goto L37
            goto L3d
        L37:
            r2 = 7
            if (r1 != r2) goto L40
            int r1 = r3.f2106j
            goto L3f
        L3d:
            int r1 = r3.f2105i
        L3f:
            int r0 = r0 + r1
        L40:
            boolean r1 = androidx.exifinterface.media.ExifInterface.n
            if (r1 == 0) goto L5c
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Setting thumbnail attributes with offset: "
            r1.append(r2)
            r1.append(r0)
            java.lang.String r2 = ", length: "
            r1.append(r2)
            r1.append(r5)
            r1.toString()
        L5c:
            if (r0 <= 0) goto L75
            if (r5 <= 0) goto L75
            java.lang.String r1 = r3.f2097a
            if (r1 != 0) goto L75
            android.content.res.AssetManager$AssetInputStream r1 = r3.f2099c
            if (r1 != 0) goto L75
            java.io.FileDescriptor r1 = r3.f2098b
            if (r1 != 0) goto L75
            byte[] r5 = new byte[r5]
            long r0 = (long) r0
            r4.h(r0)
            r4.readFully(r5)
        L75:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.exifinterface.media.ExifInterface.a(androidx.exifinterface.media.ExifInterface$b, java.util.HashMap):void");
    }

    private boolean a(HashMap hashMap) {
        c cVar;
        int b2;
        c cVar2 = (c) hashMap.get("BitsPerSample");
        if (cVar2 != null) {
            int[] iArr = (int[]) cVar2.d(this.f2103g);
            if (Arrays.equals(o, iArr)) {
                return true;
            }
            if (this.f2100d == 3 && (cVar = (c) hashMap.get("PhotometricInterpretation")) != null && (((b2 = cVar.b(this.f2103g)) == 1 && Arrays.equals(iArr, p)) || (b2 == 6 && Arrays.equals(iArr, o)))) {
                return true;
            }
        }
        boolean z2 = n;
        return false;
    }

    private void a(int i2, int i3) {
        if (!this.f2101e[i2].isEmpty() && !this.f2101e[i3].isEmpty()) {
            c cVar = this.f2101e[i2].get("ImageLength");
            c cVar2 = this.f2101e[i2].get("ImageWidth");
            c cVar3 = this.f2101e[i3].get("ImageLength");
            c cVar4 = this.f2101e[i3].get("ImageWidth");
            if (cVar == null || cVar2 == null) {
                boolean z2 = n;
                return;
            }
            if (cVar3 != null && cVar4 != null) {
                int b2 = cVar.b(this.f2103g);
                int b3 = cVar2.b(this.f2103g);
                int b4 = cVar3.b(this.f2103g);
                int b5 = cVar4.b(this.f2103g);
                if (b2 >= b4 || b3 >= b5) {
                    return;
                }
                HashMap<String, c>[] hashMapArr = this.f2101e;
                HashMap<String, c> hashMap = hashMapArr[i2];
                hashMapArr[i2] = hashMapArr[i3];
                hashMapArr[i3] = hashMap;
                return;
            }
            boolean z3 = n;
            return;
        }
        boolean z4 = n;
    }

    private static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception unused) {
            }
        }
    }

    private static long[] a(Object obj) {
        if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            long[] jArr = new long[iArr.length];
            for (int i2 = 0; i2 < iArr.length; i2++) {
                jArr[i2] = iArr[i2];
            }
            return jArr;
        }
        if (obj instanceof long[]) {
            return (long[]) obj;
        }
        return null;
    }

    private static boolean a(byte[] bArr, byte[] bArr2) {
        if (bArr == null || bArr2 == null || bArr.length < bArr2.length) {
            return false;
        }
        for (int i2 = 0; i2 < bArr2.length; i2++) {
            if (bArr[i2] != bArr2[i2]) {
                return false;
            }
        }
        return true;
    }
}
