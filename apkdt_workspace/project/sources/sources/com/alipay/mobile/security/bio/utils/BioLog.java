package com.alipay.mobile.security.bio.utils;

import android.util.Log;

/* loaded from: classes.dex */
public final class BioLog {
    public static final String DIAGNOSE = "diagnose";
    private static final String TAG = "BIOLOGY";
    private static final String TAG_PREFIX = "BIOLOGY_";
    private static Logger sTargetLogger = new AndroidLogger();

    /* loaded from: classes.dex */
    private static final class AndroidLogger extends Logger {
        private AndroidLogger() {
        }

        @Override // com.alipay.mobile.security.bio.utils.Logger
        public int debug(String str, String str2) {
            return Log.d(str, str2);
        }

        @Override // com.alipay.mobile.security.bio.utils.Logger
        public int error(String str, String str2) {
            return Log.e(str, str2);
        }

        @Override // com.alipay.mobile.security.bio.utils.Logger
        protected String getStackTraceString(Throwable th) {
            return Log.getStackTraceString(th);
        }

        @Override // com.alipay.mobile.security.bio.utils.Logger
        public int info(String str, String str2) {
            return Log.i(str, str2);
        }

        @Override // com.alipay.mobile.security.bio.utils.Logger
        public int verbose(String str, String str2) {
            return Log.v(str, str2);
        }

        @Override // com.alipay.mobile.security.bio.utils.Logger
        public int warn(String str, String str2) {
            return Log.w(str, str2);
        }
    }

    private BioLog() {
    }

    public static void d(String str) {
        sTargetLogger.d("BIOLOGY", str);
    }

    public static void e(String str) {
        sTargetLogger.e("BIOLOGY", str);
    }

    public static void i(String str) {
        sTargetLogger.i("BIOLOGY", str);
    }

    public static void setLogger(Logger logger) {
        sTargetLogger = logger;
    }

    public static void v(String str) {
        sTargetLogger.v("BIOLOGY", str);
    }

    public static void w(String str) {
        sTargetLogger.w("BIOLOGY", str);
    }

    public static void d(String str, String str2) {
        sTargetLogger.d(TAG_PREFIX + str, str2);
    }

    public static void e(String str, String str2) {
        sTargetLogger.e(TAG_PREFIX + str, str2);
    }

    public static void i(String str, String str2) {
        sTargetLogger.i(TAG_PREFIX + str, str2);
    }

    public static void v(String str, String str2) {
        sTargetLogger.v(TAG_PREFIX + str, str2);
    }

    public static void w(String str, String str2) {
        sTargetLogger.w(TAG_PREFIX + str, str2);
    }

    public static void e(Throwable th) {
        sTargetLogger.e("BIOLOGY", th);
    }

    public static void w(Throwable th) {
        sTargetLogger.w("BIOLOGY", th);
    }

    public static void e(String str, Throwable th) {
        sTargetLogger.e(TAG_PREFIX + str, th);
    }

    public static void w(String str, Throwable th) {
        sTargetLogger.w(TAG_PREFIX + str, th);
    }

    public static void e(String str, String str2, Throwable th) {
        sTargetLogger.e(TAG_PREFIX + str, str2, th);
    }

    public static void w(String str, String str2, Throwable th) {
        sTargetLogger.w(TAG_PREFIX + str, str2, th);
    }
}
