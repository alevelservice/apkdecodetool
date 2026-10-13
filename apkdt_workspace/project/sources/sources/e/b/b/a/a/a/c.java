package e.b.b.a.a.a;

import java.io.Serializable;

/* compiled from: Level.java */
/* loaded from: classes.dex */
public class c implements Serializable {
    public static final int OFF_INT = 5000;
    public static final int VERBOSE_INT = 5000;
    private static final long serialVersionUID = -814092767334282137L;
    public int levelInt;
    public String levelStr;
    public int loggerLevel;
    public static final int ERROR_INT = 40000;
    public static final c ERROR = new c(ERROR_INT, "E");
    public static final int WARN_INT = 30000;
    public static final c WARN = new c(WARN_INT, "W");
    public static final int INFO_INT = 20000;
    public static final c INFO = new c(INFO_INT, "I");
    public static final int DEBUG_INT = 10000;
    public static final c DEBUG = new c(DEBUG_INT, "D");
    public static final c VERBOSE = new c(5000, "V");
    public static final c OFF = new c(5000, "OFF");
    public static final int ALL_INT = Integer.MIN_VALUE;
    public static final c ALL = new c(ALL_INT, "ALL");
    public static final c LOGGER_HIGH = new c(1);
    public static final c LOGGER_MEDIUM = new c(2);
    public static final c LOGGER_LOW = new c(3);

    public c(int i2) {
        this.loggerLevel = -1;
        this.loggerLevel = i2;
    }

    public static c toLevel(String str) {
        return toLevel(str, DEBUG);
    }

    public static c valueOf(String str) {
        return toLevel(str, DEBUG);
    }

    public boolean isGreaterOrEqual(c cVar) {
        return this.levelInt >= cVar.levelInt;
    }

    public int toInt() {
        return this.levelInt;
    }

    public String toString() {
        return this.levelStr;
    }

    public static c toLevel(int i2) {
        return toLevel(i2, DEBUG);
    }

    public static c toLevel(int i2, c cVar) {
        if (i2 == 5000) {
            return VERBOSE;
        }
        if (i2 == 10000) {
            return DEBUG;
        }
        if (i2 == 20000) {
            return INFO;
        }
        if (i2 != 30000) {
            return i2 != 40000 ? cVar : ERROR;
        }
        return WARN;
    }

    private c(int i2, String str) {
        this.loggerLevel = -1;
        this.levelInt = i2;
        this.levelStr = str;
    }

    public static c toLevel(String str, c cVar) {
        if (str == null) {
            return cVar;
        }
        if (str.equalsIgnoreCase("ALL")) {
            return ALL;
        }
        if (str.equalsIgnoreCase("TRACE")) {
            return VERBOSE;
        }
        if (str.equalsIgnoreCase("DEBUG")) {
            return DEBUG;
        }
        if (str.equalsIgnoreCase("INFO")) {
            return INFO;
        }
        if (str.equalsIgnoreCase("WARN")) {
            return WARN;
        }
        if (str.equalsIgnoreCase("ERROR")) {
            return ERROR;
        }
        return str.equalsIgnoreCase("OFF") ? OFF : cVar;
    }
}
