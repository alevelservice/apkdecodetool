.class public Lcom/zoloz/android/phone/zdoc/ui/SpecialUiTypeInfo;
.super Ljava/lang/Object;
.source "SpecialUiTypeInfo.java"


# instance fields
.field private layout:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "layout"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "name"
    .end annotation
.end field

.field private testResId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "textResId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayout()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/ui/SpecialUiTypeInfo;->layout:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/ui/SpecialUiTypeInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTestResId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/ui/SpecialUiTypeInfo;->testResId:Ljava/lang/String;

    return-object v0
.end method

.method public setLayout(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/SpecialUiTypeInfo;->layout:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/SpecialUiTypeInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setTestResId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/SpecialUiTypeInfo;->testResId:Ljava/lang/String;

    return-void
.end method
