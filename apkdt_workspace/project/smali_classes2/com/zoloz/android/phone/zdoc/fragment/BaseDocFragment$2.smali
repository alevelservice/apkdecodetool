.class Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$2;
.super Ljava/lang/Object;
.source "BaseDocFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;

.field final synthetic val$height:D

.field final synthetic val$width:D


# direct methods
.method constructor <init>(Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;DD)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$2;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;

    iput-wide p2, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$2;->val$width:D

    iput-wide p4, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$2;->val$height:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$2;->this$0:Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;

    iget-wide v1, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$2;->val$width:D

    iget-wide v3, p0, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment$2;->val$height:D

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zoloz/android/phone/zdoc/fragment/BaseDocFragment;->adjustPreview(DD)V

    return-void
.end method
