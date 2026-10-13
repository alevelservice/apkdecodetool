.class public Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;
.super Landroid/view/SurfaceView;
.source "CameraSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field static mCameraInterface:Lcom/alipay/zoloz/hardware/camera/ICameraInterface;


# instance fields
.field mCameraCallback:Lcom/alipay/zoloz/hardware/camera/ICameraCallback;

.field mContext:Landroid/content/Context;

.field private mDeviceSetting:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

.field mPreviewRate:F

.field mSurfaceHolder:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mContext:Landroid/content/Context;

    .line 3
    iget-object p1, p0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alipay/mobile/security/bio/utils/DisplayUtil;->getScreenRate(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mPreviewRate:F

    .line 4
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 5
    iget-object p1, p0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 p2, -0x2

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 6
    iget-object p1, p0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 p2, 0x3

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 7
    iget-object p1, p0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method public static getCameraImpl(Landroid/content/Context;)Lcom/alipay/zoloz/hardware/camera/ICameraInterface;
    .locals 6

    .line 1
    sget-object v0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    if-nez v0, :cond_0

    const-string v0, "com.alipay.zoloz.hardware.camera.impl.AndroidImpl"

    .line 2
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 3
    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    sput-object p0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/ICameraInterface;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 9
    :cond_0
    :goto_0
    sget-object p0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    return-object p0
.end method

.method public static getCameraName()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lcom/alipay/android/phone/zoloz/camera/BuildConfig;

    const-string v1, "CAMERA"

    .line 2
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Android"

    :goto_0
    return-object v0
.end method

.method public static release()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    return-void
.end method


# virtual methods
.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public init([Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/alipay/zoloz/hardware/camera/utils/DeviceSettingUtil;->getPropertyDeviceSetting([Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;)Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mDeviceSetting:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    .line 2
    iget-object p1, p0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->getCameraImpl(Landroid/content/Context;)Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    .line 3
    sget-object p1, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mDeviceSetting:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    invoke-interface {p1, v0}, Lcom/alipay/zoloz/hardware/camera/ICameraInterface;->initCamera(Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;)V

    :cond_0
    return-void
.end method

.method public setCameraCallback(Lcom/alipay/zoloz/hardware/camera/ICameraCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraCallback:Lcom/alipay/zoloz/hardware/camera/ICameraCallback;

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .line 1
    sget-object p1, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    if-eqz p1, :cond_4

    .line 2
    iget-object p2, p0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget v0, p0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mPreviewRate:F

    invoke-interface {p1, p2, v0, p3, p4}, Lcom/alipay/zoloz/hardware/camera/ICameraInterface;->startPreview(Landroid/view/SurfaceHolder;FII)V

    .line 3
    iget-object p1, p0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraCallback:Lcom/alipay/zoloz/hardware/camera/ICameraCallback;

    if-eqz p1, :cond_4

    .line 4
    sget-object p1, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    invoke-interface {p1}, Lcom/alipay/zoloz/hardware/camera/ICameraInterface;->getCameraViewRotation()I

    move-result p1

    const/16 p2, 0x5a

    if-eq p1, p2, :cond_2

    const/16 p2, 0x10e

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/16 p2, 0xb4

    if-ne p1, p2, :cond_3

    .line 5
    :cond_1
    sget-object p1, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    invoke-interface {p1}, Lcom/alipay/zoloz/hardware/camera/ICameraInterface;->getPreviewWidth()I

    move-result p3

    .line 6
    sget-object p1, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    invoke-interface {p1}, Lcom/alipay/zoloz/hardware/camera/ICameraInterface;->getPreviewHeight()I

    move-result p4

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    sget-object p1, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    invoke-interface {p1}, Lcom/alipay/zoloz/hardware/camera/ICameraInterface;->getPreviewHeight()I

    move-result p3

    .line 8
    sget-object p1, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    invoke-interface {p1}, Lcom/alipay/zoloz/hardware/camera/ICameraInterface;->getPreviewWidth()I

    move-result p4

    .line 9
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraCallback:Lcom/alipay/zoloz/hardware/camera/ICameraCallback;

    int-to-double p2, p3

    int-to-double v0, p4

    invoke-interface {p1, p2, p3, v0, v1}, Lcom/alipay/zoloz/hardware/camera/ICameraCallback;->onSurfaceChanged(DD)V

    :cond_4
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraCallback:Lcom/alipay/zoloz/hardware/camera/ICameraCallback;

    invoke-interface {p1, v0}, Lcom/alipay/zoloz/hardware/camera/ICameraInterface;->setCallback(Lcom/alipay/zoloz/hardware/camera/ICameraCallback;)V

    .line 3
    :cond_0
    :try_start_0
    sget-object p1, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    if-eqz p1, :cond_1

    .line 4
    sget-object p1, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    invoke-interface {p1}, Lcom/alipay/zoloz/hardware/camera/ICameraInterface;->startCamera()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraCallback:Lcom/alipay/zoloz/hardware/camera/ICameraCallback;

    if-eqz p1, :cond_2

    .line 6
    invoke-interface {p1}, Lcom/alipay/zoloz/hardware/camera/ICameraCallback;->onSurfaceCreated()V

    :cond_2
    return-void

    :catch_0
    nop

    .line 7
    iget-object p1, p0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraCallback:Lcom/alipay/zoloz/hardware/camera/ICameraCallback;

    if-eqz p1, :cond_3

    const/4 v0, -0x1

    .line 8
    invoke-interface {p1, v0}, Lcom/alipay/zoloz/hardware/camera/ICameraCallback;->onError(I)V

    :cond_3
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/alipay/zoloz/hardware/camera/ICameraInterface;->stopCamera()V

    .line 3
    sget-object p1, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/alipay/zoloz/hardware/camera/ICameraInterface;->setCallback(Lcom/alipay/zoloz/hardware/camera/ICameraCallback;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->mCameraCallback:Lcom/alipay/zoloz/hardware/camera/ICameraCallback;

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1}, Lcom/alipay/zoloz/hardware/camera/ICameraCallback;->onSurfaceDestroyed()V

    :cond_1
    return-void
.end method
