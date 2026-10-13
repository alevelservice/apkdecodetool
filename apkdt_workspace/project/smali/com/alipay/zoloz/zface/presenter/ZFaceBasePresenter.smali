.class public Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;
.super Ljava/lang/Object;
.source "ZFaceBasePresenter.java"

# interfaces
.implements Lcom/alipay/mobile/security/bio/service/BioUploadCallBack;
.implements Lcom/alipay/zoloz/hardware/camera/ICameraCallback;
.implements Lcom/alipay/zoloz/toyger/face/ToygerFaceCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "ZFaceCore"


# instance fields
.field private cameraFrameCount:I

.field private context:Landroid/content/Context;

.field private frameTime:I

.field private isAttached:Z

.field private isFirstFrame:Z

.field private isPaused:Z

.field private mAlertManager:Lcom/alipay/zoloz/zface/manager/AlertManager;

.field private mAlgorithAngle:I

.field private mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

.field private mBioUploadService:Lcom/alipay/mobile/security/bio/service/BioUploadService;

.field private mCameraInterface:Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

.field private mCurrentToygerFrame:Lcom/alipay/zoloz/zface/beans/ToygerFrame;

.field private mDeviceSetting:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

.field private mFpsMonitor:Lcom/alipay/zoloz/zface/utils/ToygerMonitor;

.field private mHighQualityAttr:Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;

.field private mLocalBroadcastManager:La/n/a/a;

.field private mPreviewData:Lcom/alipay/zoloz/zface/beans/PreviewData;

.field private mRecordTgResult:I

.field private mRemoteConfig:Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;

.field private mToygerFaceService:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;

.field private mToygerIspService:Lcom/alipay/zoloz/zface/services/ToygerIspService;

.field private mUploadContent:Lcom/alipay/zoloz/toyger/upload/UploadContent;

.field private mUploadManager:Lcom/alipay/zoloz/zface/manager/UploadManager;

.field private mZFaceRecordService:Lcom/alipay/zoloz/zface/services/ZFaceRecordService;

.field private tgFrameCount:I

.field private view:Lcom/alipay/zoloz/zface/presenter/ZFaceCallback;


# direct methods
.method public constructor <init>(Lcom/alipay/zoloz/zface/presenter/ZFaceCallback;Ljava/lang/String;Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;

    invoke-direct {v0}, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;-><init>()V

    iput-object v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mToygerFaceService:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mDeviceSetting:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    const/16 v1, 0x10e

    .line 4
    iput v1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mAlgorithAngle:I

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->isAttached:Z

    .line 6
    iput-boolean v1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->isPaused:Z

    .line 7
    iput v1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->frameTime:I

    const/4 v2, 0x1

    .line 8
    iput v2, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mRecordTgResult:I

    .line 9
    iput v1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->cameraFrameCount:I

    .line 10
    iput v1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->tgFrameCount:I

    .line 11
    iput-boolean v2, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->isFirstFrame:Z

    .line 12
    new-instance v1, Lcom/alipay/zoloz/zface/beans/PreviewData;

    invoke-direct {v1}, Lcom/alipay/zoloz/zface/beans/PreviewData;-><init>()V

    iput-object v1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mPreviewData:Lcom/alipay/zoloz/zface/beans/PreviewData;

    .line 13
    invoke-static {}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getCurrentInstance()Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    move-result-object v1

    .line 14
    const-class v2, Lcom/alipay/mobile/security/bio/service/BioAppManager;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/security/bio/service/BioAppManager;

    invoke-virtual {v2, p2}, Lcom/alipay/mobile/security/bio/service/BioAppManager;->getBioAppDescription(Ljava/lang/String;)Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    move-result-object p2

    iput-object p2, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "route|get protocol:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    iget-object p2, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    if-eqz p2, :cond_7

    .line 17
    :try_start_0
    iget-object p2, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {p2}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getCfg()Ljava/lang/String;

    move-result-object p2

    const-class v2, Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;

    invoke-static {p2, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;

    iput-object p2, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mRemoteConfig:Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    new-instance p2, Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;

    invoke-direct {p2}, Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;-><init>()V

    iput-object p2, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mRemoteConfig:Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;

    .line 20
    :goto_0
    iput-object p1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->view:Lcom/alipay/zoloz/zface/presenter/ZFaceCallback;

    .line 21
    new-instance p2, Lcom/alipay/zoloz/zface/manager/AlertManager;

    iget-object v2, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mRemoteConfig:Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;

    invoke-direct {p2, v2}, Lcom/alipay/zoloz/zface/manager/AlertManager;-><init>(Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;)V

    iput-object p2, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mAlertManager:Lcom/alipay/zoloz/zface/manager/AlertManager;

    .line 22
    const-class p2, Lcom/alipay/zoloz/zface/services/ZFaceRecordService;

    invoke-virtual {v1, p2}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alipay/zoloz/zface/services/ZFaceRecordService;

    iput-object p2, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mZFaceRecordService:Lcom/alipay/zoloz/zface/services/ZFaceRecordService;

    .line 23
    invoke-direct {p0}, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->recordExtEntrySDK()V

    .line 24
    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->context:Landroid/content/Context;

    .line 25
    const-class p2, Lcom/alipay/mobile/security/bio/service/BioUploadService;

    invoke-virtual {v1, p2}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alipay/mobile/security/bio/service/BioUploadService;

    iput-object p2, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mBioUploadService:Lcom/alipay/mobile/security/bio/service/BioUploadService;

    .line 26
    iget-object p2, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mBioUploadService:Lcom/alipay/mobile/security/bio/service/BioUploadService;

    invoke-virtual {p2, p0}, Lcom/alipay/mobile/security/bio/service/BioUploadService;->addCallBack(Lcom/alipay/mobile/security/bio/service/BioUploadCallBack;)V

    .line 27
    const-class p2, Lcom/alipay/zoloz/zface/services/ToygerIspService;

    invoke-virtual {v1, p2}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alipay/zoloz/zface/services/ToygerIspService;

    iput-object p2, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mToygerIspService:Lcom/alipay/zoloz/zface/services/ToygerIspService;

    .line 28
    new-instance p2, Lcom/alipay/zoloz/zface/manager/UploadManager;

    iget-object v2, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mToygerFaceService:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;

    iget-object v3, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mRemoteConfig:Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;

    iget-object v4, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-direct {p2, v1, v2, v3, v4}, Lcom/alipay/zoloz/zface/manager/UploadManager;-><init>(Lcom/alipay/mobile/security/bio/service/BioServiceManager;Lcom/alipay/zoloz/toyger/face/ToygerFaceService;Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;Lcom/alipay/mobile/security/bio/service/BioAppDescription;)V

    iput-object p2, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mUploadManager:Lcom/alipay/zoloz/zface/manager/UploadManager;

    .line 29
    iget-object p2, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->context:Landroid/content/Context;

    invoke-static {p2}, La/n/a/a;->a(Landroid/content/Context;)La/n/a/a;

    move-result-object p2

    iput-object p2, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mLocalBroadcastManager:La/n/a/a;

    .line 30
    iget-object p2, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->getCameraImpl(Landroid/content/Context;)Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    move-result-object p2

    iput-object p2, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    .line 31
    invoke-direct {p0}, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->initRotation()V

    .line 32
    invoke-virtual {p3, p0}, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->setCameraCallback(Lcom/alipay/zoloz/hardware/camera/ICameraCallback;)V

    .line 33
    iget-object p2, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    if-eqz p2, :cond_0

    .line 34
    invoke-interface {p2, p0}, Lcom/alipay/zoloz/hardware/camera/ICameraInterface;->setCallback(Lcom/alipay/zoloz/hardware/camera/ICameraCallback;)V

    .line 35
    :cond_0
    iget-object p2, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mRemoteConfig:Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;

    invoke-virtual {p2}, Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;->getDeviceSettings()[Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->convert([Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;)[Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/alipay/zoloz/hardware/camera/widget/CameraSurfaceView;->init([Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;)V

    .line 36
    iget-object p2, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    if-eqz p2, :cond_2

    .line 37
    new-instance p2, Lcom/alipay/zoloz/toyger/algorithm/ToygerCameraConfig;

    invoke-direct {p2}, Lcom/alipay/zoloz/toyger/algorithm/ToygerCameraConfig;-><init>()V

    .line 38
    iget-object p3, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    invoke-interface {p3}, Lcom/alipay/zoloz/hardware/camera/ICameraInterface;->getCameraParams()Lcom/alipay/zoloz/hardware/camera/CameraParams;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 39
    iget-object v1, p3, Lcom/alipay/zoloz/hardware/camera/CameraParams;->color_intrin:[F

    iput-object v1, p2, Lcom/alipay/zoloz/toyger/algorithm/ToygerCameraConfig;->colorIntrin:[F

    .line 40
    iget-object v1, p3, Lcom/alipay/zoloz/hardware/camera/CameraParams;->depth_intrin:[F

    iput-object v1, p2, Lcom/alipay/zoloz/toyger/algorithm/ToygerCameraConfig;->depthIntrin:[F

    .line 41
    iget-object v1, p3, Lcom/alipay/zoloz/hardware/camera/CameraParams;->extrin:[F

    iput-object v1, p2, Lcom/alipay/zoloz/toyger/algorithm/ToygerCameraConfig;->color2depthExtrin:[F

    .line 42
    iget-boolean p3, p3, Lcom/alipay/zoloz/hardware/camera/CameraParams;->isAligned:Z

    iput-boolean p3, p2, Lcom/alipay/zoloz/toyger/algorithm/ToygerCameraConfig;->isAligned:Z

    .line 43
    :cond_1
    iget-object p3, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    invoke-interface {p3}, Lcom/alipay/zoloz/hardware/camera/ICameraInterface;->getROI()Landroid/graphics/Rect;

    move-result-object p3

    iput-object p3, p2, Lcom/alipay/zoloz/toyger/algorithm/ToygerCameraConfig;->roiRect:Landroid/graphics/Rect;

    .line 44
    :cond_2
    iget-object p2, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {p2}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;

    move-result-object p2

    .line 45
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 46
    iget-object p3, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    iget-object v2, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mRemoteConfig:Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;

    invoke-virtual {v2}, Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;->getEnv()I

    move-result v2

    invoke-static {p3, v1, v2}, Lcom/alipay/zoloz/zface/manager/UploadManager;->getPublicKey(Landroid/content/Context;Lcom/alipay/mobile/security/bio/service/BioAppDescription;I)Ljava/lang/String;

    move-result-object p3

    const-string v1, "pubkey"

    invoke-virtual {v6, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_3

    .line 47
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_3

    const-string p3, "meta_serializer"

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 48
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v6, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_3
    iget-object p2, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mRemoteConfig:Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;

    invoke-virtual {p2}, Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;->getUpload()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    const-string p3, ""

    if-nez p2, :cond_4

    move-object v5, p3

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mRemoteConfig:Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;

    invoke-virtual {p2}, Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;->getUpload()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    move-object v5, p2

    .line 50
    :goto_1
    iget-object p2, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mRemoteConfig:Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;

    invoke-virtual {p2}, Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;->getAlgorithm()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    if-nez p2, :cond_5

    move-object v4, p3

    goto :goto_2

    :cond_5
    iget-object p2, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mRemoteConfig:Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;

    invoke-virtual {p2}, Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;->getAlgorithm()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    move-object v4, p2

    .line 51
    :goto_2
    new-instance p2, Lcom/alipay/zoloz/zface/utils/ToygerMonitor;

    invoke-direct {p2}, Lcom/alipay/zoloz/zface/utils/ToygerMonitor;-><init>()V

    iput-object p2, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mFpsMonitor:Lcom/alipay/zoloz/zface/utils/ToygerMonitor;

    .line 52
    iget-object p2, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mFpsMonitor:Lcom/alipay/zoloz/zface/utils/ToygerMonitor;

    invoke-virtual {p2}, Lcom/alipay/zoloz/zface/utils/ToygerMonitor;->initStart()V

    .line 53
    iget-object v1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mToygerFaceService:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;

    iget-object v2, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->context:Landroid/content/Context;

    move-object v3, p0

    invoke-virtual/range {v1 .. v6}, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->init(Landroid/content/Context;Lcom/alipay/zoloz/toyger/face/ToygerFaceCallback;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 54
    iget-object p2, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mAlertManager:Lcom/alipay/zoloz/zface/manager/AlertManager;

    const/16 p3, 0xa

    invoke-virtual {p2, p3}, Lcom/alipay/zoloz/zface/manager/AlertManager;->parseAlertData(I)Lcom/alipay/zoloz/zface/beans/AlertData;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/alipay/zoloz/zface/presenter/ZFaceCallback;->onErrorEvent(Lcom/alipay/zoloz/zface/beans/AlertData;)V

    :cond_6
    const-string p1, "detectCondStart"

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->record(Ljava/lang/String;Ljava/util/Map;)V

    .line 56
    iget-object p1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mRemoteConfig:Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;

    invoke-virtual {p1}, Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;->getAlgorithm()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/zoloz/zface/utils/ObjectUtil;->objectToStringMap(Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object p1

    .line 57
    invoke-static {}, Lcom/alipay/zoloz/zface/services/TimeRecord;->getInstance()Lcom/alipay/zoloz/zface/services/TimeRecord;

    move-result-object p2

    const-string p3, "EnterDetectionStart"

    invoke-virtual {p2, p3}, Lcom/alipay/zoloz/zface/services/TimeRecord;->recordTime(Ljava/lang/String;)V

    .line 58
    iget-object p2, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mZFaceRecordService:Lcom/alipay/zoloz/zface/services/ZFaceRecordService;

    invoke-virtual {p2, p3, p1}, Lcom/alipay/zoloz/zface/services/ZFaceRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V

    :cond_7
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;)Lcom/alipay/zoloz/zface/presenter/ZFaceCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->view:Lcom/alipay/zoloz/zface/presenter/ZFaceCallback;

    return-object p0
.end method

.method private convert([Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;)[Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 1
    :cond_0
    array-length v0, p1

    .line 2
    new-array v1, v0, [Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3
    new-instance v3, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    invoke-direct {v3}, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;-><init>()V

    aput-object v3, v1, v2

    .line 4
    aget-object v3, v1, v2

    aget-object v4, p1, v2

    invoke-virtual {v4}, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->isDisplayAuto()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->setDisplayAuto(Z)V

    .line 5
    aget-object v3, v1, v2

    aget-object v4, p1, v2

    invoke-virtual {v4}, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->getDisplayAngle()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->setDisplayAngle(I)V

    .line 6
    aget-object v3, v1, v2

    aget-object v4, p1, v2

    invoke-virtual {v4}, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->isAlgorithmAuto()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->setAlgorithmAuto(Z)V

    .line 7
    aget-object v3, v1, v2

    aget-object v4, p1, v2

    invoke-virtual {v4}, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->getAlgorithmAngle()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->setAlgorithmAngle(I)V

    .line 8
    aget-object v3, v1, v2

    aget-object v4, p1, v2

    invoke-virtual {v4}, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->isCameraAuto()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->setCameraAuto(Z)V

    .line 9
    aget-object v3, v1, v2

    aget-object v4, p1, v2

    invoke-virtual {v4}, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->getCameraID()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->setCameraID(I)V

    .line 10
    aget-object v3, v1, v2

    aget-object v4, p1, v2

    invoke-virtual {v4}, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->getMaxApiLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->setMaxApiLevel(I)V

    .line 11
    aget-object v3, v1, v2

    aget-object v4, p1, v2

    invoke-virtual {v4}, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->getMinApiLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->setMinApiLevel(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_1
    return-object p1
.end method

.method private initRotation()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mRemoteConfig:Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;

    invoke-virtual {v0}, Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;->getDeviceSettings()[Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    array-length v2, v0

    if-lez v2, :cond_0

    .line 3
    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mDeviceSetting:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    invoke-direct {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;-><init>()V

    iput-object v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mDeviceSetting:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Lcom/alipay/zoloz/hardware/camera/ICameraInterface;->getCameraViewRotation()I

    move-result v1

    :cond_1
    rsub-int v0, v1, 0x168

    .line 7
    rem-int/lit16 v0, v0, 0x168

    .line 8
    iget-object v1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mDeviceSetting:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->isAlgorithmAuto()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "common|initRotation is auto : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 10
    iput v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mAlgorithAngle:I

    goto :goto_1

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mDeviceSetting:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->getAlgorithmAngle()I

    move-result v0

    iput v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mAlgorithAngle:I

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "common|initRotation is not auto : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mAlgorithAngle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_1
    return-void
.end method

.method private onProcessOneImageFinish(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mUploadManager:Lcom/alipay/zoloz/zface/manager/UploadManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/alipay/zoloz/zface/manager/UploadManager;->getNineShootManager()Lcom/alipay/zoloz/zface/manager/NineShootManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/zoloz/zface/manager/NineShootManager;->shootToygerFrame(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;)V

    :cond_0
    return-void
.end method

.method private record(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mZFaceRecordService:Lcom/alipay/zoloz/zface/services/ZFaceRecordService;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/alipay/zoloz/zface/services/ZFaceRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private recordExtEntrySDK()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mRemoteConfig:Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;

    invoke-virtual {v2}, Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;->getSceneEnv()Lcom/alipay/mobile/security/bio/config/bean/SceneEnv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/security/bio/config/bean/SceneEnv;->getSceneCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "sceneId"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mRemoteConfig:Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;

    invoke-virtual {v3}, Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;->getUi()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uiVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;

    move-result-object v1

    const-string v2, "verifyid"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "verifyId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Lcom/alipay/mobile/security/bio/service/local/apsecurity/ApSecurityService;->getStaticApDidToken()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-static {}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getCurrentInstance()Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    move-result-object v2

    .line 9
    const-class v3, Lcom/alipay/mobile/security/bio/service/local/apsecurity/ApSecurityService;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/security/bio/service/local/apsecurity/ApSecurityService;

    if-eqz v2, :cond_1

    .line 10
    invoke-virtual {v2}, Lcom/alipay/mobile/security/bio/service/local/apsecurity/ApSecurityService;->getApDidToken()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v2, "APDIDTOKEN"

    .line 11
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;

    move-result-object v1

    const-string v2, "TOKEN_ID"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "product"

    const-string v2, "toyger"

    .line 13
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bioType"

    const-string v2, "facedetect"

    .line 14
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/NetworkUtil;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "networkType"

    .line 16
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mZFaceRecordService:Lcom/alipay/zoloz/zface/services/ZFaceRecordService;

    invoke-virtual {v1, v0}, Lcom/alipay/zoloz/zface/services/ZFaceRecordService;->addExtProperties(Ljava/util/Map;)V

    .line 18
    iget-object v1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mZFaceRecordService:Lcom/alipay/zoloz/zface/services/ZFaceRecordService;

    const-string v2, "entrySDK"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/zoloz/zface/services/ZFaceRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected attachView()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->isAttached:Z

    return-void
.end method

.method public clearUpload()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mBioUploadService:Lcom/alipay/mobile/security/bio/service/BioUploadService;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/service/BioUploadService;->clearUp()V

    :cond_0
    return-void
.end method

.method public getAlertData(I)Lcom/alipay/zoloz/zface/beans/AlertData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mAlertManager:Lcom/alipay/zoloz/zface/manager/AlertManager;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alipay/zoloz/zface/manager/AlertManager;->parseAlertData(I)Lcom/alipay/zoloz/zface/beans/AlertData;

    move-result-object p1

    return-object p1
.end method

.method public getBioAppDescription()Lcom/alipay/mobile/security/bio/service/BioAppDescription;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    return-object v0
.end method

.method public getFaceRemoteConfig()Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mRemoteConfig:Lcom/alipay/zoloz/zface/beans/FaceRemoteConfig;

    return-object v0
.end method

.method public onAlignDepthPoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 7

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2
    iget-object v1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Lcom/alipay/zoloz/hardware/camera/ICameraInterface;->getColorWidth()I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    invoke-interface {v2}, Lcom/alipay/zoloz/hardware/camera/ICameraInterface;->getColorHeight()I

    move-result v2

    .line 5
    iget-object v3, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    invoke-interface {v3}, Lcom/alipay/zoloz/hardware/camera/ICameraInterface;->getDepthWidth()I

    move-result v3

    .line 6
    iget-object v4, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    invoke-interface {v4}, Lcom/alipay/zoloz/hardware/camera/ICameraInterface;->getDepthHeight()I

    move-result v4

    .line 7
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    .line 8
    iget v6, p1, Landroid/graphics/PointF;->x:F

    int-to-float v1, v1

    mul-float v6, v6, v1

    iput v6, v5, Landroid/graphics/PointF;->x:F

    .line 9
    iget p1, p1, Landroid/graphics/PointF;->y:F

    int-to-float v1, v2

    mul-float p1, p1, v1

    iput p1, v5, Landroid/graphics/PointF;->y:F

    .line 10
    iget-object p1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    invoke-interface {p1, v5}, Lcom/alipay/zoloz/hardware/camera/ICameraInterface;->colorToDepth(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 11
    iget v1, p1, Landroid/graphics/PointF;->x:F

    int-to-float v2, v3

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 12
    iget p1, p1, Landroid/graphics/PointF;->y:F

    int-to-float v1, v4

    div-float/2addr p1, v1

    iput p1, v0, Landroid/graphics/PointF;->y:F

    :cond_0
    return-object v0
.end method

.method public onComplete(I[B[BZ)Z
    .locals 4

    .line 1
    iget-boolean p1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->isPaused:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 2
    :cond_0
    iput v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mRecordTgResult:I

    .line 3
    invoke-virtual {p0}, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->pause()V

    .line 4
    iget-boolean p1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->isAttached:Z

    if-eqz p1, :cond_1

    .line 5
    new-instance p1, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter$1;

    invoke-direct {p1, p0}, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter$1;-><init>(Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;)V

    invoke-static {p1}, Lcom/alipay/zoloz/zface/utils/Tools;->runMainLooper(Ljava/lang/Runnable;)V

    .line 6
    :cond_1
    new-instance p1, Lcom/alipay/zoloz/toyger/upload/UploadContent;

    invoke-direct {p1, p2, p3, p4}, Lcom/alipay/zoloz/toyger/upload/UploadContent;-><init>([B[BZ)V

    .line 7
    iget-object p2, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mCurrentToygerFrame:Lcom/alipay/zoloz/zface/beans/ToygerFrame;

    iget-object p2, p2, Lcom/alipay/zoloz/zface/beans/ToygerFrame;->tgFaceAttr:Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;

    invoke-static {p2}, Lcom/alipay/zoloz/zface/utils/ToygerFrameUtil;->getFaceParam(Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;)Ljava/util/Map;

    move-result-object p2

    const-string p3, "bis_action"

    const-string p4, "live_body_end"

    .line 8
    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Lcom/alipay/zoloz/zface/services/TimeRecord;->getInstance()Lcom/alipay/zoloz/zface/services/TimeRecord;

    move-result-object p3

    const-string p4, "livebodyStart"

    invoke-virtual {p3, p4}, Lcom/alipay/zoloz/zface/services/TimeRecord;->getTimeInterval(Ljava/lang/String;)J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    const-string p4, "timecost"

    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "livebodyEnd"

    .line 10
    invoke-direct {p0, p3, p2}, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->record(Ljava/lang/String;Ljava/util/Map;)V

    .line 11
    invoke-static {}, Lcom/alipay/zoloz/zface/services/TimeRecord;->getInstance()Lcom/alipay/zoloz/zface/services/TimeRecord;

    move-result-object p3

    const-string p4, "uploadStart"

    invoke-virtual {p3, p4}, Lcom/alipay/zoloz/zface/services/TimeRecord;->recordTime(Ljava/lang/String;)V

    .line 12
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mHighQualityAttr:Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;

    iget v1, v1, Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;->quality:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "faceQuality"

    invoke-interface {p3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p1, Lcom/alipay/zoloz/toyger/upload/UploadContent;->content:[B

    if-eqz v0, :cond_2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/alipay/zoloz/toyger/upload/UploadContent;->content:[B

    array-length v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x44800000    # 1024.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "payload"

    .line 16
    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "payload "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    :cond_2
    invoke-direct {p0, p4, p3}, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->record(Ljava/lang/String;Ljava/util/Map;)V

    .line 19
    iput-object p1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mUploadContent:Lcom/alipay/zoloz/toyger/upload/UploadContent;

    .line 20
    iget-object p2, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mUploadManager:Lcom/alipay/zoloz/zface/manager/UploadManager;

    invoke-virtual {p2, p1}, Lcom/alipay/zoloz/zface/manager/UploadManager;->uploadFaceInfo(Lcom/alipay/zoloz/toyger/upload/UploadContent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onError(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception|camera error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mAlertManager:Lcom/alipay/zoloz/zface/manager/AlertManager;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/alipay/zoloz/zface/manager/AlertManager;->parseAlertData(I)Lcom/alipay/zoloz/zface/beans/AlertData;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mAlertManager:Lcom/alipay/zoloz/zface/manager/AlertManager;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/alipay/zoloz/zface/manager/AlertManager;->parseAlertData(I)Lcom/alipay/zoloz/zface/beans/AlertData;

    move-result-object p1

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->view:Lcom/alipay/zoloz/zface/presenter/ZFaceCallback;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, p1}, Lcom/alipay/zoloz/zface/presenter/ZFaceCallback;->onErrorEvent(Lcom/alipay/zoloz/zface/beans/AlertData;)V

    :cond_1
    return-void
.end method

.method public onEvent(ILjava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "route|onEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, -0x7

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x6

    if-eq p1, v0, :cond_5

    const/4 p2, -0x3

    const/4 v0, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, -0x2

    if-eq p1, p2, :cond_2

    const/4 p2, -0x1

    if-eq p1, p2, :cond_6

    if-eq p1, v2, :cond_1

    :cond_0
    :goto_0
    const/4 v2, 0x0

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "onEvent init success"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mFpsMonitor:Lcom/alipay/zoloz/zface/utils/ToygerMonitor;

    invoke-virtual {p1}, Lcom/alipay/zoloz/zface/utils/ToygerMonitor;->initEnd()V

    goto :goto_0

    .line 4
    :cond_2
    iget-boolean p1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->isAttached:Z

    if-eqz p1, :cond_6

    .line 5
    iget-object p1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->view:Lcom/alipay/zoloz/zface/presenter/ZFaceCallback;

    iget-object p2, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mAlertManager:Lcom/alipay/zoloz/zface/manager/AlertManager;

    invoke-virtual {p2, v0}, Lcom/alipay/zoloz/zface/manager/AlertManager;->parseAlertData(I)Lcom/alipay/zoloz/zface/beans/AlertData;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/alipay/zoloz/zface/presenter/ZFaceCallback;->onErrorEvent(Lcom/alipay/zoloz/zface/beans/AlertData;)V

    goto :goto_1

    .line 6
    :cond_3
    iget-boolean p1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->isAttached:Z

    if-eqz p1, :cond_4

    .line 7
    iget-object p1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->view:Lcom/alipay/zoloz/zface/presenter/ZFaceCallback;

    iget-object p2, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mAlertManager:Lcom/alipay/zoloz/zface/manager/AlertManager;

    const/16 v1, 0x9

    invoke-virtual {p2, v1}, Lcom/alipay/zoloz/zface/manager/AlertManager;->parseAlertData(I)Lcom/alipay/zoloz/zface/beans/AlertData;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/alipay/zoloz/zface/presenter/ZFaceCallback;->onErrorEvent(Lcom/alipay/zoloz/zface/beans/AlertData;)V

    .line 8
    :cond_4
    iput v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mRecordTgResult:I

    goto :goto_1

    .line 9
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".onEvent() : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->map2String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_6
    :goto_1
    return v2
.end method

.method public bridge synthetic onHighQualityFrame(Landroid/graphics/Bitmap;Lcom/alipay/zoloz/toyger/ToygerAttr;)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->onHighQualityFrame(Landroid/graphics/Bitmap;Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;)Z

    move-result p1

    return p1
.end method

.method public onHighQualityFrame(Landroid/graphics/Bitmap;Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;)Z
    .locals 1

    .line 2
    iput-object p2, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mHighQualityAttr:Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;

    .line 3
    iget-boolean v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->isAttached:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->view:Lcom/alipay/zoloz/zface/presenter/ZFaceCallback;

    invoke-interface {v0, p1, p2}, Lcom/alipay/zoloz/zface/presenter/ZFaceCallback;->onFrameQualify(Landroid/graphics/Bitmap;Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onPreviewFrame(Lcom/alipay/zoloz/hardware/camera/CameraData;)V
    .locals 16

    move-object/from16 v1, p0

    .line 1
    iget-boolean v0, v1, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->isFirstFrame:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, v1, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Lcom/alipay/zoloz/toyger/algorithm/ToygerCameraConfig;

    invoke-direct {v0}, Lcom/alipay/zoloz/toyger/algorithm/ToygerCameraConfig;-><init>()V

    .line 4
    iget-object v3, v1, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    invoke-interface {v3}, Lcom/alipay/zoloz/hardware/camera/ICameraInterface;->getCameraParams()Lcom/alipay/zoloz/hardware/camera/CameraParams;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5
    iget-object v4, v3, Lcom/alipay/zoloz/hardware/camera/CameraParams;->color_intrin:[F

    iput-object v4, v0, Lcom/alipay/zoloz/toyger/algorithm/ToygerCameraConfig;->colorIntrin:[F

    .line 6
    iget-object v4, v3, Lcom/alipay/zoloz/hardware/camera/CameraParams;->depth_intrin:[F

    iput-object v4, v0, Lcom/alipay/zoloz/toyger/algorithm/ToygerCameraConfig;->depthIntrin:[F

    .line 7
    iget-object v4, v3, Lcom/alipay/zoloz/hardware/camera/CameraParams;->extrin:[F

    iput-object v4, v0, Lcom/alipay/zoloz/toyger/algorithm/ToygerCameraConfig;->color2depthExtrin:[F

    .line 8
    iget-boolean v3, v3, Lcom/alipay/zoloz/hardware/camera/CameraParams;->isAligned:Z

    iput-boolean v3, v0, Lcom/alipay/zoloz/toyger/algorithm/ToygerCameraConfig;->isAligned:Z

    .line 9
    :cond_0
    iget-object v3, v1, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    invoke-interface {v3}, Lcom/alipay/zoloz/hardware/camera/ICameraInterface;->getROI()Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/zoloz/toyger/algorithm/ToygerCameraConfig;->roiRect:Landroid/graphics/Rect;

    .line 10
    :cond_1
    iput-boolean v2, v1, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->isFirstFrame:Z

    .line 11
    :cond_2
    iget-boolean v0, v1, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->isPaused:Z

    if-nez v0, :cond_3

    .line 12
    iget v0, v1, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->cameraFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->cameraFrameCount:I

    .line 13
    :cond_3
    iget-object v0, v1, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mToygerIspService:Lcom/alipay/zoloz/zface/services/ToygerIspService;

    invoke-virtual {v0}, Lcom/alipay/zoloz/zface/services/ToygerIspService;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    .line 14
    iget-object v3, v1, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mToygerIspService:Lcom/alipay/zoloz/zface/services/ToygerIspService;

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/zoloz/hardware/camera/CameraData;->getColorWidth()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/zoloz/hardware/camera/CameraData;->getColorHeight()I

    move-result v5

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/zoloz/hardware/camera/CameraData;->getPreviewWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/zoloz/hardware/camera/CameraData;->getPreviewHeight()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/zoloz/hardware/camera/CameraData;->getColorFrameMode()I

    move-result v8

    .line 16
    invoke-virtual/range {v3 .. v8}, Lcom/alipay/zoloz/zface/services/ToygerIspService;->init(IIIII)V

    .line 17
    :cond_4
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/zoloz/hardware/camera/CameraData;->getColorData()Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 18
    iget-boolean v0, v1, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->isAttached:Z

    if-eqz v0, :cond_5

    .line 19
    iget-object v0, v1, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mPreviewData:Lcom/alipay/zoloz/zface/beans/PreviewData;

    iput-object v10, v0, Lcom/alipay/zoloz/zface/beans/PreviewData;->rgbData:Ljava/nio/ByteBuffer;

    .line 20
    iget-object v0, v1, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mPreviewData:Lcom/alipay/zoloz/zface/beans/PreviewData;

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/zoloz/hardware/camera/CameraData;->getColorFrameMode()I

    move-result v3

    iput v3, v0, Lcom/alipay/zoloz/zface/beans/PreviewData;->frameMode:I

    .line 21
    iget-object v0, v1, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mPreviewData:Lcom/alipay/zoloz/zface/beans/PreviewData;

    iget v3, v1, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mAlgorithAngle:I

    iput v3, v0, Lcom/alipay/zoloz/zface/beans/PreviewData;->rotation:I

    .line 22
    iget-object v0, v1, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->view:Lcom/alipay/zoloz/zface/presenter/ZFaceCallback;

    iget-object v3, v1, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mPreviewData:Lcom/alipay/zoloz/zface/beans/PreviewData;

    invoke-interface {v0, v3}, Lcom/alipay/zoloz/zface/presenter/ZFaceCallback;->onPreviewFrame(Lcom/alipay/zoloz/zface/beans/PreviewData;)V

    :cond_5
    const/4 v0, 0x0

    if-eqz v10, :cond_6

    .line 23
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 24
    new-instance v4, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/zoloz/hardware/camera/CameraData;->getColorWidth()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/zoloz/hardware/camera/CameraData;->getColorHeight()I

    move-result v12

    iget v13, v1, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mAlgorithAngle:I

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/zoloz/hardware/camera/CameraData;->getColorFrameMode()I

    move-result v14

    const/4 v15, 0x0

    move-object v9, v4

    invoke-direct/range {v9 .. v15}, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;-><init>(Ljava/nio/ByteBuffer;IIIII)V

    .line 26
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    move-object v3, v0

    .line 27
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/zoloz/hardware/camera/CameraData;->getDepthData()Ljava/nio/ShortBuffer;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 28
    new-instance v0, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/zoloz/hardware/camera/CameraData;->getDepthWidth()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/zoloz/hardware/camera/CameraData;->getDepthHeight()I

    move-result v6

    iget v7, v1, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mAlgorithAngle:I

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;-><init>(Ljava/nio/ShortBuffer;III)V

    .line 29
    :cond_7
    iget-boolean v4, v1, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->isPaused:Z

    if-nez v4, :cond_8

    iget-object v4, v1, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mToygerFaceService:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;

    if-eqz v4, :cond_8

    if-eqz v3, :cond_8

    .line 30
    iget-object v4, v1, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mToygerFaceService:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;

    invoke-virtual {v4, v3, v0}, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->processImage(Ljava/util/List;Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v3, :cond_8

    .line 31
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 32
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;

    invoke-direct {v1, v0}, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->onProcessOneImageFinish(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception|onPreviewFrame|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_8
    :goto_1
    return-void
.end method

.method public onResponse(Lcom/alipay/mobile/security/bio/service/BioUploadResult;)Z
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->productRetCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "serverReturnCode"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->productRetCode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "code"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->productRetCode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "productRetCode"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->validationRetCode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "validationRetCode"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v3, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->hasNext:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hasNext"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->extParams:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    iget-object v1, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->extParams:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 9
    :cond_0
    iget v1, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->productRetCode:I

    const/16 v2, 0x3e9

    if-ne v1, v2, :cond_1

    const-string v1, "yes"

    goto :goto_0

    :cond_1
    const-string v1, "no"

    :goto_0
    const-string v3, "networkResult"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Lcom/alipay/zoloz/zface/services/TimeRecord;->getInstance()Lcom/alipay/zoloz/zface/services/TimeRecord;

    move-result-object v1

    const-string v3, "uploadStart"

    invoke-virtual {v1, v3}, Lcom/alipay/zoloz/zface/services/TimeRecord;->getTimeInterval(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v3, "timecost"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "avatar"

    .line 11
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 12
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v1, "uploadEnd"

    .line 13
    invoke-direct {p0, v1, v0}, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->record(Ljava/lang/String;Ljava/util/Map;)V

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "response|upload|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    iget v0, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->productRetCode:I

    const/4 v1, 0x0

    if-eq v0, v2, :cond_7

    const/16 v2, 0x7d1

    if-eq v0, v2, :cond_5

    const/16 v2, 0x7d2

    if-eq v0, v2, :cond_4

    const/16 v2, 0xbb9

    if-eq v0, v2, :cond_3

    const/16 v2, 0xbba

    if-eq v0, v2, :cond_3

    .line 16
    iget-boolean v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->isAttached:Z

    if-eqz v0, :cond_8

    .line 17
    iget-object v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mAlertManager:Lcom/alipay/zoloz/zface/manager/AlertManager;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/alipay/zoloz/zface/manager/AlertManager;->parseAlertData(I)Lcom/alipay/zoloz/zface/beans/AlertData;

    move-result-object v0

    .line 18
    iget-object v2, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->subCode:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/zoloz/zface/beans/AlertData;->subCode:Ljava/lang/String;

    .line 19
    iget-object p1, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->subMsg:Ljava/lang/String;

    iput-object p1, v0, Lcom/alipay/zoloz/zface/beans/AlertData;->subMsg:Ljava/lang/String;

    .line 20
    iget-object p1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->view:Lcom/alipay/zoloz/zface/presenter/ZFaceCallback;

    invoke-interface {p1, v0}, Lcom/alipay/zoloz/zface/presenter/ZFaceCallback;->onErrorEvent(Lcom/alipay/zoloz/zface/beans/AlertData;)V

    goto/16 :goto_1

    .line 21
    :cond_3
    iget-boolean p1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->isAttached:Z

    if-eqz p1, :cond_8

    .line 22
    iget-object p1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->view:Lcom/alipay/zoloz/zface/presenter/ZFaceCallback;

    iget-object v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mAlertManager:Lcom/alipay/zoloz/zface/manager/AlertManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alipay/zoloz/zface/manager/AlertManager;->parseAlertData(I)Lcom/alipay/zoloz/zface/beans/AlertData;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alipay/zoloz/zface/presenter/ZFaceCallback;->onErrorEvent(Lcom/alipay/zoloz/zface/beans/AlertData;)V

    goto/16 :goto_1

    .line 23
    :cond_4
    iget-boolean p1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->isAttached:Z

    if-eqz p1, :cond_8

    .line 24
    iget-object p1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->view:Lcom/alipay/zoloz/zface/presenter/ZFaceCallback;

    iget-object v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mAlertManager:Lcom/alipay/zoloz/zface/manager/AlertManager;

    invoke-virtual {v0, v1}, Lcom/alipay/zoloz/zface/manager/AlertManager;->parseAlertData(I)Lcom/alipay/zoloz/zface/beans/AlertData;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alipay/zoloz/zface/presenter/ZFaceCallback;->onErrorEvent(Lcom/alipay/zoloz/zface/beans/AlertData;)V

    goto/16 :goto_1

    .line 25
    :cond_5
    new-instance v0, Lcom/alipay/zoloz/zface/beans/AlertData;

    invoke-direct {v0}, Lcom/alipay/zoloz/zface/beans/AlertData;-><init>()V

    const/16 v2, 0xb

    .line 26
    iput v2, v0, Lcom/alipay/zoloz/zface/beans/AlertData;->type:I

    .line 27
    iget-object v2, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->subCode:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/zoloz/zface/beans/AlertData;->subCode:Ljava/lang/String;

    .line 28
    iget-object v2, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->subMsg:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/zoloz/zface/beans/AlertData;->subMsg:Ljava/lang/String;

    .line 29
    new-instance v2, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;

    invoke-direct {v2}, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;-><init>()V

    .line 30
    iput-boolean v1, v2, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->isSucess:Z

    .line 31
    iget v3, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->productRetCode:I

    iput v3, v2, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->suggest:I

    const/16 v3, 0xd0

    .line 32
    iput v3, v2, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->errorCode:I

    .line 33
    iget-object v3, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->subMsg:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->resultMessage:Ljava/lang/String;

    .line 34
    iget-object v4, p1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->subCode:Ljava/lang/String;

    iput-object v4, v2, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->subCode:Ljava/lang/String;

    .line 35
    iput-object v3, v2, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->subMsg:Ljava/lang/String;

    .line 36
    iget-object v3, v2, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->ext:Ljava/util/Map;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "upload_response"

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance p1, Lcom/alipay/mobile/security/bio/api/BioResponse;

    invoke-direct {p1}, Lcom/alipay/mobile/security/bio/api/BioResponse;-><init>()V

    .line 38
    iget-boolean v3, v2, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->isSucess:Z

    invoke-virtual {p1, v3}, Lcom/alipay/mobile/security/bio/api/BioResponse;->setSuccess(Z)V

    .line 39
    iget-object v3, v2, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->token:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/alipay/mobile/security/bio/api/BioResponse;->setToken(Ljava/lang/String;)V

    .line 40
    iget-object v3, v2, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->subCode:Ljava/lang/String;

    iput-object v3, p1, Lcom/alipay/mobile/security/bio/api/BioResponse;->subCode:Ljava/lang/String;

    .line 41
    iget-object v3, v2, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->subMsg:Ljava/lang/String;

    iput-object v3, p1, Lcom/alipay/mobile/security/bio/api/BioResponse;->subMsg:Ljava/lang/String;

    .line 42
    iget-object v3, v2, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->resultMessage:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/alipay/mobile/security/bio/api/BioResponse;->setResultMessage(Ljava/lang/String;)V

    .line 43
    iget v3, v2, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->errorCode:I

    invoke-virtual {p1, v3}, Lcom/alipay/mobile/security/bio/api/BioResponse;->setResult(I)V

    .line 44
    iget-object v3, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {v3}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/alipay/mobile/security/bio/api/BioResponse;->setTag(Ljava/lang/String;)V

    .line 45
    iget-object v2, v2, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->ext:Ljava/util/Map;

    if-eqz v2, :cond_6

    .line 46
    invoke-virtual {p1, v2}, Lcom/alipay/mobile/security/bio/api/BioResponse;->setExt(Ljava/util/Map;)V

    .line 47
    :cond_6
    invoke-virtual {p0, p1}, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->sendResponse(Lcom/alipay/mobile/security/bio/api/BioResponse;)V

    .line 48
    iget-boolean p1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->isAttached:Z

    if-eqz p1, :cond_8

    .line 49
    iget-object p1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->view:Lcom/alipay/zoloz/zface/presenter/ZFaceCallback;

    invoke-interface {p1, v0}, Lcom/alipay/zoloz/zface/presenter/ZFaceCallback;->onErrorEvent(Lcom/alipay/zoloz/zface/beans/AlertData;)V

    goto :goto_1

    .line 50
    :cond_7
    new-instance v0, Lcom/alipay/zoloz/zface/beans/UploadData;

    invoke-direct {v0, p1}, Lcom/alipay/zoloz/zface/beans/UploadData;-><init>(Lcom/alipay/mobile/security/bio/service/BioUploadResult;)V

    .line 51
    iget-boolean p1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->isAttached:Z

    if-eqz p1, :cond_8

    .line 52
    iget-object p1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->view:Lcom/alipay/zoloz/zface/presenter/ZFaceCallback;

    invoke-interface {p1, v0}, Lcom/alipay/zoloz/zface/presenter/ZFaceCallback;->onUploadSuccess(Lcom/alipay/zoloz/zface/beans/UploadData;)V

    :cond_8
    :goto_1
    return v1
.end method

.method public bridge synthetic onStateUpdated(Lcom/alipay/zoloz/toyger/ToygerState;Lcom/alipay/zoloz/toyger/ToygerAttr;Ljava/util/Map;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/alipay/zoloz/toyger/face/ToygerFaceState;

    check-cast p2, Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->onStateUpdated(Lcom/alipay/zoloz/toyger/face/ToygerFaceState;Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public onStateUpdated(Lcom/alipay/zoloz/toyger/face/ToygerFaceState;Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/zoloz/toyger/face/ToygerFaceState;",
            "Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->isPaused:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    iget v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->tgFrameCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->tgFrameCount:I

    .line 4
    iget-object v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mFpsMonitor:Lcom/alipay/zoloz/zface/utils/ToygerMonitor;

    iget-object v2, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mZFaceRecordService:Lcom/alipay/zoloz/zface/services/ZFaceRecordService;

    invoke-virtual {v0, v2}, Lcom/alipay/zoloz/zface/utils/ToygerMonitor;->oneFrameUpdate(Lcom/alipay/zoloz/zface/services/ZFaceRecordService;)V

    const-string v0, "toyger_frame"

    .line 5
    invoke-interface {p3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/zoloz/toyger/algorithm/TGFrame;

    const-string v2, "toyger_depth_frame"

    .line 6
    invoke-interface {p3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 7
    iget-object v3, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mToygerIspService:Lcom/alipay/zoloz/zface/services/ToygerIspService;

    invoke-virtual {v3, v0, v2, p1, p2}, Lcom/alipay/zoloz/zface/services/ToygerIspService;->adjustIsp(Lcom/alipay/zoloz/toyger/algorithm/TGFrame;Lcom/alipay/zoloz/toyger/algorithm/TGDepthFrame;Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;)V

    .line 8
    :cond_1
    new-instance v0, Lcom/alipay/zoloz/zface/beans/ToygerFrame;

    invoke-direct {v0}, Lcom/alipay/zoloz/zface/beans/ToygerFrame;-><init>()V

    .line 9
    iput-object p1, v0, Lcom/alipay/zoloz/zface/beans/ToygerFrame;->tgFaceState:Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;

    .line 10
    iput-object p2, v0, Lcom/alipay/zoloz/zface/beans/ToygerFrame;->tgFaceAttr:Lcom/alipay/zoloz/toyger/algorithm/TGFaceAttr;

    .line 11
    iput-object p3, v0, Lcom/alipay/zoloz/zface/beans/ToygerFrame;->extInfo:Ljava/util/Map;

    .line 12
    iput-object v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mCurrentToygerFrame:Lcom/alipay/zoloz/zface/beans/ToygerFrame;

    .line 13
    iget v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->frameTime:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->frameTime:I

    .line 14
    iget v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->frameTime:I

    rem-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_2

    .line 15
    iget-object v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mCurrentToygerFrame:Lcom/alipay/zoloz/zface/beans/ToygerFrame;

    invoke-static {v0}, Lcom/alipay/zoloz/zface/utils/ToygerFrameUtil;->getFaceParam(Lcom/alipay/zoloz/zface/beans/ToygerFrame;)Ljava/util/Map;

    move-result-object v0

    .line 16
    iget-object v2, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mZFaceRecordService:Lcom/alipay/zoloz/zface/services/ZFaceRecordService;

    const-string v3, "faceSlice"

    invoke-virtual {v2, v3, v0}, Lcom/alipay/zoloz/zface/services/ZFaceRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V

    .line 17
    :cond_2
    new-instance v0, Lcom/alipay/zoloz/zface/beans/FrameStateData;

    invoke-direct {v0}, Lcom/alipay/zoloz/zface/beans/FrameStateData;-><init>()V

    .line 18
    invoke-virtual {p1}, Lcom/alipay/zoloz/toyger/face/ToygerFaceState;->getMessageCode()I

    move-result v2

    iput v2, v0, Lcom/alipay/zoloz/zface/beans/FrameStateData;->uiDesState:I

    .line 19
    iput-object p2, v0, Lcom/alipay/zoloz/zface/beans/FrameStateData;->attr:Lcom/alipay/zoloz/toyger/face/ToygerFaceAttr;

    .line 20
    iput-object p1, v0, Lcom/alipay/zoloz/zface/beans/FrameStateData;->tgFaceState:Lcom/alipay/zoloz/toyger/algorithm/TGFaceState;

    .line 21
    iput-object p3, v0, Lcom/alipay/zoloz/zface/beans/FrameStateData;->extMap:Ljava/util/Map;

    .line 22
    iget-boolean p1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->isAttached:Z

    if-eqz p1, :cond_3

    .line 23
    iget-object p1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->view:Lcom/alipay/zoloz/zface/presenter/ZFaceCallback;

    invoke-interface {p1, v0}, Lcom/alipay/zoloz/zface/presenter/ZFaceCallback;->onFrameStateUpdate(Lcom/alipay/zoloz/zface/beans/FrameStateData;)V

    :cond_3
    return v1
.end method

.method public onSurfaceChanged(DD)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "route|onSurfaceChanged|width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/alipay/zoloz/hardware/camera/ICameraInterface;->getCameraViewRotation()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    rsub-int v0, v0, 0x168

    .line 4
    rem-int/lit16 v0, v0, 0x168

    .line 5
    iget-object v1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->view:Lcom/alipay/zoloz/zface/presenter/ZFaceCallback;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/alipay/zoloz/zface/presenter/ZFaceCallback;->onSurfaceviewInit(DD)V

    .line 6
    iget-object p1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mDeviceSetting:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->isAlgorithmAuto()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "common|initRotation is auto : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 8
    iput v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mAlgorithAngle:I

    goto :goto_1

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mDeviceSetting:Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->getAlgorithmAngle()I

    move-result p1

    iput p1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mAlgorithAngle:I

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "common|initRotation is not auto : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mAlgorithAngle:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public onSurfaceCreated()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mZFaceRecordService:Lcom/alipay/zoloz/zface/services/ZFaceRecordService;

    const-string v1, "imageCaptureStart"

    invoke-virtual {v0, v1}, Lcom/alipay/zoloz/zface/services/ZFaceRecordService;->write(Ljava/lang/String;)V

    return-void
.end method

.method public onSurfaceDestroyed()V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->isPaused:Z

    return-void
.end method

.method public retry()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->isPaused:Z

    .line 2
    iget-object v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mZFaceRecordService:Lcom/alipay/zoloz/zface/services/ZFaceRecordService;

    invoke-virtual {v0}, Lcom/alipay/zoloz/zface/services/ZFaceRecordService;->retry()V

    .line 3
    iget-object v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mToygerFaceService:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;

    invoke-virtual {v0}, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->reset()V

    const-string v0, "detectCondStart"

    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->record(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public retryUpload()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mUploadContent:Lcom/alipay/zoloz/toyger/upload/UploadContent;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mUploadManager:Lcom/alipay/zoloz/zface/manager/UploadManager;

    invoke-virtual {v1, v0}, Lcom/alipay/zoloz/zface/manager/UploadManager;->uploadFaceInfo(Lcom/alipay/zoloz/toyger/upload/UploadContent;)V

    :cond_0
    return-void
.end method

.method public sendResponse(Lcom/alipay/mobile/security/bio/api/BioResponse;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/api/BioResponse;->getResult()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "returncode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mZFaceRecordService:Lcom/alipay/zoloz/zface/services/ZFaceRecordService;

    const-string v2, "callbackVerifySystem"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/zoloz/zface/services/ZFaceRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V

    .line 4
    iget-object v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/security/bio/api/BioResponse;->setTag(Ljava/lang/String;)V

    .line 6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.alipay.mobile.security.bio.action.callback"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 8
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "com.alipay.mobile.security.bio.action.intent.rev"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 10
    iget-object p1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mLocalBroadcastManager:La/n/a/a;

    invoke-virtual {p1, v0}, La/n/a/a;->a(Landroid/content/Intent;)Z

    .line 11
    iget-boolean p1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->isAttached:Z

    if-eqz p1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->view:Lcom/alipay/zoloz/zface/presenter/ZFaceCallback;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/alipay/zoloz/zface/presenter/ZFaceCallback;->handleFinish(Z)V

    :cond_1
    return-void
.end method

.method public sendResponseWithSubcode(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "route|sendResponseWithSubcode|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    new-instance v0, Lcom/alipay/mobile/security/bio/api/BioResponse;

    invoke-direct {v0}, Lcom/alipay/mobile/security/bio/api/BioResponse;-><init>()V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/bio/api/BioResponse;->setSuccess(Z)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/bio/api/BioResponse;->setResult(I)V

    .line 5
    iput-object p2, v0, Lcom/alipay/mobile/security/bio/api/BioResponse;->subCode:Ljava/lang/String;

    .line 6
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, v0, Lcom/alipay/mobile/security/bio/api/BioResponse;->subCode:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/alipay/mobile/security/bio/constants/CodeConstants;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    iput-object p3, v0, Lcom/alipay/mobile/security/bio/api/BioResponse;->subMsg:Ljava/lang/String;

    const-string p1, ""

    .line 8
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/security/bio/api/BioResponse;->setResultMessage(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->sendResponse(Lcom/alipay/mobile/security/bio/api/BioResponse;)V

    return-void
.end method

.method protected unAttachView()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mCurrentToygerFrame:Lcom/alipay/zoloz/zface/beans/ToygerFrame;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/alipay/zoloz/zface/utils/ToygerFrameUtil;->getFaceParam(Lcom/alipay/zoloz/zface/beans/ToygerFrame;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mRecordTgResult:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "result"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->cameraFrameCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "frameCount"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->tgFrameCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "tgFrameCount"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mZFaceRecordService:Lcom/alipay/zoloz/zface/services/ZFaceRecordService;

    if-eqz v1, :cond_1

    const-string v3, "imageCaptureEnd"

    .line 8
    invoke-virtual {v1, v3, v0}, Lcom/alipay/zoloz/zface/services/ZFaceRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mUploadManager:Lcom/alipay/zoloz/zface/manager/UploadManager;

    if-eqz v0, :cond_2

    .line 10
    sget-object v1, Lcom/alipay/mobile/security/faceauth/InvokeType;->MONITOR:Lcom/alipay/mobile/security/faceauth/InvokeType;

    invoke-virtual {v0, v1}, Lcom/alipay/zoloz/zface/manager/UploadManager;->uploadNineShoot(Lcom/alipay/mobile/security/faceauth/InvokeType;)V

    .line 11
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    iget-object v1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    if-nez v1, :cond_3

    move-object v1, v2

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Lcom/alipay/zoloz/hardware/camera/ICameraInterface;->getCameraSN()Ljava/lang/String;

    move-result-object v1

    .line 13
    :goto_1
    iget-object v3, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v3}, Lcom/alipay/zoloz/hardware/camera/ICameraInterface;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v2

    :goto_2
    const-string v3, "cameraSN"

    .line 14
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cameraVN"

    .line 15
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mZFaceRecordService:Lcom/alipay/zoloz/zface/services/ZFaceRecordService;

    if-eqz v1, :cond_5

    const-string v2, "exitSDK"

    .line 17
    invoke-virtual {v1, v2, v0}, Lcom/alipay/zoloz/zface/services/ZFaceRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V

    :cond_5
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->isAttached:Z

    .line 19
    iget-object v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mToygerFaceService:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 20
    invoke-virtual {v0}, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->reset()V

    .line 21
    iget-object v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mToygerFaceService:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;

    invoke-virtual {v0}, Lcom/alipay/zoloz/toyger/face/ToygerFaceService;->release()V

    .line 22
    iput-object v1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mToygerFaceService:Lcom/alipay/zoloz/toyger/face/ToygerFaceService;

    .line 23
    :cond_6
    iget-object v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    if-eqz v0, :cond_7

    .line 24
    invoke-interface {v0}, Lcom/alipay/zoloz/hardware/camera/ICameraInterface;->releaseCamera()V

    .line 25
    iput-object v1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mCameraInterface:Lcom/alipay/zoloz/hardware/camera/ICameraInterface;

    .line 26
    :cond_7
    iput-object v1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mCurrentToygerFrame:Lcom/alipay/zoloz/zface/beans/ToygerFrame;

    .line 27
    iget-object v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mUploadManager:Lcom/alipay/zoloz/zface/manager/UploadManager;

    if-eqz v0, :cond_8

    .line 28
    invoke-virtual {v0}, Lcom/alipay/zoloz/zface/manager/UploadManager;->destroy()V

    .line 29
    iput-object v1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mUploadManager:Lcom/alipay/zoloz/zface/manager/UploadManager;

    .line 30
    :cond_8
    iget-object v0, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mBioUploadService:Lcom/alipay/mobile/security/bio/service/BioUploadService;

    if-eqz v0, :cond_9

    .line 31
    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/service/BioUploadService;->clearUp()V

    .line 32
    iput-object v1, p0, Lcom/alipay/zoloz/zface/presenter/ZFaceBasePresenter;->mBioUploadService:Lcom/alipay/mobile/security/bio/service/BioUploadService;

    :cond_9
    return-void
.end method
