.class Lcom/zoloz/android/phone/zdoc/fragment/ZdocCaptureFragment$1;
.super Ljava/lang/Object;
.source "ZdocCaptureFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/zoloz/android/phone/zdoc/fragment/ZdocCaptureFragment;


# direct methods
.method constructor <init>(Lcom/zoloz/android/phone/zdoc/fragment/ZdocCaptureFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocCaptureFragment$1;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/ZdocCaptureFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocCaptureFragment$1;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/ZdocCaptureFragment;

    iget-object v0, p1, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mRecordManager:Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;

    iget-object p1, p1, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->mCurrentState:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "take_photo"

    invoke-virtual {v0, p1, v1}, Lcom/zoloz/android/phone/zdoc/utils/ZdocRecordManager;->recordClickButton(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocCaptureFragment$1;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/ZdocCaptureFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/zoloz/android/phone/zdoc/fragment/ZdocCaptureFragment;->access$002(Lcom/zoloz/android/phone/zdoc/fragment/ZdocCaptureFragment;Z)Z

    return-void
.end method
