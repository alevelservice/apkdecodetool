package com.alipay.mobile.security.bio.runtime;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.text.TextUtils;
import com.alipay.mobile.security.bio.config.BisRuntimeInfoEnum;
import com.alipay.mobile.security.bio.exception.BioIllegalArgumentException;
import com.alipay.mobile.security.bio.runtime.FrameworkDesc;
import com.alipay.mobile.security.bio.service.BioAppDescription;
import com.alipay.mobile.security.bio.service.BioMetaInfo;
import com.alipay.mobile.security.bio.service.BioServiceDescription;
import com.alipay.mobile.security.bio.service.BioServiceManager;
import com.alipay.mobile.security.bio.service.local.LocalService;
import com.alipay.mobile.security.bio.service.local.dynamicrelease.DynamicReleaseService;
import com.alipay.mobile.security.bio.service.local.language.LanguageService;
import com.alipay.mobile.security.bio.utils.StringUtil;
import com.alipay.mobile.security.bio.workspace.Env;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class Runtime {
    private static final String LAUNCHER_APPLICATION = "com.alipay.mobile.quinox.LauncherApplication";
    public static final String TAG = "Runtime";
    private static Object bundleContext;
    private static Method findClassLoaderByBundleName;
    private static Method getResourcesByBundle;
    private static FrameworkDesc sFrameworkDesc;
    private static Boolean sIsRunningOnQuinox;
    private static HashMap<String, ModuleDesc> sModuleDescMap;

    static {
        try {
            Class<?> cls = Class.forName("com.alipay.mobile.framework.LauncherApplicationAgent");
            Method declaredMethod = cls.getDeclaredMethod("getmBundleContext", new Class[0]);
            declaredMethod.setAccessible(true);
            bundleContext = declaredMethod.invoke(cls, new Object[0]);
            Class<?> cls2 = bundleContext.getClass();
            getResourcesByBundle = cls2.getMethod("getResourcesByBundle", String.class);
            getResourcesByBundle.setAccessible(true);
            findClassLoaderByBundleName = cls2.getMethod("findClassLoaderByBundleName", String.class);
            findClassLoaderByBundleName.setAccessible(true);
        } catch (Throwable th) {
            String str = "Failed to reflect Quinox's Bundle APIs : " + th.getMessage();
        }
        sIsRunningOnQuinox = null;
    }

    public static List<BioMetaInfo> getBioMetaInfoList() {
        ArrayList arrayList = new ArrayList();
        for (ModuleDesc moduleDesc : sModuleDescMap.values()) {
            List<BioMetaInfo> list = moduleDesc.mBioMetaInfoList;
            if (list != null && !list.isEmpty()) {
                arrayList.addAll(moduleDesc.mBioMetaInfoList);
            }
        }
        return arrayList;
    }

    public static BioServiceDescription getBioServiceDescriptionByInterface(Context context, String str) {
        inflateModules(context, isRunningOnQuinox(context));
        return getBioServiceDescriptionByInterface(str);
    }

    public static ClassLoader getClassLoaderByBundleName(String str) {
        try {
            return (ClassLoader) findClassLoaderByBundleName.invoke(bundleContext, str);
        } catch (Throwable th) {
            String str2 = "Failed to reflect invoke findClassLoaderByBundleName(" + str + ") : " + th.toString();
            return null;
        }
    }

    public static String getFrameworkVersion(Context context) {
        String sdkVersion = getSdkVersion(context, sFrameworkDesc.frameworkVersion, getBioMetaInfoList());
        String str = "frameworkVersion=" + sdkVersion;
        return sdkVersion;
    }

    public static void getLocalService(Context context, HashMap<String, LocalService> hashMap, HashMap<String, BioServiceDescription> hashMap2) {
        inflateModules(context, isRunningOnQuinox(context));
        ArrayList<BioServiceDescription> arrayList = new ArrayList();
        for (ModuleDesc moduleDesc : sModuleDescMap.values()) {
            List<BioServiceDescription> list = moduleDesc.mBioServiceDescription;
            if (list != null && !list.isEmpty()) {
                arrayList.addAll(moduleDesc.mBioServiceDescription);
            }
        }
        for (BioServiceDescription bioServiceDescription : arrayList) {
            if (bioServiceDescription.isLazy()) {
                if (hashMap2 != null) {
                    hashMap2.put(bioServiceDescription.getInterfaceName(), bioServiceDescription);
                }
            } else if (hashMap != null) {
                try {
                    hashMap.put(bioServiceDescription.getInterfaceName(), (LocalService) bioServiceDescription.getClazz().newInstance());
                } catch (Throwable unused) {
                }
            }
        }
    }

    public static String getMetaInfos(Context context, Map<String, Object> map) {
        if (context != null) {
            boolean isRunningOnQuinox = isRunningOnQuinox(context);
            inflateModules(context, isRunningOnQuinox);
            List<BioMetaInfo> bioMetaInfoList = getBioMetaInfoList();
            String str = getSdkVersion(context, sFrameworkDesc.frameworkVersion, bioMetaInfoList) + ":" + getSdkModule(context, bioMetaInfoList) + "," + getRuntimeInfo(context, bioMetaInfoList, isRunningOnQuinox, map);
            String str2 = "MetaInfo:" + str;
            return str;
        }
        throw new BioIllegalArgumentException("Context is null");
    }

    public static Resources getResourcesByBundleName(String str) {
        try {
            return (Resources) getResourcesByBundle.invoke(bundleContext, str);
        } catch (Throwable th) {
            String str2 = "Failed to reflect invoke getResourcesByBundle(" + str + ") : " + th.toString();
            return null;
        }
    }

    private static String getRuntimeInfo(Context context, List<BioMetaInfo> list, boolean z, Map<String, Object> map) {
        int i2 = 0;
        if (1 != Env.getProtocolFormat(context)) {
            double d2 = 0;
            double pow = Math.pow(2.0d, BisRuntimeInfoEnum.PROTOCOL_FORMAT.getProductID());
            Double.isNaN(d2);
            i2 = (int) (d2 + pow);
        }
        int currentLanguage = i2 + (new LanguageService().getCurrentLanguage() * 4);
        Iterator<BioMetaInfo> it = list.iterator();
        while (it.hasNext()) {
            List<Integer> runtimeInfoIDs = it.next().getRuntimeInfoIDs(context, map);
            if (runtimeInfoIDs != null && !runtimeInfoIDs.isEmpty()) {
                Iterator<Integer> it2 = runtimeInfoIDs.iterator();
                while (it2.hasNext()) {
                    double d3 = currentLanguage;
                    double pow2 = Math.pow(2.0d, it2.next().intValue());
                    Double.isNaN(d3);
                    currentLanguage = (int) (d3 + pow2);
                }
            }
        }
        return "" + currentLanguage;
    }

    private static String getSdkModule(Context context, List<BioMetaInfo> list) {
        int i2 = 0;
        for (BioMetaInfo bioMetaInfo : list) {
            List<Long> productIDs = bioMetaInfo.getProductIDs();
            if (productIDs != null && !productIDs.isEmpty()) {
                Iterator<Long> it = productIDs.iterator();
                while (it.hasNext()) {
                    double d2 = i2;
                    double pow = Math.pow(2.0d, it.next().longValue());
                    Double.isNaN(d2);
                    i2 = (int) (d2 + pow);
                }
            }
            List<Long> productIDs2 = bioMetaInfo.getProductIDs(context);
            if (productIDs2 != null && !productIDs2.isEmpty()) {
                Iterator<Long> it2 = productIDs2.iterator();
                while (it2.hasNext()) {
                    double d3 = i2;
                    double pow2 = Math.pow(2.0d, it2.next().longValue());
                    Double.isNaN(d3);
                    i2 = (int) (d3 + pow2);
                }
            }
            List<BioAppDescription> applications = bioMetaInfo.getApplications();
            if (applications != null && !applications.isEmpty()) {
                Iterator<BioAppDescription> it3 = applications.iterator();
                while (it3.hasNext()) {
                    long productID = it3.next().getProductID();
                    if (-1 != productID) {
                        double d4 = i2;
                        double pow3 = Math.pow(2.0d, productID);
                        Double.isNaN(d4);
                        i2 = (int) (d4 + pow3);
                    }
                }
            }
        }
        return "" + i2;
    }

    private static String getSdkVersion(Context context, String str, List<BioMetaInfo> list) {
        if (list == null || list.isEmpty()) {
            return str;
        }
        int lastIndexOf = str.lastIndexOf(".") + 1;
        int parseInt = Integer.parseInt(str.substring(lastIndexOf));
        Iterator<BioMetaInfo> it = list.iterator();
        while (it.hasNext()) {
            String revision = it.next().getRevision(context);
            if (!TextUtils.isEmpty(revision)) {
                parseInt += Integer.parseInt(revision.replace(".", ""));
            }
        }
        return str.substring(0, lastIndexOf) + parseInt;
    }

    private static synchronized void inflateModules(Context context, boolean z) {
        synchronized (Runtime.class) {
            if (sFrameworkDesc == null) {
                sFrameworkDesc = FrameworkDesc.create(context);
            }
            HashSet hashSet = new HashSet();
            if (sModuleDescMap == null) {
                sModuleDescMap = new HashMap<>(sFrameworkDesc.configs.size());
                for (FrameworkDesc.ConfigDesc configDesc : sFrameworkDesc.configs) {
                    ModuleDesc create = ModuleDesc.create(context, z, configDesc);
                    String str = "load : configDesc=" + configDesc + ", moduleDesc=" + create;
                    if (z) {
                        if (configDesc.dev) {
                            if (configDesc.dynamic) {
                                if (create == null) {
                                    String str2 = "No need to trigger dynamicrelease a dev bundle: " + configDesc;
                                } else {
                                    sModuleDescMap.put(configDesc.configFileName, create);
                                }
                            } else if (create == null) {
                                String str3 = "There is a static dev bundle can't be found: " + configDesc;
                            } else {
                                sModuleDescMap.put(configDesc.configFileName, create);
                            }
                        } else if (configDesc.dynamic) {
                            if (create == null) {
                                hashSet.add(configDesc.bundleName);
                            } else {
                                sModuleDescMap.put(configDesc.configFileName, create);
                            }
                        } else if (create != null) {
                            sModuleDescMap.put(configDesc.configFileName, create);
                        } else {
                            throw new RuntimeException("There is a static bundle can't be found: " + configDesc);
                        }
                    } else if (!configDesc.dev) {
                        if (configDesc.dynamic) {
                            throw new RuntimeException("On no-quinox, there is a dynamic bundle: " + configDesc);
                        }
                        if (create != null) {
                            sModuleDescMap.put(configDesc.configFileName, create);
                        } else {
                            throw new RuntimeException("There is a static bundle can't be found: " + configDesc);
                        }
                    } else {
                        throw new RuntimeException("On no-quinox, there is a dev bundle: " + configDesc);
                    }
                }
            } else if (z) {
                for (FrameworkDesc.ConfigDesc configDesc2 : sFrameworkDesc.configs) {
                    if (configDesc2.dynamic) {
                        ModuleDesc create2 = ModuleDesc.create(context, true, configDesc2);
                        String str4 = "reload : configDesc=" + configDesc2 + ", moduleDesc=" + create2;
                        if (create2 == null) {
                            hashSet.add(configDesc2.bundleName);
                        } else {
                            sModuleDescMap.put(configDesc2.configFileName, create2);
                        }
                    }
                }
            }
            if (z) {
                DynamicReleaseService dynamicReleaseService = (DynamicReleaseService) BioServiceManager.getLocalService(context, getBioServiceDescriptionByInterface(DynamicReleaseService.class.getName()));
                if (dynamicReleaseService != null) {
                    for (FrameworkDesc.ConfigDesc configDesc3 : sFrameworkDesc.configs) {
                        if (configDesc3.dynamic) {
                            dynamicReleaseService.monitorCoverage(configDesc3.bundleName, null);
                        }
                    }
                }
                if (!hashSet.isEmpty()) {
                    String str5 = "Not exist bundle names: " + StringUtil.collection2String(hashSet);
                    if (dynamicReleaseService != null) {
                        Iterator it = hashSet.iterator();
                        while (it.hasNext()) {
                            dynamicReleaseService.trigDynamicRelease(context, (String) it.next());
                        }
                    }
                }
            }
        }
    }

    public static boolean isRunningOnQuinox(Context context) {
        if (sIsRunningOnQuinox == null) {
            synchronized (LAUNCHER_APPLICATION) {
                if (sIsRunningOnQuinox == null) {
                    sIsRunningOnQuinox = Boolean.valueOf(LAUNCHER_APPLICATION.equals(context.getApplicationContext().getClass().getName()));
                    String str = "Runtime : isOnQuinox=" + sIsRunningOnQuinox;
                }
            }
        }
        return sIsRunningOnQuinox.booleanValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:3:0x000b, code lost:
    
        r5 = getClassLoaderByBundleName(r7);
     */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0030  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Class<?> loadClass(android.content.Context r4, boolean r5, java.lang.String r6, java.lang.String r7) {
        /*
            java.util.HashSet r0 = new java.util.HashSet
            r0.<init>()
            java.lang.String r1 = ") by "
            java.lang.String r2 = "Failed to loadClass("
            if (r5 == 0) goto L2d
            java.lang.ClassLoader r5 = getClassLoaderByBundleName(r7)
            if (r5 == 0) goto L2d
            java.lang.Class r5 = r5.loadClass(r6)     // Catch: java.lang.ClassNotFoundException -> L16
            goto L2e
        L16:
            r0.add(r5)
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            r7.append(r2)
            r7.append(r6)
            r7.append(r1)
            r7.append(r5)
            r7.toString()
        L2d:
            r5 = 0
        L2e:
            if (r5 != 0) goto L58
            java.lang.Class<com.alipay.mobile.security.bio.runtime.Runtime> r7 = com.alipay.mobile.security.bio.runtime.Runtime.class
            java.lang.ClassLoader r7 = r7.getClassLoader()
            boolean r3 = r0.contains(r7)
            if (r3 != 0) goto L58
            java.lang.Class r5 = java.lang.Class.forName(r6)     // Catch: java.lang.ClassNotFoundException -> L41
            goto L58
        L41:
            r0.add(r7)
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            r3.append(r2)
            r3.append(r6)
            r3.append(r1)
            r3.append(r7)
            r3.toString()
        L58:
            if (r5 != 0) goto L81
            if (r4 == 0) goto L81
            java.lang.ClassLoader r4 = r4.getClassLoader()
            if (r4 == 0) goto L81
            boolean r7 = r0.contains(r4)
            if (r7 != 0) goto L81
            java.lang.Class r5 = r4.loadClass(r6)     // Catch: java.lang.ClassNotFoundException -> L6d
            goto L81
        L6d:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            r7.append(r2)
            r7.append(r6)
            r7.append(r1)
            r7.append(r4)
            r7.toString()
        L81:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alipay.mobile.security.bio.runtime.Runtime.loadClass(android.content.Context, boolean, java.lang.String, java.lang.String):java.lang.Class");
    }

    public static boolean startActivity(Intent intent) {
        try {
            Class<?> cls = Class.forName("com.alipay.mobile.framework.LauncherApplicationAgent");
            Method method = cls.getMethod("getInstance", new Class[0]);
            method.setAccessible(true);
            Object invoke = method.invoke(cls, new Object[0]);
            Method method2 = cls.getMethod("getMicroApplicationContext", new Class[0]);
            method2.setAccessible(true);
            Object invoke2 = method2.invoke(invoke, new Object[0]);
            Method method3 = invoke2.getClass().getMethod("getTopApplication", new Class[0]);
            method3.setAccessible(true);
            Object invoke3 = method3.invoke(invoke2, new Object[0]);
            Class<?> cls2 = invoke2.getClass();
            Class<?>[] clsArr = new Class[2];
            clsArr[0] = Class.forName("com.alipay.mobile.framework.app.MicroApplication");
            clsArr[1] = Intent.class;
            Method method4 = cls2.getMethod("startExtActivity", clsArr);
            method4.setAccessible(true);
            method4.invoke(invoke2, invoke3, intent);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    private static BioServiceDescription getBioServiceDescriptionByInterface(String str) {
        BioServiceDescription bioServiceDescription = null;
        for (ModuleDesc moduleDesc : sModuleDescMap.values()) {
            List<BioServiceDescription> list = moduleDesc.mBioServiceDescription;
            if (list != null && !list.isEmpty()) {
                Iterator<BioServiceDescription> it = moduleDesc.mBioServiceDescription.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    BioServiceDescription next = it.next();
                    if (TextUtils.equals(str, next.getInterfaceName())) {
                        bioServiceDescription = next;
                        break;
                    }
                }
            }
            if (bioServiceDescription != null) {
                break;
            }
        }
        return bioServiceDescription;
    }
}
