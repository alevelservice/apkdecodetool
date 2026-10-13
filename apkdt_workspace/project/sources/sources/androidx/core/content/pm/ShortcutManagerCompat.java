package androidx.core.content.pm;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import androidx.core.app.Person$$ExternalSyntheticApiModelOutline0;
import androidx.core.content.ContextCompat;
import androidx.core.content.pm.ShortcutInfoCompat;
import androidx.core.content.pm.ShortcutInfoCompatSaver;
import androidx.core.graphics.drawable.IconCompat;
import androidx.core.util.Preconditions;
import java.io.InputStream;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class ShortcutManagerCompat {
    static final String ACTION_INSTALL_SHORTCUT = "com.android.launcher.action.INSTALL_SHORTCUT";
    private static final int DEFAULT_MAX_ICON_DIMENSION_DP = 96;
    private static final int DEFAULT_MAX_ICON_DIMENSION_LOWRAM_DP = 48;
    public static final String EXTRA_SHORTCUT_ID = "android.intent.extra.shortcut.ID";
    public static final int FLAG_MATCH_CACHED = 8;
    public static final int FLAG_MATCH_DYNAMIC = 2;
    public static final int FLAG_MATCH_MANIFEST = 1;
    public static final int FLAG_MATCH_PINNED = 4;
    static final String INSTALL_SHORTCUT_PERMISSION = "com.android.launcher.permission.INSTALL_SHORTCUT";
    private static final String SHORTCUT_LISTENER_INTENT_FILTER_ACTION = "androidx.core.content.pm.SHORTCUT_LISTENER";
    private static final String SHORTCUT_LISTENER_META_DATA_KEY = "androidx.core.content.pm.shortcut_listener_impl";
    private static volatile List<ShortcutInfoChangeListener> sShortcutInfoChangeListeners;
    private static volatile ShortcutInfoCompatSaver<?> sShortcutInfoCompatSaver;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface ShortcutMatchFlags {
    }

    private ShortcutManagerCompat() {
    }

    public static boolean isRequestPinShortcutSupported(Context context) {
        Object systemService;
        boolean isRequestPinShortcutSupported;
        if (Build.VERSION.SDK_INT >= 26) {
            systemService = context.getSystemService((Class<Object>) Person$$ExternalSyntheticApiModelOutline0.m65m());
            isRequestPinShortcutSupported = Person$$ExternalSyntheticApiModelOutline0.m57m(systemService).isRequestPinShortcutSupported();
            return isRequestPinShortcutSupported;
        }
        if (ContextCompat.checkSelfPermission(context, INSTALL_SHORTCUT_PERMISSION) != 0) {
            return false;
        }
        Iterator<ResolveInfo> it = context.getPackageManager().queryBroadcastReceivers(new Intent(ACTION_INSTALL_SHORTCUT), 0).iterator();
        while (it.hasNext()) {
            String str = it.next().activityInfo.permission;
            if (TextUtils.isEmpty(str) || INSTALL_SHORTCUT_PERMISSION.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean requestPinShortcut(Context context, ShortcutInfoCompat shortcutInfoCompat, final IntentSender intentSender) {
        Object systemService;
        boolean requestPinShortcut;
        if (Build.VERSION.SDK_INT >= 26) {
            systemService = context.getSystemService((Class<Object>) Person$$ExternalSyntheticApiModelOutline0.m65m());
            requestPinShortcut = Person$$ExternalSyntheticApiModelOutline0.m57m(systemService).requestPinShortcut(shortcutInfoCompat.toShortcutInfo(), intentSender);
            return requestPinShortcut;
        }
        if (!isRequestPinShortcutSupported(context)) {
            return false;
        }
        Intent addToIntent = shortcutInfoCompat.addToIntent(new Intent(ACTION_INSTALL_SHORTCUT));
        if (intentSender == null) {
            context.sendBroadcast(addToIntent);
            return true;
        }
        context.sendOrderedBroadcast(addToIntent, null, new BroadcastReceiver() { // from class: androidx.core.content.pm.ShortcutManagerCompat.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                try {
                    intentSender.sendIntent(context2, 0, null, null, null);
                } catch (IntentSender.SendIntentException unused) {
                }
            }
        }, null, -1, null, null);
        return true;
    }

    public static Intent createShortcutResultIntent(Context context, ShortcutInfoCompat shortcutInfoCompat) {
        Intent intent;
        Object systemService;
        if (Build.VERSION.SDK_INT >= 26) {
            systemService = context.getSystemService((Class<Object>) Person$$ExternalSyntheticApiModelOutline0.m65m());
            intent = Person$$ExternalSyntheticApiModelOutline0.m57m(systemService).createShortcutResultIntent(shortcutInfoCompat.toShortcutInfo());
        } else {
            intent = null;
        }
        if (intent == null) {
            intent = new Intent();
        }
        return shortcutInfoCompat.addToIntent(intent);
    }

    public static List<ShortcutInfoCompat> getShortcuts(Context context, int i) {
        Object systemService;
        List pinnedShortcuts;
        List dynamicShortcuts;
        List manifestShortcuts;
        Object systemService2;
        List shortcuts;
        if (Build.VERSION.SDK_INT >= 30) {
            systemService2 = context.getSystemService((Class<Object>) Person$$ExternalSyntheticApiModelOutline0.m65m());
            shortcuts = Person$$ExternalSyntheticApiModelOutline0.m57m(systemService2).getShortcuts(i);
            return ShortcutInfoCompat.fromShortcuts(context, shortcuts);
        }
        if (Build.VERSION.SDK_INT >= 25) {
            systemService = context.getSystemService((Class<Object>) Person$$ExternalSyntheticApiModelOutline0.m65m());
            ShortcutManager m57m = Person$$ExternalSyntheticApiModelOutline0.m57m(systemService);
            ArrayList arrayList = new ArrayList();
            if ((i & 1) != 0) {
                manifestShortcuts = m57m.getManifestShortcuts();
                arrayList.addAll(manifestShortcuts);
            }
            if ((i & 2) != 0) {
                dynamicShortcuts = m57m.getDynamicShortcuts();
                arrayList.addAll(dynamicShortcuts);
            }
            if ((i & 4) != 0) {
                pinnedShortcuts = m57m.getPinnedShortcuts();
                arrayList.addAll(pinnedShortcuts);
            }
            return ShortcutInfoCompat.fromShortcuts(context, arrayList);
        }
        if ((i & 2) != 0) {
            try {
                return getShortcutInfoSaverInstance(context).getShortcuts();
            } catch (Exception unused) {
            }
        }
        return Collections.emptyList();
    }

    public static boolean addDynamicShortcuts(Context context, List<ShortcutInfoCompat> list) {
        Object systemService;
        boolean addDynamicShortcuts;
        if (Build.VERSION.SDK_INT <= 29) {
            convertUriIconsToBitmapIcons(context, list);
        }
        if (Build.VERSION.SDK_INT >= 25) {
            ArrayList arrayList = new ArrayList();
            Iterator<ShortcutInfoCompat> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().toShortcutInfo());
            }
            systemService = context.getSystemService((Class<Object>) Person$$ExternalSyntheticApiModelOutline0.m65m());
            addDynamicShortcuts = Person$$ExternalSyntheticApiModelOutline0.m57m(systemService).addDynamicShortcuts(arrayList);
            if (!addDynamicShortcuts) {
                return false;
            }
        }
        getShortcutInfoSaverInstance(context).addShortcuts(list);
        Iterator<ShortcutInfoChangeListener> it2 = getShortcutInfoListeners(context).iterator();
        while (it2.hasNext()) {
            it2.next().onShortcutAdded(list);
        }
        return true;
    }

    public static int getMaxShortcutCountPerActivity(Context context) {
        Object systemService;
        int maxShortcutCountPerActivity;
        Preconditions.checkNotNull(context);
        if (Build.VERSION.SDK_INT < 25) {
            return 5;
        }
        systemService = context.getSystemService((Class<Object>) Person$$ExternalSyntheticApiModelOutline0.m65m());
        maxShortcutCountPerActivity = Person$$ExternalSyntheticApiModelOutline0.m57m(systemService).getMaxShortcutCountPerActivity();
        return maxShortcutCountPerActivity;
    }

    public static boolean isRateLimitingActive(Context context) {
        Object systemService;
        boolean isRateLimitingActive;
        Preconditions.checkNotNull(context);
        if (Build.VERSION.SDK_INT < 25) {
            return getShortcuts(context, 3).size() == getMaxShortcutCountPerActivity(context);
        }
        systemService = context.getSystemService((Class<Object>) Person$$ExternalSyntheticApiModelOutline0.m65m());
        isRateLimitingActive = Person$$ExternalSyntheticApiModelOutline0.m57m(systemService).isRateLimitingActive();
        return isRateLimitingActive;
    }

    public static int getIconMaxWidth(Context context) {
        Object systemService;
        int iconMaxWidth;
        Preconditions.checkNotNull(context);
        if (Build.VERSION.SDK_INT >= 25) {
            systemService = context.getSystemService((Class<Object>) Person$$ExternalSyntheticApiModelOutline0.m65m());
            iconMaxWidth = Person$$ExternalSyntheticApiModelOutline0.m57m(systemService).getIconMaxWidth();
            return iconMaxWidth;
        }
        return getIconDimensionInternal(context, true);
    }

    public static int getIconMaxHeight(Context context) {
        Object systemService;
        int iconMaxHeight;
        Preconditions.checkNotNull(context);
        if (Build.VERSION.SDK_INT >= 25) {
            systemService = context.getSystemService((Class<Object>) Person$$ExternalSyntheticApiModelOutline0.m65m());
            iconMaxHeight = Person$$ExternalSyntheticApiModelOutline0.m57m(systemService).getIconMaxHeight();
            return iconMaxHeight;
        }
        return getIconDimensionInternal(context, false);
    }

    public static void reportShortcutUsed(Context context, String str) {
        Object systemService;
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(str);
        if (Build.VERSION.SDK_INT >= 25) {
            systemService = context.getSystemService((Class<Object>) Person$$ExternalSyntheticApiModelOutline0.m65m());
            Person$$ExternalSyntheticApiModelOutline0.m57m(systemService).reportShortcutUsed(str);
        }
        Iterator<ShortcutInfoChangeListener> it = getShortcutInfoListeners(context).iterator();
        while (it.hasNext()) {
            it.next().onShortcutUsageReported(Collections.singletonList(str));
        }
    }

    public static boolean setDynamicShortcuts(Context context, List<ShortcutInfoCompat> list) {
        Object systemService;
        boolean dynamicShortcuts;
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(list);
        if (Build.VERSION.SDK_INT >= 25) {
            ArrayList arrayList = new ArrayList(list.size());
            Iterator<ShortcutInfoCompat> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().toShortcutInfo());
            }
            systemService = context.getSystemService((Class<Object>) Person$$ExternalSyntheticApiModelOutline0.m65m());
            dynamicShortcuts = Person$$ExternalSyntheticApiModelOutline0.m57m(systemService).setDynamicShortcuts(arrayList);
            if (!dynamicShortcuts) {
                return false;
            }
        }
        getShortcutInfoSaverInstance(context).removeAllShortcuts();
        getShortcutInfoSaverInstance(context).addShortcuts(list);
        for (ShortcutInfoChangeListener shortcutInfoChangeListener : getShortcutInfoListeners(context)) {
            shortcutInfoChangeListener.onAllShortcutsRemoved();
            shortcutInfoChangeListener.onShortcutAdded(list);
        }
        return true;
    }

    public static List<ShortcutInfoCompat> getDynamicShortcuts(Context context) {
        Object systemService;
        List dynamicShortcuts;
        if (Build.VERSION.SDK_INT >= 25) {
            systemService = context.getSystemService((Class<Object>) Person$$ExternalSyntheticApiModelOutline0.m65m());
            dynamicShortcuts = Person$$ExternalSyntheticApiModelOutline0.m57m(systemService).getDynamicShortcuts();
            ArrayList arrayList = new ArrayList(dynamicShortcuts.size());
            Iterator it = dynamicShortcuts.iterator();
            while (it.hasNext()) {
                arrayList.add(new ShortcutInfoCompat.Builder(context, Person$$ExternalSyntheticApiModelOutline0.m(it.next())).build());
            }
            return arrayList;
        }
        try {
            return getShortcutInfoSaverInstance(context).getShortcuts();
        } catch (Exception unused) {
            return new ArrayList();
        }
    }

    public static boolean updateShortcuts(Context context, List<ShortcutInfoCompat> list) {
        Object systemService;
        boolean updateShortcuts;
        if (Build.VERSION.SDK_INT <= 29) {
            convertUriIconsToBitmapIcons(context, list);
        }
        if (Build.VERSION.SDK_INT >= 25) {
            ArrayList arrayList = new ArrayList();
            Iterator<ShortcutInfoCompat> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().toShortcutInfo());
            }
            systemService = context.getSystemService((Class<Object>) Person$$ExternalSyntheticApiModelOutline0.m65m());
            updateShortcuts = Person$$ExternalSyntheticApiModelOutline0.m57m(systemService).updateShortcuts(arrayList);
            if (!updateShortcuts) {
                return false;
            }
        }
        getShortcutInfoSaverInstance(context).addShortcuts(list);
        Iterator<ShortcutInfoChangeListener> it2 = getShortcutInfoListeners(context).iterator();
        while (it2.hasNext()) {
            it2.next().onShortcutUpdated(list);
        }
        return true;
    }

    static boolean convertUriIconToBitmapIcon(Context context, ShortcutInfoCompat shortcutInfoCompat) {
        Bitmap decodeStream;
        IconCompat createWithBitmap;
        if (shortcutInfoCompat.mIcon == null) {
            return false;
        }
        int i = shortcutInfoCompat.mIcon.mType;
        if (i != 6 && i != 4) {
            return true;
        }
        InputStream uriInputStream = shortcutInfoCompat.mIcon.getUriInputStream(context);
        if (uriInputStream == null || (decodeStream = BitmapFactory.decodeStream(uriInputStream)) == null) {
            return false;
        }
        if (i == 6) {
            createWithBitmap = IconCompat.createWithAdaptiveBitmap(decodeStream);
        } else {
            createWithBitmap = IconCompat.createWithBitmap(decodeStream);
        }
        shortcutInfoCompat.mIcon = createWithBitmap;
        return true;
    }

    static void convertUriIconsToBitmapIcons(Context context, List<ShortcutInfoCompat> list) {
        for (ShortcutInfoCompat shortcutInfoCompat : new ArrayList(list)) {
            if (!convertUriIconToBitmapIcon(context, shortcutInfoCompat)) {
                list.remove(shortcutInfoCompat);
            }
        }
    }

    public static void disableShortcuts(Context context, List<String> list, CharSequence charSequence) {
        Object systemService;
        if (Build.VERSION.SDK_INT >= 25) {
            systemService = context.getSystemService((Class<Object>) Person$$ExternalSyntheticApiModelOutline0.m65m());
            Person$$ExternalSyntheticApiModelOutline0.m57m(systemService).disableShortcuts(list, charSequence);
        }
        getShortcutInfoSaverInstance(context).removeShortcuts(list);
        Iterator<ShortcutInfoChangeListener> it = getShortcutInfoListeners(context).iterator();
        while (it.hasNext()) {
            it.next().onShortcutRemoved(list);
        }
    }

    public static void enableShortcuts(Context context, List<ShortcutInfoCompat> list) {
        Object systemService;
        if (Build.VERSION.SDK_INT >= 25) {
            ArrayList arrayList = new ArrayList(list.size());
            Iterator<ShortcutInfoCompat> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().mId);
            }
            systemService = context.getSystemService((Class<Object>) Person$$ExternalSyntheticApiModelOutline0.m65m());
            Person$$ExternalSyntheticApiModelOutline0.m57m(systemService).enableShortcuts(arrayList);
        }
        getShortcutInfoSaverInstance(context).addShortcuts(list);
        Iterator<ShortcutInfoChangeListener> it2 = getShortcutInfoListeners(context).iterator();
        while (it2.hasNext()) {
            it2.next().onShortcutAdded(list);
        }
    }

    public static void removeDynamicShortcuts(Context context, List<String> list) {
        Object systemService;
        if (Build.VERSION.SDK_INT >= 25) {
            systemService = context.getSystemService((Class<Object>) Person$$ExternalSyntheticApiModelOutline0.m65m());
            Person$$ExternalSyntheticApiModelOutline0.m57m(systemService).removeDynamicShortcuts(list);
        }
        getShortcutInfoSaverInstance(context).removeShortcuts(list);
        Iterator<ShortcutInfoChangeListener> it = getShortcutInfoListeners(context).iterator();
        while (it.hasNext()) {
            it.next().onShortcutRemoved(list);
        }
    }

    public static void removeAllDynamicShortcuts(Context context) {
        Object systemService;
        if (Build.VERSION.SDK_INT >= 25) {
            systemService = context.getSystemService((Class<Object>) Person$$ExternalSyntheticApiModelOutline0.m65m());
            Person$$ExternalSyntheticApiModelOutline0.m57m(systemService).removeAllDynamicShortcuts();
        }
        getShortcutInfoSaverInstance(context).removeAllShortcuts();
        Iterator<ShortcutInfoChangeListener> it = getShortcutInfoListeners(context).iterator();
        while (it.hasNext()) {
            it.next().onAllShortcutsRemoved();
        }
    }

    public static void removeLongLivedShortcuts(Context context, List<String> list) {
        Object systemService;
        if (Build.VERSION.SDK_INT < 30) {
            removeDynamicShortcuts(context, list);
            return;
        }
        systemService = context.getSystemService((Class<Object>) Person$$ExternalSyntheticApiModelOutline0.m65m());
        Person$$ExternalSyntheticApiModelOutline0.m57m(systemService).removeLongLivedShortcuts(list);
        getShortcutInfoSaverInstance(context).removeShortcuts(list);
        Iterator<ShortcutInfoChangeListener> it = getShortcutInfoListeners(context).iterator();
        while (it.hasNext()) {
            it.next().onShortcutRemoved(list);
        }
    }

    public static boolean pushDynamicShortcut(Context context, ShortcutInfoCompat shortcutInfoCompat) {
        Object systemService;
        boolean isRateLimitingActive;
        List dynamicShortcuts;
        Object systemService2;
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(shortcutInfoCompat);
        int maxShortcutCountPerActivity = getMaxShortcutCountPerActivity(context);
        if (maxShortcutCountPerActivity == 0) {
            return false;
        }
        if (Build.VERSION.SDK_INT <= 29) {
            convertUriIconToBitmapIcon(context, shortcutInfoCompat);
        }
        if (Build.VERSION.SDK_INT >= 30) {
            systemService2 = context.getSystemService((Class<Object>) Person$$ExternalSyntheticApiModelOutline0.m65m());
            Person$$ExternalSyntheticApiModelOutline0.m57m(systemService2).pushDynamicShortcut(shortcutInfoCompat.toShortcutInfo());
        } else if (Build.VERSION.SDK_INT >= 25) {
            systemService = context.getSystemService((Class<Object>) Person$$ExternalSyntheticApiModelOutline0.m65m());
            ShortcutManager m57m = Person$$ExternalSyntheticApiModelOutline0.m57m(systemService);
            isRateLimitingActive = m57m.isRateLimitingActive();
            if (isRateLimitingActive) {
                return false;
            }
            dynamicShortcuts = m57m.getDynamicShortcuts();
            if (dynamicShortcuts.size() >= maxShortcutCountPerActivity) {
                m57m.removeDynamicShortcuts(Arrays.asList(Api25Impl.getShortcutInfoWithLowestRank(dynamicShortcuts)));
            }
            m57m.addDynamicShortcuts(Arrays.asList(shortcutInfoCompat.toShortcutInfo()));
        }
        ShortcutInfoCompatSaver<?> shortcutInfoSaverInstance = getShortcutInfoSaverInstance(context);
        try {
            List<ShortcutInfoCompat> shortcuts = shortcutInfoSaverInstance.getShortcuts();
            if (shortcuts.size() >= maxShortcutCountPerActivity) {
                shortcutInfoSaverInstance.removeShortcuts(Arrays.asList(getShortcutInfoCompatWithLowestRank(shortcuts)));
            }
            shortcutInfoSaverInstance.addShortcuts(Arrays.asList(shortcutInfoCompat));
            Iterator<ShortcutInfoChangeListener> it = getShortcutInfoListeners(context).iterator();
            while (it.hasNext()) {
                it.next().onShortcutAdded(Collections.singletonList(shortcutInfoCompat));
            }
            reportShortcutUsed(context, shortcutInfoCompat.getId());
            return true;
        } catch (Exception unused) {
            Iterator<ShortcutInfoChangeListener> it2 = getShortcutInfoListeners(context).iterator();
            while (it2.hasNext()) {
                it2.next().onShortcutAdded(Collections.singletonList(shortcutInfoCompat));
            }
            reportShortcutUsed(context, shortcutInfoCompat.getId());
            return false;
        } catch (Throwable th) {
            Iterator<ShortcutInfoChangeListener> it3 = getShortcutInfoListeners(context).iterator();
            while (it3.hasNext()) {
                it3.next().onShortcutAdded(Collections.singletonList(shortcutInfoCompat));
            }
            reportShortcutUsed(context, shortcutInfoCompat.getId());
            throw th;
        }
    }

    private static String getShortcutInfoCompatWithLowestRank(List<ShortcutInfoCompat> list) {
        int i = -1;
        String str = null;
        for (ShortcutInfoCompat shortcutInfoCompat : list) {
            if (shortcutInfoCompat.getRank() > i) {
                str = shortcutInfoCompat.getId();
                i = shortcutInfoCompat.getRank();
            }
        }
        return str;
    }

    static void setShortcutInfoCompatSaver(ShortcutInfoCompatSaver<Void> shortcutInfoCompatSaver) {
        sShortcutInfoCompatSaver = shortcutInfoCompatSaver;
    }

    static void setShortcutInfoChangeListeners(List<ShortcutInfoChangeListener> list) {
        sShortcutInfoChangeListeners = list;
    }

    static List<ShortcutInfoChangeListener> getShortcutInfoChangeListeners() {
        return sShortcutInfoChangeListeners;
    }

    private static int getIconDimensionInternal(Context context, boolean z) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        int max = Math.max(1, activityManager == null || activityManager.isLowRamDevice() ? 48 : 96);
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        return (int) (max * ((z ? displayMetrics.xdpi : displayMetrics.ydpi) / 160.0f));
    }

    private static ShortcutInfoCompatSaver<?> getShortcutInfoSaverInstance(Context context) {
        if (sShortcutInfoCompatSaver == null) {
            if (Build.VERSION.SDK_INT >= 23) {
                try {
                    sShortcutInfoCompatSaver = (ShortcutInfoCompatSaver) Class.forName("androidx.sharetarget.ShortcutInfoCompatSaverImpl", false, ShortcutManagerCompat.class.getClassLoader()).getMethod("getInstance", Context.class).invoke(null, context);
                } catch (Exception unused) {
                }
            }
            if (sShortcutInfoCompatSaver == null) {
                sShortcutInfoCompatSaver = new ShortcutInfoCompatSaver.NoopImpl();
            }
        }
        return sShortcutInfoCompatSaver;
    }

    private static List<ShortcutInfoChangeListener> getShortcutInfoListeners(Context context) {
        Bundle bundle;
        String string;
        if (sShortcutInfoChangeListeners == null) {
            ArrayList arrayList = new ArrayList();
            PackageManager packageManager = context.getPackageManager();
            Intent intent = new Intent(SHORTCUT_LISTENER_INTENT_FILTER_ACTION);
            intent.setPackage(context.getPackageName());
            Iterator<ResolveInfo> it = packageManager.queryIntentActivities(intent, 128).iterator();
            while (it.hasNext()) {
                ActivityInfo activityInfo = it.next().activityInfo;
                if (activityInfo != null && (bundle = activityInfo.metaData) != null && (string = bundle.getString(SHORTCUT_LISTENER_META_DATA_KEY)) != null) {
                    try {
                        arrayList.add((ShortcutInfoChangeListener) Class.forName(string, false, ShortcutManagerCompat.class.getClassLoader()).getMethod("getInstance", Context.class).invoke(null, context));
                    } catch (Exception unused) {
                    }
                }
            }
            if (sShortcutInfoChangeListeners == null) {
                sShortcutInfoChangeListeners = arrayList;
            }
        }
        return sShortcutInfoChangeListeners;
    }

    /* loaded from: classes.dex */
    private static class Api25Impl {
        private Api25Impl() {
        }

        static String getShortcutInfoWithLowestRank(List<ShortcutInfo> list) {
            int i = -1;
            String str = null;
            for (ShortcutInfo shortcutInfo : list) {
                if (shortcutInfo.getRank() > i) {
                    str = shortcutInfo.getId();
                    i = shortcutInfo.getRank();
                }
            }
            return str;
        }
    }
}
