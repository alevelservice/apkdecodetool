.class Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$4$1;
.super Ljava/lang/Object;
.source "ZdocScanFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$4;


# direct methods
.method constructor <init>(Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$4$1;->this$1:Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$4$1;->this$1:Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$4;

    iget-object v0, v0, Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment$4;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/ZdocScanFragment;

    sget-object v1, Lcom/zoloz/android/phone/zdoc/ui/UIState;->USER_CONFIRM:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    invoke-virtual {v0, v1}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->updateUI(Lcom/zoloz/android/phone/zdoc/ui/UIState;)V

    return-void
.end method
