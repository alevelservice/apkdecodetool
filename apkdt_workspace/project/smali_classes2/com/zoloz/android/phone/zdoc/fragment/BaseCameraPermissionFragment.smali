.class public abstract Lcom/zoloz/android/phone/zdoc/fragment/BaseCameraPermissionFragment;
.super Lcom/zoloz/android/phone/zdoc/fragment/BaseFragment;
.source "BaseCameraPermissionFragment.java"

# interfaces
.implements Lcom/zoloz/android/phone/zdoc/fragment/PermissionDialogEvent;


# static fields
.field private static final CAMERA_PERMISSION_REQUEST_CODE:I = 0x1


# instance fields
.field private isFirst:Z

.field private mCameraSurfaceView:Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseCameraPermissionFragment;->isFirst:Z

    return-void
.end method

.method private dealCameraHasPermission()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseCameraPermissionFragment;->onCameraInit()V

    .line 2
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseCameraPermissionFragment;->mCameraSurfaceView:Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected abstract alertCameraNoPermissionDialog(Lcom/zoloz/android/phone/zdoc/fragment/PermissionDialogEvent;)V
.end method

.method public checkCameraPermission()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseCameraPermissionFragment;->isFirst:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseCameraPermissionFragment;->alertCameraNoPermissionDialog(Lcom/zoloz/android/phone/zdoc/fragment/PermissionDialogEvent;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseCameraPermissionFragment;->isFirst:Z

    .line 4
    invoke-virtual {p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseCameraPermissionFragment;->hasCameraPermission()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseCameraPermissionFragment;->dealCameraHasPermission()V

    goto :goto_0

    :cond_1
    const-string v0, "android.permission.CAMERA"

    .line 6
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public execute()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x40000000    # 2.0f

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x800000

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected findViewById(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseCameraPermissionFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getLayoutId()I
.end method

.method protected hasCameraPermission()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected initView()V
    .locals 2

    .line 1
    sget v0, Lcom/zoloz/android/phone/zdoc/R$id;->surface:I

    invoke-virtual {p0, v0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseCameraPermissionFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;

    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseCameraPermissionFragment;->mCameraSurfaceView:Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;

    .line 2
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseCameraPermissionFragment;->mCameraSurfaceView:Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseCameraPermissionFragment;->onInitView()V

    .line 4
    invoke-virtual {p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseCameraPermissionFragment;->onCameraInit()V

    return-void
.end method

.method protected abstract onCameraInit()V
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseCameraPermissionFragment;->mRootView:Landroid/view/View;

    if-nez p3, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseCameraPermissionFragment;->getLayoutId()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseCameraPermissionFragment;->mRootView:Landroid/view/View;

    .line 3
    invoke-virtual {p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseCameraPermissionFragment;->initView()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 5
    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_1

    .line 6
    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseCameraPermissionFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseCameraPermissionFragment;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method protected abstract onInitView()V
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseCameraPermissionFragment;->mCameraSurfaceView:Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 2
    array-length p1, p3

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseCameraPermissionFragment;->dealCameraHasPermission()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseCameraPermissionFragment;->alertCameraNoPermissionDialog(Lcom/zoloz/android/phone/zdoc/fragment/PermissionDialogEvent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseCameraPermissionFragment;->mCameraSurfaceView:Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    return-void
.end method
