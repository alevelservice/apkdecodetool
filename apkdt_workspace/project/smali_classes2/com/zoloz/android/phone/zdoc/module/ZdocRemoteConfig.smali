.class public Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;
.super Ljava/lang/Object;
.source "ZdocRemoteConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CAPTURE_SCAN:I = 0x1

.field public static final CAPTURE_TAKE_PHOTO:I

.field public static CURRENT_LANG:Ljava/lang/String;


# instance fields
.field private captureMode:I

.field private env:I

.field private guidePageUrl:Ljava/lang/String;

.field private modules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zoloz/android/phone/zdoc/module/DocModule;",
            ">;"
        }
    .end annotation
.end field

.field private monitorCaptureInterval:I

.field private monitorMaxFrameCount:I

.field private ratio:F

.field private sceneCode:Ljava/lang/String;

.field private showGuidePage:I

.field private showPowerByZoloz:I

.field private uploadMonitorPic:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->captureMode:I

    const v1, 0x3f333333    # 0.7f

    .line 3
    iput v1, p0, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->ratio:F

    const/4 v1, 0x1

    .line 4
    iput v1, p0, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->env:I

    .line 5
    iput v0, p0, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->uploadMonitorPic:I

    const/16 v1, 0xb

    .line 6
    iput v1, p0, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->monitorMaxFrameCount:I

    const/16 v1, 0xbb8

    .line 7
    iput v1, p0, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->monitorCaptureInterval:I

    .line 8
    iput v0, p0, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->showGuidePage:I

    const-string v1, ""

    .line 9
    iput-object v1, p0, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->guidePageUrl:Ljava/lang/String;

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->modules:Ljava/util/ArrayList;

    const-string v1, "DUMMY_BIZ_SCENE_CODE"

    .line 11
    iput-object v1, p0, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->sceneCode:Ljava/lang/String;

    .line 12
    iput v0, p0, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->showPowerByZoloz:I

    return-void
.end method


# virtual methods
.method public getCaptureMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->captureMode:I

    return v0
.end method

.method public getEnv()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->env:I

    return v0
.end method

.method public getGuidePageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->guidePageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getModules()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/zoloz/android/phone/zdoc/module/DocModule;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->modules:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMonitorCaptureInterval()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->monitorCaptureInterval:I

    return v0
.end method

.method public getMonitorMaxFrameCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->monitorMaxFrameCount:I

    return v0
.end method

.method public getRatio()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->ratio:F

    return v0
.end method

.method public getSceneCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->sceneCode:Ljava/lang/String;

    return-object v0
.end method

.method public getShowGuidePage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->showGuidePage:I

    return v0
.end method

.method public getShowPowerByZoloz()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->showPowerByZoloz:I

    return v0
.end method

.method public getUploadMonitorPic()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->uploadMonitorPic:I

    return v0
.end method

.method public setCaptureMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->captureMode:I

    return-void
.end method

.method public setEnv(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->env:I

    return-void
.end method

.method public setGuidePageUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->guidePageUrl:Ljava/lang/String;

    return-void
.end method

.method public setModules(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zoloz/android/phone/zdoc/module/DocModule;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->modules:Ljava/util/ArrayList;

    return-void
.end method

.method public setMonitorCaptureInterval(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->monitorCaptureInterval:I

    return-void
.end method

.method public setMonitorMaxFrameCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->monitorMaxFrameCount:I

    return-void
.end method

.method public setRatio(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->ratio:F

    return-void
.end method

.method public setSceneCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->sceneCode:Ljava/lang/String;

    return-void
.end method

.method public setShowGuidePage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->showGuidePage:I

    return-void
.end method

.method public setShowPowerByZoloz(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->showPowerByZoloz:I

    return-void
.end method

.method public setUploadMonitorPic(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->uploadMonitorPic:I

    return-void
.end method
