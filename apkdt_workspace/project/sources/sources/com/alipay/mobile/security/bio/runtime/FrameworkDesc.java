package com.alipay.mobile.security.bio.runtime;

import android.content.Context;
import android.text.TextUtils;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.annotation.JSONField;
import com.alipay.mobile.security.bio.exception.BioIllegalArgumentException;
import com.alipay.mobile.security.bio.utils.FileUtil;
import com.alipay.mobile.security.bio.workspace.Env;
import java.util.List;

/* loaded from: classes.dex */
public class FrameworkDesc {
    public static final String ASSETS_NAME_ZOLOZ_FRAMEWORK = "zoloz_framework.json";
    public static final String BUNDLE_NAME_BIOMETRIC = "android-phone-securitycommon-biometric";

    @JSONField(name = "configs")
    public List<ConfigDesc> configs;

    @JSONField(name = "framework_version")
    public String frameworkVersion;

    /* loaded from: classes.dex */
    public static class ConfigDesc {

        @JSONField(name = "bundle_name")
        public String bundleName;

        @JSONField(name = "config_file_name")
        public String configFileName;

        @JSONField(name = "dynamic")
        public boolean dynamic = false;

        @JSONField(name = Env.NAME_DEV)
        public boolean dev = false;

        public String toString() {
            return "ConfigDesc{bundleName='" + this.bundleName + "', configFileName='" + this.configFileName + "', dynamic='" + this.dynamic + "', dev='" + this.dev + "'}";
        }
    }

    public static FrameworkDesc create(Context context) {
        String str = new String(FileUtil.getAssetsData(context.getResources(), ASSETS_NAME_ZOLOZ_FRAMEWORK));
        if (TextUtils.isEmpty(str) && Runtime.isRunningOnQuinox(context)) {
            str = new String(FileUtil.getAssetsData(Runtime.getResourcesByBundleName(BUNDLE_NAME_BIOMETRIC), ASSETS_NAME_ZOLOZ_FRAMEWORK));
        }
        if (!TextUtils.isEmpty(str)) {
            FrameworkDesc frameworkDesc = (FrameworkDesc) JSON.parseObject(str, FrameworkDesc.class);
            String str2 = "create frameworkDesc : " + frameworkDesc;
            return frameworkDesc;
        }
        throw new BioIllegalArgumentException("Failed to read 'zoloz_bio_framework.json', bio module can't work.");
    }
}
