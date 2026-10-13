package com.facebook.drawee.backends.pipeline.info;

/* compiled from: ImageOriginUtils.java */
/* loaded from: classes.dex */
public class d {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int a(String str) {
        char c2;
        switch (str.hashCode()) {
            case -1914072202:
                if (str.equals("BitmapMemoryCacheGetProducer")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case -1683996557:
                if (str.equals("LocalResourceFetchProducer")) {
                    c2 = 7;
                    break;
                }
                c2 = 65535;
                break;
            case -1579985851:
                if (str.equals("LocalFileFetchProducer")) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            case -1307634203:
                if (str.equals("EncodedMemoryCacheProducer")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case -1224383234:
                if (str.equals("NetworkFetchProducer")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 656304759:
                if (str.equals("DiskCacheProducer")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 957714404:
                if (str.equals("BitmapMemoryCacheProducer")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 1019542023:
                if (str.equals("LocalAssetFetchProducer")) {
                    c2 = '\b';
                    break;
                }
                c2 = 65535;
                break;
            case 1721672898:
                if (str.equals("DataFetchProducer")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case 1793127518:
                if (str.equals("LocalContentUriThumbnailFetchProducer")) {
                    c2 = '\n';
                    break;
                }
                c2 = 65535;
                break;
            case 2113652014:
                if (str.equals("LocalContentUriFetchProducer")) {
                    c2 = '\t';
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
            case 0:
            case 1:
                return 5;
            case 2:
                return 4;
            case 3:
                return 3;
            case 4:
                return 2;
            case 5:
            case 6:
            case 7:
            case '\b':
            case '\t':
            case '\n':
                return 6;
            default:
                return 1;
        }
    }

    public static String a(int i2) {
        return i2 != 2 ? i2 != 3 ? i2 != 4 ? i2 != 5 ? i2 != 6 ? "unknown" : "local" : "memory_bitmap" : "memory_encoded" : "disk" : "network";
    }
}
