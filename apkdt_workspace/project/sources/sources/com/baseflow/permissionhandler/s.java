package com.baseflow.permissionhandler;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.os.Build;
import androidx.annotation.RequiresApi;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* compiled from: PermissionUtils.java */
/* loaded from: classes.dex */
public class s {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int a(String str) {
        char c2;
        switch (str.hashCode()) {
            case -2062386608:
                if (str.equals("android.permission.READ_SMS")) {
                    c2 = 20;
                    break;
                }
                c2 = 65535;
                break;
            case -1928411001:
                if (str.equals("android.permission.READ_CALENDAR")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case -1921431796:
                if (str.equals("android.permission.READ_CALL_LOG")) {
                    c2 = '\f';
                    break;
                }
                c2 = 65535;
                break;
            case -1888586689:
                if (str.equals("android.permission.ACCESS_FINE_LOCATION")) {
                    c2 = '\b';
                    break;
                }
                c2 = 65535;
                break;
            case -1479758289:
                if (str.equals("android.permission.RECEIVE_WAP_PUSH")) {
                    c2 = 21;
                    break;
                }
                c2 = 65535;
                break;
            case -1238066820:
                if (str.equals("android.permission.BODY_SENSORS")) {
                    c2 = 17;
                    break;
                }
                c2 = 65535;
                break;
            case -901151997:
                if (str.equals("android.permission.BIND_CALL_REDIRECTION_SERVICE")) {
                    c2 = 16;
                    break;
                }
                c2 = 65535;
                break;
            case -895679497:
                if (str.equals("android.permission.RECEIVE_MMS")) {
                    c2 = 22;
                    break;
                }
                c2 = 65535;
                break;
            case -895673731:
                if (str.equals("android.permission.RECEIVE_SMS")) {
                    c2 = 19;
                    break;
                }
                c2 = 65535;
                break;
            case -406040016:
                if (str.equals("android.permission.READ_EXTERNAL_STORAGE")) {
                    c2 = 23;
                    break;
                }
                c2 = 65535;
                break;
            case -63024214:
                if (str.equals("android.permission.ACCESS_COARSE_LOCATION")) {
                    c2 = 7;
                    break;
                }
                c2 = 65535;
                break;
            case -5573545:
                if (str.equals("android.permission.READ_PHONE_STATE")) {
                    c2 = '\n';
                    break;
                }
                c2 = 65535;
                break;
            case 52602690:
                if (str.equals("android.permission.SEND_SMS")) {
                    c2 = 18;
                    break;
                }
                c2 = 65535;
                break;
            case 112197485:
                if (str.equals("android.permission.CALL_PHONE")) {
                    c2 = 11;
                    break;
                }
                c2 = 65535;
                break;
            case 214526995:
                if (str.equals("android.permission.WRITE_CONTACTS")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 463403621:
                if (str.equals("android.permission.CAMERA")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 603653886:
                if (str.equals("android.permission.WRITE_CALENDAR")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 610633091:
                if (str.equals("android.permission.WRITE_CALL_LOG")) {
                    c2 = '\r';
                    break;
                }
                c2 = 65535;
                break;
            case 784519842:
                if (str.equals("android.permission.USE_SIP")) {
                    c2 = 15;
                    break;
                }
                c2 = 65535;
                break;
            case 1271781903:
                if (str.equals("android.permission.GET_ACCOUNTS")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case 1365911975:
                if (str.equals("android.permission.WRITE_EXTERNAL_STORAGE")) {
                    c2 = 24;
                    break;
                }
                c2 = 65535;
                break;
            case 1780337063:
                if (str.equals("android.permission.ACTIVITY_RECOGNITION")) {
                    c2 = 26;
                    break;
                }
                c2 = 65535;
                break;
            case 1831139720:
                if (str.equals("android.permission.RECORD_AUDIO")) {
                    c2 = '\t';
                    break;
                }
                c2 = 65535;
                break;
            case 1977429404:
                if (str.equals("android.permission.READ_CONTACTS")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 2024715147:
                if (str.equals("android.permission.ACCESS_BACKGROUND_LOCATION")) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            case 2114579147:
                if (str.equals("android.permission.ACCESS_MEDIA_LOCATION")) {
                    c2 = 25;
                    break;
                }
                c2 = 65535;
                break;
            case 2133799037:
                if (str.equals("com.android.voicemail.permission.ADD_VOICEMAIL")) {
                    c2 = 14;
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
                return 0;
            case 2:
                return 1;
            case 3:
            case 4:
            case 5:
                return 2;
            case 6:
                return 4;
            case 7:
            case '\b':
                return 3;
            case '\t':
                return 7;
            case '\n':
            case 11:
            case '\f':
            case '\r':
            case 14:
            case 15:
            case 16:
                return 8;
            case 17:
                return 11;
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
                return 12;
            case 23:
            case 24:
                return 14;
            case 25:
                return 17;
            case 26:
                return 18;
            default:
                return 19;
        }
    }

    @RequiresApi(api = 23)
    static boolean b(Activity activity, String str) {
        return a((Context) activity, str) && !androidx.core.app.a.a(activity, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static List<String> a(Context context, int i2) {
        ArrayList arrayList = new ArrayList();
        switch (i2) {
            case 0:
                if (a(context, (ArrayList<String>) arrayList, "android.permission.READ_CALENDAR")) {
                    arrayList.add("android.permission.READ_CALENDAR");
                }
                if (a(context, (ArrayList<String>) arrayList, "android.permission.WRITE_CALENDAR")) {
                    arrayList.add("android.permission.WRITE_CALENDAR");
                }
                return arrayList;
            case 1:
                if (a(context, (ArrayList<String>) arrayList, "android.permission.CAMERA")) {
                    arrayList.add("android.permission.CAMERA");
                }
                return arrayList;
            case 2:
                if (a(context, (ArrayList<String>) arrayList, "android.permission.READ_CONTACTS")) {
                    arrayList.add("android.permission.READ_CONTACTS");
                }
                if (a(context, (ArrayList<String>) arrayList, "android.permission.WRITE_CONTACTS")) {
                    arrayList.add("android.permission.WRITE_CONTACTS");
                }
                if (a(context, (ArrayList<String>) arrayList, "android.permission.GET_ACCOUNTS")) {
                    arrayList.add("android.permission.GET_ACCOUNTS");
                }
                return arrayList;
            case 3:
            case 5:
                break;
            case 4:
                if (Build.VERSION.SDK_INT >= 29 && a(context, (ArrayList<String>) arrayList, "android.permission.ACCESS_BACKGROUND_LOCATION")) {
                    arrayList.add("android.permission.ACCESS_BACKGROUND_LOCATION");
                    break;
                }
                break;
            case 6:
            case 9:
            case 10:
            case 16:
            case 19:
                return null;
            case 7:
            case 13:
                if (a(context, (ArrayList<String>) arrayList, "android.permission.RECORD_AUDIO")) {
                    arrayList.add("android.permission.RECORD_AUDIO");
                }
                return arrayList;
            case 8:
                if (a(context, (ArrayList<String>) arrayList, "android.permission.READ_PHONE_STATE")) {
                    arrayList.add("android.permission.READ_PHONE_STATE");
                }
                if (a(context, (ArrayList<String>) arrayList, "android.permission.CALL_PHONE")) {
                    arrayList.add("android.permission.CALL_PHONE");
                }
                if (a(context, (ArrayList<String>) arrayList, "android.permission.READ_CALL_LOG")) {
                    arrayList.add("android.permission.READ_CALL_LOG");
                }
                if (a(context, (ArrayList<String>) arrayList, "android.permission.WRITE_CALL_LOG")) {
                    arrayList.add("android.permission.WRITE_CALL_LOG");
                }
                if (a(context, (ArrayList<String>) arrayList, "com.android.voicemail.permission.ADD_VOICEMAIL")) {
                    arrayList.add("com.android.voicemail.permission.ADD_VOICEMAIL");
                }
                if (a(context, (ArrayList<String>) arrayList, "android.permission.USE_SIP")) {
                    arrayList.add("android.permission.USE_SIP");
                }
                if (Build.VERSION.SDK_INT >= 29 && a(context, (ArrayList<String>) arrayList, "android.permission.BIND_CALL_REDIRECTION_SERVICE")) {
                    arrayList.add("android.permission.BIND_CALL_REDIRECTION_SERVICE");
                }
                if (Build.VERSION.SDK_INT >= 26 && a(context, (ArrayList<String>) arrayList, "android.permission.ANSWER_PHONE_CALLS")) {
                    arrayList.add("android.permission.ANSWER_PHONE_CALLS");
                }
                return arrayList;
            case 11:
                if (Build.VERSION.SDK_INT >= 20 && a(context, (ArrayList<String>) arrayList, "android.permission.BODY_SENSORS")) {
                    arrayList.add("android.permission.BODY_SENSORS");
                }
                return arrayList;
            case 12:
                if (a(context, (ArrayList<String>) arrayList, "android.permission.SEND_SMS")) {
                    arrayList.add("android.permission.SEND_SMS");
                }
                if (a(context, (ArrayList<String>) arrayList, "android.permission.RECEIVE_SMS")) {
                    arrayList.add("android.permission.RECEIVE_SMS");
                }
                if (a(context, (ArrayList<String>) arrayList, "android.permission.READ_SMS")) {
                    arrayList.add("android.permission.READ_SMS");
                }
                if (a(context, (ArrayList<String>) arrayList, "android.permission.RECEIVE_WAP_PUSH")) {
                    arrayList.add("android.permission.RECEIVE_WAP_PUSH");
                }
                if (a(context, (ArrayList<String>) arrayList, "android.permission.RECEIVE_MMS")) {
                    arrayList.add("android.permission.RECEIVE_MMS");
                }
                return arrayList;
            case 14:
                if (a(context, (ArrayList<String>) arrayList, "android.permission.READ_EXTERNAL_STORAGE")) {
                    arrayList.add("android.permission.READ_EXTERNAL_STORAGE");
                }
                if (a(context, (ArrayList<String>) arrayList, "android.permission.WRITE_EXTERNAL_STORAGE")) {
                    arrayList.add("android.permission.WRITE_EXTERNAL_STORAGE");
                }
                return arrayList;
            case 15:
                if (Build.VERSION.SDK_INT >= 23 && a(context, (ArrayList<String>) arrayList, "android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS")) {
                    arrayList.add("android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS");
                }
                return arrayList;
            case 17:
                if (Build.VERSION.SDK_INT >= 29 && a(context, (ArrayList<String>) arrayList, "android.permission.ACCESS_MEDIA_LOCATION")) {
                    arrayList.add("android.permission.ACCESS_MEDIA_LOCATION");
                }
                return arrayList;
            case 18:
                if (Build.VERSION.SDK_INT >= 29 && a(context, (ArrayList<String>) arrayList, "android.permission.ACTIVITY_RECOGNITION")) {
                    arrayList.add("android.permission.ACTIVITY_RECOGNITION");
                }
                return arrayList;
            default:
                return arrayList;
        }
        if (a(context, (ArrayList<String>) arrayList, "android.permission.ACCESS_COARSE_LOCATION")) {
            arrayList.add("android.permission.ACCESS_COARSE_LOCATION");
        }
        if (a(context, (ArrayList<String>) arrayList, "android.permission.ACCESS_FINE_LOCATION")) {
            arrayList.add("android.permission.ACCESS_FINE_LOCATION");
        }
        return arrayList;
    }

    static void b(Context context, String str) {
        SharedPreferences.Editor edit = context.getSharedPreferences("GENERIC_PREFERENCES", 0).edit();
        edit.putBoolean(str, true);
        edit.apply();
    }

    private static boolean a(Context context, ArrayList<String> arrayList, String str) {
        PackageInfo packageInfo;
        if (arrayList != null) {
            try {
                Iterator<String> it = arrayList.iterator();
                while (it.hasNext()) {
                    if (it.next().equals(str)) {
                        return true;
                    }
                }
            } catch (Exception unused) {
            }
        }
        if (context == null || (packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096)) == null) {
            return false;
        }
        Iterator it2 = new ArrayList(Arrays.asList(packageInfo.requestedPermissions)).iterator();
        while (it2.hasNext()) {
            if (((String) it2.next()).equals(str)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(Activity activity, String str, int i2) {
        if (i2 == -1) {
            return (Build.VERSION.SDK_INT < 23 || !a(activity, str)) ? 0 : 4;
        }
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Activity activity, int i2) {
        List<String> a2;
        if (activity == null || (a2 = a((Context) activity, i2)) == null || a2.isEmpty()) {
            return;
        }
        Iterator<String> it = a2.iterator();
        while (it.hasNext()) {
            b((Context) activity, it.next());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RequiresApi(api = 23)
    public static boolean a(Activity activity, String str) {
        if (activity == null) {
            return false;
        }
        return b(activity, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(Context context, String str) {
        return context.getSharedPreferences("GENERIC_PREFERENCES", 0).getBoolean(str, false);
    }
}
