package com.alibaba.fastjson.a;

import com.ap.zoloz.hummer.biz.HummerConstants;

/* compiled from: JSONToken.java */
/* loaded from: classes.dex */
public class g {
    public static String a(int i2) {
        switch (i2) {
            case 1:
                return HummerConstants.HUMMER_ERROR;
            case 2:
                return "int";
            case 3:
                return "float";
            case 4:
                return "string";
            case 5:
                return "iso8601";
            case 6:
                return "true";
            case 7:
                return "false";
            case 8:
                return "null";
            case 9:
                return "new";
            case 10:
                return "(";
            case 11:
                return ")";
            case 12:
                return "{";
            case 13:
                return "}";
            case 14:
                return "[";
            case 15:
                return "]";
            case 16:
                return ",";
            case 17:
                return ":";
            case 18:
                return "ident";
            case 19:
            default:
                return "Unknown";
            case 20:
                return "EOF";
            case 21:
                return "Set";
            case 22:
                return "TreeSet";
            case 23:
                return "undefined";
        }
    }
}
