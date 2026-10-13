package com.hjq.permissions;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.hjq.permissions.OnPermissionInterceptor;
import com.hjq.permissions.PermissionFragment;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

/* loaded from: classes.dex */
public final class PermissionFragment extends Fragment implements Runnable {
    private static final String REQUEST_CODE = "request_code";
    private static final List<Integer> REQUEST_CODE_ARRAY = new ArrayList();
    private static final String REQUEST_PERMISSIONS = "request_permissions";
    private OnPermissionCallback mCallBack;
    private boolean mDangerousRequest;
    private OnPermissionInterceptor mInterceptor;
    private boolean mRequestFlag;
    private int mScreenOrientation;
    private boolean mSpecialRequest;

    public static void launch(Activity activity, List<String> list, OnPermissionInterceptor onPermissionInterceptor, OnPermissionCallback onPermissionCallback) {
        int nextInt;
        List<Integer> list2;
        PermissionFragment permissionFragment = new PermissionFragment();
        Random random = new Random();
        do {
            nextInt = random.nextInt((int) Math.pow(2.0d, 8.0d));
            list2 = REQUEST_CODE_ARRAY;
        } while (list2.contains(Integer.valueOf(nextInt)));
        list2.add(Integer.valueOf(nextInt));
        Bundle bundle = new Bundle();
        bundle.putInt(REQUEST_CODE, nextInt);
        if (list instanceof ArrayList) {
            bundle.putStringArrayList(REQUEST_PERMISSIONS, (ArrayList) list);
        } else {
            bundle.putStringArrayList(REQUEST_PERMISSIONS, new ArrayList<>(list));
        }
        permissionFragment.setArguments(bundle);
        permissionFragment.setRetainInstance(true);
        permissionFragment.setRequestFlag(true);
        permissionFragment.setOnPermissionCallback(onPermissionCallback);
        permissionFragment.setOnPermissionInterceptor(onPermissionInterceptor);
        permissionFragment.attachByActivity(activity);
    }

    public void attachByActivity(Activity activity) {
        FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager == null) {
            return;
        }
        fragmentManager.beginTransaction().add(this, toString()).commitAllowingStateLoss();
    }

    public void detachByActivity(Activity activity) {
        FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager == null) {
            return;
        }
        fragmentManager.beginTransaction().remove(this).commitAllowingStateLoss();
    }

    public void setOnPermissionCallback(OnPermissionCallback onPermissionCallback) {
        this.mCallBack = onPermissionCallback;
    }

    public void setRequestFlag(boolean z) {
        this.mRequestFlag = z;
    }

    public void setOnPermissionInterceptor(OnPermissionInterceptor onPermissionInterceptor) {
        this.mInterceptor = onPermissionInterceptor;
    }

    @Override // android.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        Activity activity = getActivity();
        if (activity == null) {
            return;
        }
        int requestedOrientation = activity.getRequestedOrientation();
        this.mScreenOrientation = requestedOrientation;
        if (requestedOrientation != -1) {
            return;
        }
        PermissionUtils.lockActivityOrientation(activity);
    }

    @Override // android.app.Fragment
    public void onDetach() {
        super.onDetach();
        Activity activity = getActivity();
        if (activity == null || this.mScreenOrientation != -1 || activity.getRequestedOrientation() == -1) {
            return;
        }
        activity.setRequestedOrientation(-1);
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.mCallBack = null;
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        if (!this.mRequestFlag) {
            detachByActivity(getActivity());
        } else {
            if (this.mSpecialRequest) {
                return;
            }
            this.mSpecialRequest = true;
            requestSpecialPermission();
        }
    }

    public void requestSpecialPermission() {
        ArrayList<String> stringArrayList;
        Bundle arguments = getArguments();
        Activity activity = getActivity();
        if (arguments == null || activity == null || (stringArrayList = arguments.getStringArrayList(REQUEST_PERMISSIONS)) == null || stringArrayList.isEmpty()) {
            return;
        }
        boolean z = false;
        for (int size = stringArrayList.size() - 1; size >= 0; size--) {
            String str = stringArrayList.get(size);
            if (PermissionApi.isSpecialPermission(str) && !PermissionApi.isGrantedPermission(activity, str) && (AndroidVersion.isAndroid11() || !PermissionUtils.equalsPermission(str, Permission.MANAGE_EXTERNAL_STORAGE))) {
                StartActivityManager.startActivityForResult(this, PermissionApi.getSmartPermissionIntent(activity, PermissionUtils.asArrayList(str)), getArguments().getInt(REQUEST_CODE));
                z = true;
            }
        }
        if (z) {
            return;
        }
        requestDangerousPermission();
    }

    public void requestDangerousPermission() {
        Activity activity = getActivity();
        Bundle arguments = getArguments();
        if (activity == null || arguments == null) {
            return;
        }
        int i = arguments.getInt(REQUEST_CODE);
        ArrayList<String> stringArrayList = arguments.getStringArrayList(REQUEST_PERMISSIONS);
        if (stringArrayList == null || stringArrayList.isEmpty()) {
            return;
        }
        if (!AndroidVersion.isAndroid6()) {
            int size = stringArrayList.size();
            int[] iArr = new int[size];
            for (int i2 = 0; i2 < size; i2++) {
                iArr[i2] = PermissionApi.isGrantedPermission(activity, stringArrayList.get(i2)) ? 0 : -1;
            }
            onRequestPermissionsResult(i, (String[]) stringArrayList.toArray(new String[0]), iArr);
            return;
        }
        if (AndroidVersion.isAndroid13() && stringArrayList.size() >= 2 && PermissionUtils.containsPermission(stringArrayList, Permission.BODY_SENSORS_BACKGROUND)) {
            ArrayList arrayList = new ArrayList(stringArrayList);
            arrayList.remove(Permission.BODY_SENSORS_BACKGROUND);
            splitTwiceRequestPermission(activity, stringArrayList, arrayList, i);
            return;
        }
        if (AndroidVersion.isAndroid10() && stringArrayList.size() >= 2 && PermissionUtils.containsPermission(stringArrayList, Permission.ACCESS_BACKGROUND_LOCATION)) {
            ArrayList arrayList2 = new ArrayList(stringArrayList);
            arrayList2.remove(Permission.ACCESS_BACKGROUND_LOCATION);
            splitTwiceRequestPermission(activity, stringArrayList, arrayList2, i);
        } else {
            if (AndroidVersion.isAndroid10() && PermissionUtils.containsPermission(stringArrayList, Permission.ACCESS_MEDIA_LOCATION) && PermissionUtils.containsPermission(stringArrayList, Permission.READ_EXTERNAL_STORAGE)) {
                ArrayList arrayList3 = new ArrayList(stringArrayList);
                arrayList3.remove(Permission.ACCESS_MEDIA_LOCATION);
                splitTwiceRequestPermission(activity, stringArrayList, arrayList3, i);
                return;
            }
            requestPermissions((String[]) stringArrayList.toArray(new String[stringArrayList.size() - 1]), i);
        }
    }

    public void splitTwiceRequestPermission(Activity activity, List<String> list, List<String> list2, int i) {
        ArrayList arrayList = new ArrayList(list);
        Iterator<String> it = list2.iterator();
        while (it.hasNext()) {
            arrayList.remove(it.next());
        }
        launch(activity, list2, new OnPermissionInterceptor() { // from class: com.hjq.permissions.PermissionFragment.1
            @Override // com.hjq.permissions.OnPermissionInterceptor
            public /* synthetic */ void deniedPermissionRequest(Activity activity2, List list3, List list4, boolean z, OnPermissionCallback onPermissionCallback) {
                OnPermissionInterceptor.CC.$default$deniedPermissionRequest(this, activity2, list3, list4, z, onPermissionCallback);
            }

            @Override // com.hjq.permissions.OnPermissionInterceptor
            public /* synthetic */ void finishPermissionRequest(Activity activity2, List list3, boolean z, OnPermissionCallback onPermissionCallback) {
                OnPermissionInterceptor.CC.$default$finishPermissionRequest(this, activity2, list3, z, onPermissionCallback);
            }

            @Override // com.hjq.permissions.OnPermissionInterceptor
            public /* synthetic */ void grantedPermissionRequest(Activity activity2, List list3, List list4, boolean z, OnPermissionCallback onPermissionCallback) {
                OnPermissionInterceptor.CC.$default$grantedPermissionRequest(this, activity2, list3, list4, z, onPermissionCallback);
            }

            @Override // com.hjq.permissions.OnPermissionInterceptor
            public /* synthetic */ void launchPermissionRequest(Activity activity2, List list3, OnPermissionCallback onPermissionCallback) {
                PermissionFragment.launch(activity2, list3, this, onPermissionCallback);
            }
        }, new AnonymousClass2(activity, arrayList, list, i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.hjq.permissions.PermissionFragment$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass2 implements OnPermissionCallback {
        final /* synthetic */ Activity val$activity;
        final /* synthetic */ List val$allPermissions;
        final /* synthetic */ int val$requestCode;
        final /* synthetic */ ArrayList val$secondPermissions;

        AnonymousClass2(Activity activity, ArrayList arrayList, List list, int i) {
            this.val$activity = activity;
            this.val$secondPermissions = arrayList;
            this.val$allPermissions = list;
            this.val$requestCode = i;
        }

        @Override // com.hjq.permissions.OnPermissionCallback
        public void onGranted(List<String> list, boolean z) {
            if (z && PermissionFragment.this.isAdded()) {
                long j = AndroidVersion.isAndroid13() ? 150L : 0L;
                final Activity activity = this.val$activity;
                final ArrayList arrayList = this.val$secondPermissions;
                final List list2 = this.val$allPermissions;
                final int i = this.val$requestCode;
                PermissionUtils.postDelayed(new Runnable() { // from class: com.hjq.permissions.PermissionFragment$2$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        PermissionFragment.AnonymousClass2.this.m235lambda$onGranted$0$comhjqpermissionsPermissionFragment$2(activity, arrayList, list2, i);
                    }
                }, j);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onGranted$0$com-hjq-permissions-PermissionFragment$2, reason: not valid java name */
        public /* synthetic */ void m235lambda$onGranted$0$comhjqpermissionsPermissionFragment$2(Activity activity, final ArrayList arrayList, final List list, final int i) {
            PermissionFragment.launch(activity, arrayList, new OnPermissionInterceptor() { // from class: com.hjq.permissions.PermissionFragment.2.1
                @Override // com.hjq.permissions.OnPermissionInterceptor
                public /* synthetic */ void deniedPermissionRequest(Activity activity2, List list2, List list3, boolean z, OnPermissionCallback onPermissionCallback) {
                    OnPermissionInterceptor.CC.$default$deniedPermissionRequest(this, activity2, list2, list3, z, onPermissionCallback);
                }

                @Override // com.hjq.permissions.OnPermissionInterceptor
                public /* synthetic */ void finishPermissionRequest(Activity activity2, List list2, boolean z, OnPermissionCallback onPermissionCallback) {
                    OnPermissionInterceptor.CC.$default$finishPermissionRequest(this, activity2, list2, z, onPermissionCallback);
                }

                @Override // com.hjq.permissions.OnPermissionInterceptor
                public /* synthetic */ void grantedPermissionRequest(Activity activity2, List list2, List list3, boolean z, OnPermissionCallback onPermissionCallback) {
                    OnPermissionInterceptor.CC.$default$grantedPermissionRequest(this, activity2, list2, list3, z, onPermissionCallback);
                }

                @Override // com.hjq.permissions.OnPermissionInterceptor
                public /* synthetic */ void launchPermissionRequest(Activity activity2, List list2, OnPermissionCallback onPermissionCallback) {
                    PermissionFragment.launch(activity2, list2, this, onPermissionCallback);
                }
            }, new OnPermissionCallback() { // from class: com.hjq.permissions.PermissionFragment.2.2
                @Override // com.hjq.permissions.OnPermissionCallback
                public void onGranted(List<String> list2, boolean z) {
                    if (z && PermissionFragment.this.isAdded()) {
                        int[] iArr = new int[list.size()];
                        Arrays.fill(iArr, 0);
                        PermissionFragment.this.onRequestPermissionsResult(i, (String[]) list.toArray(new String[0]), iArr);
                    }
                }

                @Override // com.hjq.permissions.OnPermissionCallback
                public void onDenied(List<String> list2, boolean z) {
                    if (PermissionFragment.this.isAdded()) {
                        int[] iArr = new int[list.size()];
                        for (int i2 = 0; i2 < list.size(); i2++) {
                            iArr[i2] = PermissionUtils.containsPermission(arrayList, (String) list.get(i2)) ? -1 : 0;
                        }
                        PermissionFragment.this.onRequestPermissionsResult(i, (String[]) list.toArray(new String[0]), iArr);
                    }
                }
            });
        }

        @Override // com.hjq.permissions.OnPermissionCallback
        public void onDenied(List<String> list, boolean z) {
            if (PermissionFragment.this.isAdded()) {
                int[] iArr = new int[this.val$allPermissions.size()];
                Arrays.fill(iArr, -1);
                PermissionFragment.this.onRequestPermissionsResult(this.val$requestCode, (String[]) this.val$allPermissions.toArray(new String[0]), iArr);
            }
        }
    }

    @Override // android.app.Fragment
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        Bundle arguments = getArguments();
        Activity activity = getActivity();
        if (activity == null || arguments == null || this.mInterceptor == null || i != arguments.getInt(REQUEST_CODE)) {
            return;
        }
        OnPermissionCallback onPermissionCallback = this.mCallBack;
        this.mCallBack = null;
        OnPermissionInterceptor onPermissionInterceptor = this.mInterceptor;
        this.mInterceptor = null;
        REQUEST_CODE_ARRAY.remove(Integer.valueOf(i));
        if (strArr == null || strArr.length == 0 || iArr == null || iArr.length == 0) {
            return;
        }
        for (int i2 = 0; i2 < strArr.length; i2++) {
            iArr[i2] = PermissionApi.recheckPermissionResult(activity, strArr[i2], iArr[i2] == 0) ? 0 : -1;
        }
        ArrayList asArrayList = PermissionUtils.asArrayList(strArr);
        detachByActivity(activity);
        List<String> grantedPermissions = PermissionApi.getGrantedPermissions(asArrayList, iArr);
        if (grantedPermissions.size() == asArrayList.size()) {
            onPermissionInterceptor.grantedPermissionRequest(activity, asArrayList, grantedPermissions, true, onPermissionCallback);
            onPermissionInterceptor.finishPermissionRequest(activity, asArrayList, false, onPermissionCallback);
            return;
        }
        List<String> deniedPermissions = PermissionApi.getDeniedPermissions(asArrayList, iArr);
        onPermissionInterceptor.deniedPermissionRequest(activity, asArrayList, deniedPermissions, PermissionApi.isDoNotAskAgainPermissions(activity, deniedPermissions), onPermissionCallback);
        if (!grantedPermissions.isEmpty()) {
            onPermissionInterceptor.grantedPermissionRequest(activity, asArrayList, grantedPermissions, false, onPermissionCallback);
        }
        onPermissionInterceptor.finishPermissionRequest(activity, asArrayList, false, onPermissionCallback);
    }

    @Override // android.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        ArrayList<String> stringArrayList;
        Activity activity = getActivity();
        Bundle arguments = getArguments();
        if (activity == null || arguments == null || this.mDangerousRequest || i != arguments.getInt(REQUEST_CODE) || (stringArrayList = arguments.getStringArrayList(REQUEST_PERMISSIONS)) == null || stringArrayList.isEmpty()) {
            return;
        }
        this.mDangerousRequest = true;
        PermissionUtils.postActivityResult(stringArrayList, this);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (isAdded()) {
            requestDangerousPermission();
        }
    }
}
