.class public Lcom/zoloz/android/phone/zdoc/activities/FalconCardNativeActivityNew;
.super Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;
.source "FalconCardNativeActivityNew.java"

# interfaces
.implements Lcom/zoloz/android/phone/zdoc/cardmanager/CardManagerCallBack;


# instance fields
.field protected mArgs:Landroid/os/Bundle;

.field private mContainerView:Landroid/widget/FrameLayout;

.field protected mFragment:Landroidx/fragment/app/Fragment;

.field private mProtocolConfig:Ljava/lang/String;

.field private mRecoreService:Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;

.field protected mTarget:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;-><init>()V

    .line 2
    const-class v0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocCaptureFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/activities/FalconCardNativeActivityNew;->mTarget:Ljava/lang/String;

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/activities/FalconCardNativeActivityNew;->mArgs:Landroid/os/Bundle;

    return-void
.end method

.method private bindActivityFragment()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/activities/FalconCardNativeActivityNew;->mTarget:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3
    :try_start_1
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/activities/FalconCardNativeActivityNew;->mContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/zoloz/android/phone/zdoc/activities/FalconCardNativeActivityNew;->makeTag(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/g;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Landroidx/fragment/app/g;->a()Landroidx/fragment/app/j;

    move-result-object v3

    .line 6
    invoke-virtual {v2, v1}, Landroidx/fragment/app/g;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v0, :cond_0

    .line 8
    :try_start_2
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/activities/FalconCardNativeActivityNew;->mArgs:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 9
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/activities/FalconCardNativeActivityNew;->mArgs:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 10
    :catch_0
    :goto_0
    invoke-virtual {v3, v2}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/j;

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;

    .line 12
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/activities/FalconCardNativeActivityNew;->mArgs:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 13
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/activities/FalconCardNativeActivityNew;->mContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getId()I

    move-result v0

    invoke-virtual {v3, v0, v2, v1}, Landroidx/fragment/app/j;->b(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/j;

    .line 14
    :goto_1
    invoke-virtual {v3}, Landroidx/fragment/app/j;->b()I

    .line 15
    iput-object v2, p0, Lcom/zoloz/android/phone/zdoc/activities/FalconCardNativeActivityNew;->mFragment:Landroidx/fragment/app/Fragment;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 16
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 18
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private initContainerView()V
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/activities/FalconCardNativeActivityNew;->mContainerView:Landroid/widget/FrameLayout;

    .line 2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/activities/FalconCardNativeActivityNew;->mContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/activities/FalconCardNativeActivityNew;->mContainerView:Landroid/widget/FrameLayout;

    const v1, 0x102000c

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 5
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/activities/FalconCardNativeActivityNew;->mContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private makeTag(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/zoloz/android/phone/zdoc/activities/FalconCardNativeActivityNew;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private recordStartZdoc()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/activities/FalconCardNativeActivityNew;->mRecoreService:Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getCurrentInstance()Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    move-result-object v0

    const-class v1, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;

    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/activities/FalconCardNativeActivityNew;->mRecoreService:Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getCfg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/activities/FalconCardNativeActivityNew;->mProtocolConfig:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "productId"

    const-string v2, "zoloz_zdoc"

    .line 5
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sdkVersion"

    const-string v2, "3.0"

    .line 6
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getBistoken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bisToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Lcom/alipay/mobile/security/bio/service/local/apsecurity/ApSecurityService;->getStaticApDidToken()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    invoke-static {}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getCurrentInstance()Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    move-result-object v2

    .line 11
    const-class v3, Lcom/alipay/mobile/security/bio/service/local/apsecurity/ApSecurityService;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/security/bio/service/local/apsecurity/ApSecurityService;

    if-eqz v2, :cond_1

    .line 12
    invoke-virtual {v2}, Lcom/alipay/mobile/security/bio/service/local/apsecurity/ApSecurityService;->getApDidToken()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v2, "apdidToken"

    .line 13
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/activities/FalconCardNativeActivityNew;->mRecoreService:Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;

    invoke-virtual {v1, v0}, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;->addExtProperties(Ljava/util/Map;)V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/activities/FalconCardNativeActivityNew;->mProtocolConfig:Ljava/lang/String;

    const-string v2, "params"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v2, "deviceBrand"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/activities/FalconCardNativeActivityNew;->mRecoreService:Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;

    const-string v2, "startZdoc"

    invoke-virtual {v1, v2, v0}, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private updateLocale(Ljava/lang/String;)V
    .locals 6

    const-string v0, "-"

    if-eqz p1, :cond_5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4
    array-length v2, v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    .line 5
    new-instance v2, Ljava/util/Locale;

    aget-object v3, v0, v5

    aget-object v0, v0, v4

    invoke-direct {v2, v3, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    array-length v2, v0

    if-ne v2, v4, :cond_1

    .line 7
    new-instance v2, Ljava/util/Locale;

    aget-object v0, v0, v5

    invoke-direct {v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_2

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_0

    .line 11
    :cond_3
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 12
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_4

    .line 13
    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto :goto_1

    .line 14
    :cond_4
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 15
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    shr-int/lit8 v0, p1, 0x10

    if-nez v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/activities/FalconCardNativeActivityNew;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/activities/FalconCardNativeActivityNew;->mFragment:Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;

    invoke-virtual {v0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->onBackPressed()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 3
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 3
    invoke-super {p0, p1}, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getCurrentInstance()Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    move-result-object p1

    if-nez p1, :cond_0

    .line 5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "null == BioServiceManager.getCurrentInstance()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    if-nez p1, :cond_1

    .line 8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "null == mBioAppDescription"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getExtProperty()Ljava/util/Map;

    move-result-object p1

    const-string v1, "locale"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 11
    invoke-direct {p0, p1}, Lcom/zoloz/android/phone/zdoc/activities/FalconCardNativeActivityNew;->updateLocale(Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Lcom/zoloz/android/phone/zdoc/activities/FalconCardNativeActivityNew;->recordStartZdoc()V

    .line 13
    invoke-static {}, Lcom/zoloz/android/phone/zdoc/cardmanager/FalconTaskManager;->getInstance()Lcom/zoloz/android/phone/zdoc/cardmanager/FalconTaskManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/zoloz/android/phone/zdoc/cardmanager/FalconTaskManager;->setContext(Landroid/content/Context;)V

    .line 14
    invoke-static {}, Lcom/zoloz/android/phone/zdoc/cardmanager/FalconTaskManager;->getInstance()Lcom/zoloz/android/phone/zdoc/cardmanager/FalconTaskManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/zoloz/android/phone/zdoc/cardmanager/FalconTaskManager;->registerCallback(Lcom/zoloz/android/phone/zdoc/cardmanager/CardManagerCallBack;)V

    .line 15
    invoke-static {}, Lcom/zoloz/android/phone/zdoc/cardmanager/FalconTaskManager;->getInstance()Lcom/zoloz/android/phone/zdoc/cardmanager/FalconTaskManager;

    move-result-object p1

    invoke-static {}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getCurrentInstance()Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/zoloz/android/phone/zdoc/cardmanager/FalconTaskManager;->setBioServiceManager(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)V

    .line 16
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x2000

    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setFlags(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :catchall_0
    invoke-direct {p0}, Lcom/zoloz/android/phone/zdoc/activities/FalconCardNativeActivityNew;->initContainerView()V

    .line 18
    :try_start_1
    iget-object p1, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getCfg()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;

    invoke-static {p1, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;

    .line 19
    invoke-virtual {p1}, Lcom/zoloz/android/phone/zdoc/module/ZdocRemoteConfig;->getCaptureMode()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 20
    const-class v0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/activities/FalconCardNativeActivityNew;->mTarget:Ljava/lang/String;

    goto :goto_0

    .line 21
    :cond_2
    const-class v0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocCaptureFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoloz/android/phone/zdoc/activities/FalconCardNativeActivityNew;->mTarget:Ljava/lang/String;

    .line 22
    :goto_0
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/activities/FalconCardNativeActivityNew;->mArgs:Landroid/os/Bundle;

    const-string v1, "bio"

    iget-object v2, p0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->mBioAppDescription:Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 23
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/activities/FalconCardNativeActivityNew;->mArgs:Landroid/os/Bundle;

    const-string v1, "config"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 24
    invoke-direct {p0}, Lcom/zoloz/android/phone/zdoc/activities/FalconCardNativeActivityNew;->bindActivityFragment()V

    return-void

    .line 25
    :catch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onRestart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 2
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/activities/FalconCardNativeActivityNew;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/zoloz/android/phone/zdoc/fragment/BaseFragment;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/zoloz/android/phone/zdoc/fragment/BaseFragment;

    invoke-virtual {v0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseFragment;->onRestart()V

    :cond_0
    return-void
.end method

.method public onResult(Lcom/zoloz/android/phone/zdoc/cardmanager/ZdocResponse;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget v1, p1, Lcom/zoloz/android/phone/zdoc/cardmanager/ZdocResponse;->retCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "zdocResult"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/activities/FalconCardNativeActivityNew;->mRecoreService:Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getCurrentInstance()Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    move-result-object v1

    const-class v2, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;

    iput-object v1, p0, Lcom/zoloz/android/phone/zdoc/activities/FalconCardNativeActivityNew;->mRecoreService:Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/zoloz/android/phone/zdoc/activities/FalconCardNativeActivityNew;->mRecoreService:Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;

    const-string v2, "endZdoc"

    invoke-virtual {v1, v2, v0}, Lcom/zoloz/android/phone/zdoc/service/ZdocRecordService;->write(Ljava/lang/String;Ljava/util/Map;)V

    if-eqz p1, :cond_d

    .line 6
    new-instance v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;

    invoke-direct {v0}, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;-><init>()V

    .line 7
    iget-object v1, p1, Lcom/zoloz/android/phone/zdoc/cardmanager/ZdocResponse;->bioUploadResult:Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 8
    iget v1, v1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->productRetCode:I

    const/16 v3, 0x3e9

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->isSucess:Z

    .line 9
    iget-object v1, p1, Lcom/zoloz/android/phone/zdoc/cardmanager/ZdocResponse;->bioUploadResult:Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    iget v3, v1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->productRetCode:I

    iput v3, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->suggest:I

    .line 10
    iget-object v3, v1, Lcom/alipay/mobile/security/bio/service/BioUploadResult;->subMsg:Ljava/lang/String;

    iput-object v3, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->resultMessage:Ljava/lang/String;

    .line 11
    iget-object v3, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->ext:Ljava/util/Map;

    .line 12
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "upload_response"

    .line 13
    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_2
    iget v1, p1, Lcom/zoloz/android/phone/zdoc/cardmanager/ZdocResponse;->retCode:I

    iput v1, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->errorCode:I

    .line 15
    iget-object v1, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->ext:Ljava/util/Map;

    iget-object v3, p1, Lcom/zoloz/android/phone/zdoc/cardmanager/ZdocResponse;->ext:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 16
    invoke-virtual {p0}, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->getAppDescription()Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getBistoken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->token:Ljava/lang/String;

    .line 17
    iget p1, p1, Lcom/zoloz/android/phone/zdoc/cardmanager/ZdocResponse;->retCode:I

    const/16 v1, 0x65

    if-eq p1, v1, :cond_b

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v1, 0x64

    if-ne p1, v1, :cond_4

    .line 18
    sget-object p1, Lcom/zoloz/android/phone/zdoc/constant/DocCodeConstants;->ERROR_CAMERA:Ljava/lang/String;

    iput-object p1, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->subCode:Ljava/lang/String;

    .line 19
    iget-object p1, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->subCode:Ljava/lang/String;

    invoke-static {p1}, Lcom/zoloz/android/phone/zdoc/constant/DocCodeConstants;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->subMsg:Ljava/lang/String;

    goto/16 :goto_2

    :cond_4
    const/16 v1, 0xcd

    if-ne p1, v1, :cond_5

    .line 20
    sget-object p1, Lcom/zoloz/android/phone/zdoc/constant/DocCodeConstants;->ERROR_SYSTEM:Ljava/lang/String;

    iput-object p1, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->subCode:Ljava/lang/String;

    .line 21
    iget-object p1, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->subCode:Ljava/lang/String;

    invoke-static {p1}, Lcom/zoloz/android/phone/zdoc/constant/DocCodeConstants;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->subMsg:Ljava/lang/String;

    goto/16 :goto_2

    :cond_5
    const/16 v1, 0xd1

    if-ne p1, v1, :cond_6

    .line 22
    sget-object p1, Lcom/zoloz/android/phone/zdoc/constant/DocCodeConstants;->TOO_MANY_FAIL:Ljava/lang/String;

    iput-object p1, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->subCode:Ljava/lang/String;

    .line 23
    iget-object p1, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->subCode:Ljava/lang/String;

    invoke-static {p1}, Lcom/zoloz/android/phone/zdoc/constant/DocCodeConstants;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->subMsg:Ljava/lang/String;

    goto :goto_2

    :cond_6
    const/16 v1, 0xca

    if-ne p1, v1, :cond_7

    .line 24
    sget-object p1, Lcom/zoloz/android/phone/zdoc/constant/DocCodeConstants;->INTERRUPT:Ljava/lang/String;

    iput-object p1, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->subCode:Ljava/lang/String;

    .line 25
    iget-object p1, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->subCode:Ljava/lang/String;

    invoke-static {p1}, Lcom/zoloz/android/phone/zdoc/constant/DocCodeConstants;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->subMsg:Ljava/lang/String;

    goto :goto_2

    :cond_7
    const/16 v1, 0xcb

    if-ne p1, v1, :cond_8

    .line 26
    sget-object p1, Lcom/zoloz/android/phone/zdoc/constant/DocCodeConstants;->TIME_OUT:Ljava/lang/String;

    iput-object p1, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->subCode:Ljava/lang/String;

    .line 27
    iget-object p1, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->subCode:Ljava/lang/String;

    invoke-static {p1}, Lcom/zoloz/android/phone/zdoc/constant/DocCodeConstants;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->subMsg:Ljava/lang/String;

    goto :goto_2

    :cond_8
    const/16 v1, 0xcf

    if-ne p1, v1, :cond_9

    .line 28
    sget-object p1, Lcom/zoloz/android/phone/zdoc/constant/DocCodeConstants;->NETWORK_BAD:Ljava/lang/String;

    iput-object p1, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->subCode:Ljava/lang/String;

    .line 29
    iget-object p1, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->subCode:Ljava/lang/String;

    invoke-static {p1}, Lcom/zoloz/android/phone/zdoc/constant/DocCodeConstants;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->subMsg:Ljava/lang/String;

    goto :goto_2

    :cond_9
    const/16 v1, 0xd0

    if-ne p1, v1, :cond_a

    .line 30
    sget-object p1, Lcom/zoloz/android/phone/zdoc/constant/DocCodeConstants;->FAIL_RETRY:Ljava/lang/String;

    iput-object p1, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->subCode:Ljava/lang/String;

    .line 31
    iget-object p1, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->subCode:Ljava/lang/String;

    invoke-static {p1}, Lcom/zoloz/android/phone/zdoc/constant/DocCodeConstants;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->subMsg:Ljava/lang/String;

    goto :goto_2

    :cond_a
    const/16 v1, 0x12d

    if-ne p1, v1, :cond_c

    .line 32
    sget-object p1, Lcom/zoloz/android/phone/zdoc/constant/DocCodeConstants;->USER_QUIT:Ljava/lang/String;

    iput-object p1, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->subCode:Ljava/lang/String;

    .line 33
    iget-object p1, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->subCode:Ljava/lang/String;

    invoke-static {p1}, Lcom/zoloz/android/phone/zdoc/constant/DocCodeConstants;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->subMsg:Ljava/lang/String;

    goto :goto_2

    .line 34
    :cond_b
    :goto_1
    sget-object p1, Lcom/zoloz/android/phone/zdoc/constant/DocCodeConstants;->ERROR_CAMERA:Ljava/lang/String;

    iput-object p1, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->subCode:Ljava/lang/String;

    .line 35
    iget-object p1, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->subCode:Ljava/lang/String;

    invoke-static {p1}, Lcom/zoloz/android/phone/zdoc/constant/DocCodeConstants;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->subMsg:Ljava/lang/String;

    .line 36
    :cond_c
    :goto_2
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->sendResponse(Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;)V

    .line 37
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/security/bio/workspace/BioFragmentContainer;->finishActivity(Z)V

    :cond_d
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/activities/FalconCardNativeActivityNew;->mFragment:Landroidx/fragment/app/Fragment;

    check-cast v0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;

    invoke-virtual {v0, p1}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->onWindowFocusChanged(Z)V

    return-void
.end method
