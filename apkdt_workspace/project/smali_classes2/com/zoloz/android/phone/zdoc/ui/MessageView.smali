.class public Lcom/zoloz/android/phone/zdoc/ui/MessageView;
.super Lcom/zoloz/android/phone/zdoc/ui/IMessageView;
.source "MessageView.java"


# static fields
.field public static final SHOW_POWER_BY_ZOLOZ:I = 0x1


# instance fields
.field private mBottomLayout:Landroid/view/View;

.field private mBrandTextView:Lzoloz/ap/com/toolkit/ui/CustomTextView;

.field protected mCaptureTips:Lzoloz/ap/com/toolkit/ui/CustomTextView;

.field private mConfirmPhoto:Landroid/view/View;

.field private mConfirmTextView:Lzoloz/ap/com/toolkit/ui/CustomTextView;

.field private mMainTextView:Lzoloz/ap/com/toolkit/ui/CustomTextView;

.field private mPressImageView:Landroid/widget/ImageView;

.field private mRetakePhoto:Landroid/view/View;

.field private mShowByZoloz:I

.field private mShowPress:Z

.field protected mTipsTextView:Lzoloz/ap/com/toolkit/ui/CustomTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/zoloz/android/phone/zdoc/ui/IMessageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/zoloz/android/phone/zdoc/ui/IMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/zoloz/android/phone/zdoc/ui/IMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public clearClickListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mPressImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mConfirmPhoto:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mRetakePhoto:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/zoloz/android/phone/zdoc/R$layout;->layout_message:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 2
    sget-object v0, Lcom/zoloz/android/phone/zdoc/R$styleable;->MessageView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    sget p2, Lcom/zoloz/android/phone/zdoc/R$styleable;->MessageView_z_message_view_custom:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 4
    sget v1, Lcom/zoloz/android/phone/zdoc/R$styleable;->MessageView_z_showPress:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mShowPress:Z

    .line 5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 6
    sget p1, Lcom/zoloz/android/phone/zdoc/R$id;->btn_press:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mPressImageView:Landroid/widget/ImageView;

    .line 7
    sget p1, Lcom/zoloz/android/phone/zdoc/R$id;->btn_X:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mRetakePhoto:Landroid/view/View;

    .line 8
    sget p1, Lcom/zoloz/android/phone/zdoc/R$id;->btn_ok:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mConfirmPhoto:Landroid/view/View;

    .line 9
    sget p1, Lcom/zoloz/android/phone/zdoc/R$id;->tv_branding:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lzoloz/ap/com/toolkit/ui/CustomTextView;

    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mBrandTextView:Lzoloz/ap/com/toolkit/ui/CustomTextView;

    .line 10
    sget p1, Lcom/zoloz/android/phone/zdoc/R$id;->tv_main_message:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lzoloz/ap/com/toolkit/ui/CustomTextView;

    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mMainTextView:Lzoloz/ap/com/toolkit/ui/CustomTextView;

    .line 11
    sget p1, Lcom/zoloz/android/phone/zdoc/R$id;->tv_confirm_msg:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lzoloz/ap/com/toolkit/ui/CustomTextView;

    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mConfirmTextView:Lzoloz/ap/com/toolkit/ui/CustomTextView;

    .line 12
    sget p1, Lcom/zoloz/android/phone/zdoc/R$id;->zdoc_capture:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lzoloz/ap/com/toolkit/ui/CustomTextView;

    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mCaptureTips:Lzoloz/ap/com/toolkit/ui/CustomTextView;

    .line 13
    sget p1, Lcom/zoloz/android/phone/zdoc/R$id;->remind_text:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lzoloz/ap/com/toolkit/ui/CustomTextView;

    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mTipsTextView:Lzoloz/ap/com/toolkit/ui/CustomTextView;

    .line 14
    sget p1, Lcom/zoloz/android/phone/zdoc/R$id;->message_opt_layout:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mBottomLayout:Landroid/view/View;

    if-eqz p2, :cond_0

    .line 15
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mMainTextView:Lzoloz/ap/com/toolkit/ui/CustomTextView;

    invoke-virtual {p1}, Lzoloz/ap/com/toolkit/ui/CustomTextView;->setTextFont()V

    .line 16
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mBrandTextView:Lzoloz/ap/com/toolkit/ui/CustomTextView;

    invoke-virtual {p1}, Lzoloz/ap/com/toolkit/ui/CustomTextView;->setTextFont()V

    :cond_0
    return-void
.end method

.method public setOnConfirmListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mConfirmPhoto:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnReTakePhotoListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mRetakePhoto:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnTakePhotoListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mPressImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setUiLocation(IIII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->updateFooterLayout(IIII)V

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->updateTipsView(IIII)V

    return-void
.end method

.method protected updateFooterLayout(IIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mBottomLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    iput p4, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 3
    iget-object p2, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mBottomLayout:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateMessage(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/zoloz/android/phone/zdoc/ui/UIState;->CAPTURE:Lcom/zoloz/android/phone/zdoc/ui/UIState;

    iget v1, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mShowByZoloz:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->updateUI(Lcom/zoloz/android/phone/zdoc/ui/UIState;II)V

    return-void
.end method

.method protected updateTipsView(IIII)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mTipsTextView:Lzoloz/ap/com/toolkit/ui/CustomTextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    iput p3, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 3
    iget-object p2, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mTipsTextView:Lzoloz/ap/com/toolkit/ui/CustomTextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1}, Lcom/zoloz/android/phone/zdoc/ui/UIFacade;->getMainMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateUI(Lcom/zoloz/android/phone/zdoc/ui/UIState;II)V
    .locals 2

    .line 1
    iput p2, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mShowByZoloz:I

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-ne p2, p3, :cond_0

    .line 2
    iget-object p2, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mBrandTextView:Lzoloz/ap/com/toolkit/ui/CustomTextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mBrandTextView:Lzoloz/ap/com/toolkit/ui/CustomTextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    :goto_0
    sget-object p2, Lcom/zoloz/android/phone/zdoc/ui/MessageView$1;->$SwitchMap$com$zoloz$android$phone$zdoc$ui$UIState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, p3, :cond_5

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3

    const/4 p2, 0x4

    if-eq p1, p2, :cond_2

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    goto/16 :goto_1

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mMainTextView:Lzoloz/ap/com/toolkit/ui/CustomTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mConfirmTextView:Lzoloz/ap/com/toolkit/ui/CustomTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mTipsTextView:Lzoloz/ap/com/toolkit/ui/CustomTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mCaptureTips:Lzoloz/ap/com/toolkit/ui/CustomTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mMainTextView:Lzoloz/ap/com/toolkit/ui/CustomTextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mMainTextView:Lzoloz/ap/com/toolkit/ui/CustomTextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/zoloz/android/phone/zdoc/ui/UIFacade;->getUploadEndString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mConfirmTextView:Lzoloz/ap/com/toolkit/ui/CustomTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mTipsTextView:Lzoloz/ap/com/toolkit/ui/CustomTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mCaptureTips:Lzoloz/ap/com/toolkit/ui/CustomTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mMainTextView:Lzoloz/ap/com/toolkit/ui/CustomTextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/zoloz/android/phone/zdoc/ui/UIFacade;->getUploadingString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mMainTextView:Lzoloz/ap/com/toolkit/ui/CustomTextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mRetakePhoto:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mConfirmPhoto:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mPressImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mConfirmTextView:Lzoloz/ap/com/toolkit/ui/CustomTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mTipsTextView:Lzoloz/ap/com/toolkit/ui/CustomTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mCaptureTips:Lzoloz/ap/com/toolkit/ui/CustomTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 22
    :cond_4
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mMainTextView:Lzoloz/ap/com/toolkit/ui/CustomTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mPressImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 24
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mRetakePhoto:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 25
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mConfirmPhoto:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 26
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mConfirmTextView:Lzoloz/ap/com/toolkit/ui/CustomTextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 27
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mTipsTextView:Lzoloz/ap/com/toolkit/ui/CustomTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mCaptureTips:Lzoloz/ap/com/toolkit/ui/CustomTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 29
    :cond_5
    iget-boolean p1, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mShowPress:Z

    if-eqz p1, :cond_6

    .line 30
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mPressImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    :cond_6
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mMainTextView:Lzoloz/ap/com/toolkit/ui/CustomTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 32
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mRetakePhoto:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mConfirmPhoto:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mConfirmTextView:Lzoloz/ap/com/toolkit/ui/CustomTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 35
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mTipsTextView:Lzoloz/ap/com/toolkit/ui/CustomTextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 36
    iget-object p1, p0, Lcom/zoloz/android/phone/zdoc/ui/MessageView;->mCaptureTips:Lzoloz/ap/com/toolkit/ui/CustomTextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method
