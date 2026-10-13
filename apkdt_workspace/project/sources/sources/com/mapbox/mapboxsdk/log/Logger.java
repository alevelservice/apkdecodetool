package com.mapbox.mapboxsdk.log;

import androidx.annotation.Keep;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Keep
/* loaded from: classes2.dex */
public final class Logger {
    public static final int DEBUG = 3;
    public static final int ERROR = 6;
    public static final int INFO = 4;
    public static final int NONE = 99;
    public static final int VERBOSE = 2;
    public static final int WARN = 5;
    private static int logLevel;
    private static final com.mapbox.mapboxsdk.log.a DEFAULT = new a();
    private static volatile com.mapbox.mapboxsdk.log.a logger = DEFAULT;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface LogLevel {
    }

    /* loaded from: classes2.dex */
    static class a implements com.mapbox.mapboxsdk.log.a {
        a() {
        }

        @Override // com.mapbox.mapboxsdk.log.a
        public void a(String str, String str2) {
        }

        @Override // com.mapbox.mapboxsdk.log.a
        public void a(String str, String str2, Throwable th) {
        }

        @Override // com.mapbox.mapboxsdk.log.a
        public void b(String str, String str2) {
        }

        @Override // com.mapbox.mapboxsdk.log.a
        public void b(String str, String str2, Throwable th) {
        }

        @Override // com.mapbox.mapboxsdk.log.a
        public void c(String str, String str2) {
        }

        @Override // com.mapbox.mapboxsdk.log.a
        public void c(String str, String str2, Throwable th) {
        }

        @Override // com.mapbox.mapboxsdk.log.a
        public void d(String str, String str2) {
        }

        @Override // com.mapbox.mapboxsdk.log.a
        public void d(String str, String str2, Throwable th) {
        }

        @Override // com.mapbox.mapboxsdk.log.a
        public void e(String str, String str2) {
        }

        @Override // com.mapbox.mapboxsdk.log.a
        public void e(String str, String str2, Throwable th) {
        }
    }

    public static void d(String str, String str2) {
        if (logLevel <= 3) {
            logger.b(str, str2);
        }
    }

    public static void e(String str, String str2) {
        if (logLevel <= 6) {
            logger.a(str, str2);
        }
    }

    public static void i(String str, String str2) {
        if (logLevel <= 4) {
            logger.e(str, str2);
        }
    }

    public static void log(int i2, String str, String str2) {
        if (i2 == 2) {
            v(str, str2);
            return;
        }
        if (i2 == 3) {
            d(str, str2);
            return;
        }
        if (i2 == 4) {
            i(str, str2);
        } else if (i2 == 5) {
            w(str, str2);
        } else {
            if (i2 == 6) {
                e(str, str2);
                return;
            }
            throw new UnsupportedOperationException();
        }
    }

    public static void setLoggerDefinition(com.mapbox.mapboxsdk.log.a aVar) {
        logger = aVar;
    }

    public static void setVerbosity(int i2) {
        logLevel = i2;
    }

    public static void v(String str, String str2) {
        if (logLevel <= 2) {
            logger.d(str, str2);
        }
    }

    public static void w(String str, String str2) {
        if (logLevel <= 5) {
            logger.c(str, str2);
        }
    }

    public static void d(String str, String str2, Throwable th) {
        if (logLevel <= 3) {
            logger.c(str, str2, th);
        }
    }

    public static void e(String str, String str2, Throwable th) {
        if (logLevel <= 6) {
            logger.b(str, str2, th);
        }
    }

    public static void i(String str, String str2, Throwable th) {
        if (logLevel <= 4) {
            logger.e(str, str2, th);
        }
    }

    public static void v(String str, String str2, Throwable th) {
        if (logLevel <= 2) {
            logger.d(str, str2, th);
        }
    }

    public static void w(String str, String str2, Throwable th) {
        if (logLevel <= 5) {
            logger.a(str, str2, th);
        }
    }
}
