.class public Lcom/zoloz/android/phone/zdoc/ui/UIFacade;
.super Ljava/lang/Object;
.source "UIFacade.java"


# static fields
.field private static sPackageName:Ljava/lang/String;

.field private static sSpecialUiInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/zoloz/android/phone/zdoc/ui/SpecialUiTypeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCompIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/zoloz/android/phone/zdoc/ui/UIFacade;->sPackageName:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 5
    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getLayoutId(Landroid/content/Context;I)I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "layout_manual_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "layout"

    invoke-static {p0, v0, v1}, Lcom/zoloz/android/phone/zdoc/ui/UIFacade;->getCompIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0, p1}, Lcom/zoloz/android/phone/zdoc/ui/UIFacade;->readSpecialUiType(Landroid/content/Context;I)I

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    .line 3
    sget v0, Lcom/zoloz/android/phone/zdoc/R$layout;->layout_manual_0:I

    :cond_1
    return v0
.end method

.method public static getMainMessage(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/zoloz/android/phone/zdoc/ui/UIFacade;->readSpecialInfos(Landroid/content/Context;)V

    .line 2
    sget-object v0, Lcom/zoloz/android/phone/zdoc/ui/UIFacade;->sSpecialUiInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zoloz/android/phone/zdoc/ui/SpecialUiTypeInfo;

    if-nez v0, :cond_0

    const-string v0, "main_message_"

    .line 3
    invoke-static {p0, v0, p1}, Lcom/zoloz/android/phone/zdoc/ui/UIFacade;->getStringByType(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/zoloz/android/phone/zdoc/ui/SpecialUiTypeInfo;->getTestResId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/zoloz/android/phone/zdoc/ui/UIFacade;->getStringByResName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringByResName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "string"

    .line 1
    invoke-static {p0, p1, v0}, Lcom/zoloz/android/phone/zdoc/ui/UIFacade;->getCompIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringByType(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/zoloz/android/phone/zdoc/ui/UIFacade;->getStringByResName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUploadEndString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1
    :cond_0
    sget v0, Lcom/zoloz/android/phone/zdoc/R$string;->zdoc_success:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUploadingString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1
    :cond_0
    sget v0, Lcom/zoloz/android/phone/zdoc/R$string;->zdoc_processing:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readSpecialInfos(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/zoloz/android/phone/zdoc/ui/UIFacade;->readSpecialInfos(Landroid/content/Context;Z)V

    return-void
.end method

.method public static readSpecialInfos(Landroid/content/Context;Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/zoloz/android/phone/zdoc/ui/UIFacade;->sSpecialUiInfos:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string p1, "special_ui_type.json"

    invoke-static {p0, p1}, Lcom/alipay/mobile/security/bio/utils/FileUtil;->getAssetsData(Landroid/content/res/Resources;Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 5
    :goto_0
    invoke-static {p1}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 6
    new-instance p0, Lcom/zoloz/android/phone/zdoc/ui/UIFacade$1;

    invoke-direct {p0}, Lcom/zoloz/android/phone/zdoc/ui/UIFacade$1;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/fastjson/a/e;

    invoke-static {p1, p0, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/j;[Lcom/alibaba/fastjson/a/e;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    sput-object p0, Lcom/zoloz/android/phone/zdoc/ui/UIFacade;->sSpecialUiInfos:Ljava/util/HashMap;

    goto :goto_1

    .line 7
    :cond_2
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sput-object p0, Lcom/zoloz/android/phone/zdoc/ui/UIFacade;->sSpecialUiInfos:Ljava/util/HashMap;

    :goto_1
    return-void
.end method

.method public static readSpecialUiType(Landroid/content/Context;I)I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/zoloz/android/phone/zdoc/ui/UIFacade;->readSpecialInfos(Landroid/content/Context;)V

    .line 2
    sget-object v0, Lcom/zoloz/android/phone/zdoc/ui/UIFacade;->sSpecialUiInfos:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zoloz/android/phone/zdoc/ui/SpecialUiTypeInfo;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/zoloz/android/phone/zdoc/ui/SpecialUiTypeInfo;->getLayout()Ljava/lang/String;

    move-result-object p1

    const-string v0, "layout"

    invoke-static {p0, p1, v0}, Lcom/zoloz/android/phone/zdoc/ui/UIFacade;->getCompIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/zoloz/android/phone/zdoc/ui/UIFacade;->sPackageName:Ljava/lang/String;

    return-void
.end method
