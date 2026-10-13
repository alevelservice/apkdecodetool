package com.hjq.permissions;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
final class PermissionHelper {
    private static final Map<String, Integer> PERMISSION_VERSION_MAP;
    private static final List<String> SPECIAL_PERMISSION_LIST;
    private static final List<String> VIRTUAL_PERMISSION_LIST;

    PermissionHelper() {
    }

    static {
        ArrayList arrayList = new ArrayList(12);
        SPECIAL_PERMISSION_LIST = arrayList;
        HashMap hashMap = new HashMap(53);
        PERMISSION_VERSION_MAP = hashMap;
        ArrayList arrayList2 = new ArrayList(4);
        VIRTUAL_PERMISSION_LIST = arrayList2;
        arrayList.add(Permission.SCHEDULE_EXACT_ALARM);
        arrayList.add(Permission.MANAGE_EXTERNAL_STORAGE);
        arrayList.add(Permission.REQUEST_INSTALL_PACKAGES);
        arrayList.add(Permission.PICTURE_IN_PICTURE);
        arrayList.add(Permission.SYSTEM_ALERT_WINDOW);
        arrayList.add(Permission.WRITE_SETTINGS);
        arrayList.add(Permission.ACCESS_NOTIFICATION_POLICY);
        arrayList.add(Permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS);
        arrayList.add(Permission.PACKAGE_USAGE_STATS);
        arrayList.add(Permission.NOTIFICATION_SERVICE);
        arrayList.add(Permission.BIND_NOTIFICATION_LISTENER_SERVICE);
        arrayList.add(Permission.BIND_VPN_SERVICE);
        hashMap.put(Permission.SCHEDULE_EXACT_ALARM, 31);
        hashMap.put(Permission.MANAGE_EXTERNAL_STORAGE, 30);
        hashMap.put(Permission.REQUEST_INSTALL_PACKAGES, 26);
        hashMap.put(Permission.PICTURE_IN_PICTURE, 26);
        hashMap.put(Permission.SYSTEM_ALERT_WINDOW, 23);
        hashMap.put(Permission.WRITE_SETTINGS, 23);
        hashMap.put(Permission.ACCESS_NOTIFICATION_POLICY, 23);
        hashMap.put(Permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS, 23);
        hashMap.put(Permission.PACKAGE_USAGE_STATS, 21);
        hashMap.put(Permission.NOTIFICATION_SERVICE, 19);
        hashMap.put(Permission.BIND_NOTIFICATION_LISTENER_SERVICE, 18);
        hashMap.put(Permission.BIND_VPN_SERVICE, 14);
        hashMap.put(Permission.READ_MEDIA_VISUAL_USER_SELECTED, 34);
        hashMap.put(Permission.POST_NOTIFICATIONS, 33);
        hashMap.put(Permission.NEARBY_WIFI_DEVICES, 33);
        hashMap.put(Permission.BODY_SENSORS_BACKGROUND, 33);
        hashMap.put(Permission.READ_MEDIA_IMAGES, 33);
        hashMap.put(Permission.READ_MEDIA_VIDEO, 33);
        hashMap.put(Permission.READ_MEDIA_AUDIO, 33);
        hashMap.put(Permission.BLUETOOTH_SCAN, 31);
        hashMap.put(Permission.BLUETOOTH_CONNECT, 31);
        hashMap.put(Permission.BLUETOOTH_ADVERTISE, 31);
        hashMap.put(Permission.ACCESS_BACKGROUND_LOCATION, 29);
        hashMap.put(Permission.ACTIVITY_RECOGNITION, 29);
        hashMap.put(Permission.ACCESS_MEDIA_LOCATION, 29);
        hashMap.put(Permission.ACCEPT_HANDOVER, 28);
        hashMap.put(Permission.ANSWER_PHONE_CALLS, 26);
        hashMap.put(Permission.READ_PHONE_NUMBERS, 26);
        hashMap.put(Permission.GET_INSTALLED_APPS, 23);
        hashMap.put(Permission.READ_EXTERNAL_STORAGE, 23);
        hashMap.put(Permission.WRITE_EXTERNAL_STORAGE, 23);
        hashMap.put(Permission.CAMERA, 23);
        hashMap.put(Permission.RECORD_AUDIO, 23);
        hashMap.put(Permission.ACCESS_FINE_LOCATION, 23);
        hashMap.put(Permission.ACCESS_COARSE_LOCATION, 23);
        hashMap.put(Permission.READ_CONTACTS, 23);
        hashMap.put(Permission.WRITE_CONTACTS, 23);
        hashMap.put(Permission.GET_ACCOUNTS, 23);
        hashMap.put(Permission.READ_CALENDAR, 23);
        hashMap.put(Permission.WRITE_CALENDAR, 23);
        hashMap.put(Permission.READ_PHONE_STATE, 23);
        hashMap.put(Permission.CALL_PHONE, 23);
        hashMap.put(Permission.READ_CALL_LOG, 23);
        hashMap.put(Permission.WRITE_CALL_LOG, 23);
        hashMap.put(Permission.ADD_VOICEMAIL, 23);
        hashMap.put(Permission.USE_SIP, 23);
        hashMap.put(Permission.PROCESS_OUTGOING_CALLS, 23);
        hashMap.put(Permission.BODY_SENSORS, 23);
        hashMap.put(Permission.SEND_SMS, 23);
        hashMap.put(Permission.RECEIVE_SMS, 23);
        hashMap.put(Permission.READ_SMS, 23);
        hashMap.put(Permission.RECEIVE_WAP_PUSH, 23);
        hashMap.put(Permission.RECEIVE_MMS, 23);
        arrayList2.add(Permission.NOTIFICATION_SERVICE);
        arrayList2.add(Permission.BIND_NOTIFICATION_LISTENER_SERVICE);
        arrayList2.add(Permission.BIND_VPN_SERVICE);
        arrayList2.add(Permission.PICTURE_IN_PICTURE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isSpecialPermission(String str) {
        return PermissionUtils.containsPermission(SPECIAL_PERMISSION_LIST, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int findAndroidVersionByPermission(String str) {
        Integer num = PERMISSION_VERSION_MAP.get(str);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isVirtualPermission(String str) {
        return PermissionUtils.containsPermission(VIRTUAL_PERMISSION_LIST, str);
    }
}
