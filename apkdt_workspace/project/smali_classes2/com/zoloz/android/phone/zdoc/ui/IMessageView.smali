.class public abstract Lcom/zoloz/android/phone/zdoc/ui/IMessageView;
.super Landroid/widget/RelativeLayout;
.source "IMessageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoloz/android/phone/zdoc/ui/IMessageView$IMessageViewClickListener;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/zoloz/android/phone/zdoc/ui/IMessageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/zoloz/android/phone/zdoc/ui/IMessageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/zoloz/android/phone/zdoc/ui/IMessageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public abstract clearClickListener()V
.end method

.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    return-void
.end method

.method public abstract setOnConfirmListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setOnReTakePhotoListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setOnTakePhotoListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setUiLocation(IIII)V
.end method

.method public abstract updateMessage(I)V
.end method

.method public abstract updateUI(Lcom/zoloz/android/phone/zdoc/ui/UIState;II)V
.end method
