package com.zoloz.android.phone.zdoc.ui;

import android.content.Context;
import android.text.TextUtils;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.a.e;
import com.alibaba.fastjson.j;
import com.alipay.mobile.security.bio.utils.FileUtil;
import com.alipay.mobile.security.bio.utils.StringUtil;
import com.zoloz.android.phone.zdoc.R;
import java.util.HashMap;

/* loaded from: classes2.dex */
public class UIFacade {
    private static String sPackageName;
    private static HashMap<String, SpecialUiTypeInfo> sSpecialUiInfos;

    private static int getCompIdentifier(Context context, String str, String str2) {
        String str3 = sPackageName;
        if (TextUtils.isEmpty(str3)) {
            str3 = context.getPackageName();
        }
        return context.getResources().getIdentifier(str, str2, str3);
    }

    public static int getLayoutId(Context context, int i2) {
        int compIdentifier = getCompIdentifier(context, "layout_manual_" + i2, "layout");
        if (compIdentifier == 0) {
            compIdentifier = readSpecialUiType(context, i2);
        }
        return compIdentifier == 0 ? R.layout.layout_manual_0 : compIdentifier;
    }

    public static String getMainMessage(Context context, int i2) {
        readSpecialInfos(context);
        SpecialUiTypeInfo specialUiTypeInfo = sSpecialUiInfos.get(String.valueOf(i2));
        if (specialUiTypeInfo == null) {
            return getStringByType(context, "main_message_", i2);
        }
        return getStringByResName(context, specialUiTypeInfo.getTestResId());
    }

    public static String getStringByResName(Context context, String str) {
        int compIdentifier = getCompIdentifier(context, str, "string");
        return compIdentifier == 0 ? "" : context.getString(compIdentifier);
    }

    public static String getStringByType(Context context, String str, int i2) {
        return getStringByResName(context, str + i2);
    }

    public static String getUploadEndString(Context context) {
        return context == null ? "" : context.getString(R.string.zdoc_success);
    }

    public static String getUploadingString(Context context) {
        return context == null ? "" : context.getString(R.string.zdoc_processing);
    }

    public static void readSpecialInfos(Context context) {
        readSpecialInfos(context, false);
    }

    public static int readSpecialUiType(Context context, int i2) {
        readSpecialInfos(context);
        SpecialUiTypeInfo specialUiTypeInfo = sSpecialUiInfos.get(String.valueOf(i2));
        if (specialUiTypeInfo != null) {
            return getCompIdentifier(context, specialUiTypeInfo.getLayout(), "layout");
        }
        return 0;
    }

    public static void setPackageName(String str) {
        sPackageName = str;
    }

    public static void readSpecialInfos(Context context, boolean z) {
        if (z || sSpecialUiInfos == null) {
            byte[] assetsData = FileUtil.getAssetsData(context.getApplicationContext().getResources(), "special_ui_type.json");
            String str = assetsData != null ? new String(assetsData) : "";
            if (!StringUtil.isNullorEmpty(str)) {
                sSpecialUiInfos = (HashMap) JSON.parseObject(str, new j<HashMap<String, SpecialUiTypeInfo>>() { // from class: com.zoloz.android.phone.zdoc.ui.UIFacade.1
                }, new e[0]);
            } else {
                sSpecialUiInfos = new HashMap<>();
            }
        }
    }
}
