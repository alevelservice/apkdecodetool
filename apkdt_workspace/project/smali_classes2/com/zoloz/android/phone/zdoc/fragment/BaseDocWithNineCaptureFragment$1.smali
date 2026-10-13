.class Lcom/zoloz/android/phone/zdoc/fragment/BaseDocWithNineCaptureFragment$1;
.super Ljava/lang/Object;
.source "BaseDocWithNineCaptureFragment.java"

# interfaces
.implements Lcom/zoloz/android/phone/zdoc/service/IMonitorCallback;


# instance fields
.field final synthetic this$0:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocWithNineCaptureFragment;


# direct methods
.method constructor <init>(Lcom/zoloz/android/phone/zdoc/fragment/BaseDocWithNineCaptureFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocWithNineCaptureFragment$1;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocWithNineCaptureFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocWithNineCaptureFragment$1;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocWithNineCaptureFragment;

    invoke-static {v0}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocWithNineCaptureFragment;->access$000(Lcom/zoloz/android/phone/zdoc/fragment/BaseDocWithNineCaptureFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocWithNineCaptureFragment$1;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocWithNineCaptureFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocWithNineCaptureFragment;->access$002(Lcom/zoloz/android/phone/zdoc/fragment/BaseDocWithNineCaptureFragment;Z)Z

    :cond_0
    return-void
.end method
