.class public Lcom/example/errorWidget/DropDownBanner;
.super Landroid/widget/LinearLayout;
.source "DropDownBanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/errorWidget/DropDownBanner$c;
    }
.end annotation


# static fields
.field public static final ERROR_BANNER_TAG:Ljava/lang/String; = "Error Banner"


# instance fields
.field private e:Landroid/view/animation/Animation;

.field private f:Landroid/view/animation/Animation;

.field private g:I

.field private h:Landroid/view/animation/Interpolator;

.field private i:Landroid/view/animation/Interpolator;

.field private j:I

.field private k:Lcom/example/native_webview/j/e;


# direct methods
.method public constructor <init>(Lcom/example/errorWidget/DropDownBanner$c;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/example/errorWidget/DropDownBanner$c;->a(Lcom/example/errorWidget/DropDownBanner$c;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {p1}, Lcom/example/errorWidget/DropDownBanner$c;->b(Lcom/example/errorWidget/DropDownBanner$c;)I

    move-result v0

    iput v0, p0, Lcom/example/errorWidget/DropDownBanner;->g:I

    .line 3
    invoke-static {p1}, Lcom/example/errorWidget/DropDownBanner$c;->c(Lcom/example/errorWidget/DropDownBanner$c;)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/example/errorWidget/DropDownBanner;->h:Landroid/view/animation/Interpolator;

    .line 4
    invoke-static {p1}, Lcom/example/errorWidget/DropDownBanner$c;->d(Lcom/example/errorWidget/DropDownBanner$c;)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/example/errorWidget/DropDownBanner;->i:Landroid/view/animation/Interpolator;

    .line 5
    invoke-static {p1}, Lcom/example/errorWidget/DropDownBanner$c;->e(Lcom/example/errorWidget/DropDownBanner$c;)I

    move-result v0

    iput v0, p0, Lcom/example/errorWidget/DropDownBanner;->j:I

    .line 6
    invoke-static {p1}, Lcom/example/errorWidget/DropDownBanner$c;->f(Lcom/example/errorWidget/DropDownBanner$c;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 7
    sget v1, Lcom/example/native_webview/h;->error_banner_basic:I

    invoke-static {p1}, Lcom/example/errorWidget/DropDownBanner$c;->f(Lcom/example/errorWidget/DropDownBanner$c;)Landroid/view/ViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/databinding/g;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/example/native_webview/j/e;

    iput-object v0, p0, Lcom/example/errorWidget/DropDownBanner;->k:Lcom/example/native_webview/j/e;

    .line 8
    iget-object v0, p0, Lcom/example/errorWidget/DropDownBanner;->k:Lcom/example/native_webview/j/e;

    iget-object v0, v0, Lcom/example/native_webview/j/e;->w:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/example/errorWidget/DropDownBanner$c;->g(Lcom/example/errorWidget/DropDownBanner$c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-direct {p0}, Lcom/example/errorWidget/DropDownBanner;->a()V

    .line 10
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    invoke-static {p1}, Lcom/example/errorWidget/DropDownBanner$c;->f(Lcom/example/errorWidget/DropDownBanner$c;)Landroid/view/ViewGroup;

    move-result-object v0

    const-string v1, "Error Banner"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13
    invoke-static {p1}, Lcom/example/errorWidget/DropDownBanner$c;->f(Lcom/example/errorWidget/DropDownBanner$c;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 14
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 15
    invoke-static {p1}, Lcom/example/errorWidget/DropDownBanner$c;->f(Lcom/example/errorWidget/DropDownBanner$c;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 16
    iget-object p1, p0, Lcom/example/errorWidget/DropDownBanner;->k:Lcom/example/native_webview/j/e;

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->c()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 17
    iget-object p1, p0, Lcom/example/errorWidget/DropDownBanner;->k:Lcom/example/native_webview/j/e;

    iget-object p1, p1, Lcom/example/native_webview/j/e;->v:Landroid/widget/ImageView;

    new-instance v0, Lcom/example/errorWidget/DropDownBanner$a;

    invoke-direct {v0, p0}, Lcom/example/errorWidget/DropDownBanner$a;-><init>(Lcom/example/errorWidget/DropDownBanner;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a()V
    .locals 5

    .line 1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/example/errorWidget/DropDownBanner;->g:I

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/example/errorWidget/DropDownBanner;->e:Landroid/view/animation/Animation;

    .line 2
    iget-object v0, p0, Lcom/example/errorWidget/DropDownBanner;->e:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/example/errorWidget/DropDownBanner;->j:I

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/example/errorWidget/DropDownBanner;->g:I

    neg-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/example/errorWidget/DropDownBanner;->f:Landroid/view/animation/Animation;

    .line 4
    iget-object v0, p0, Lcom/example/errorWidget/DropDownBanner;->f:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/example/errorWidget/DropDownBanner;->j:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 5
    iget-object v0, p0, Lcom/example/errorWidget/DropDownBanner;->h:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/example/errorWidget/DropDownBanner;->e:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/example/errorWidget/DropDownBanner;->i:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_1

    .line 8
    iget-object v1, p0, Lcom/example/errorWidget/DropDownBanner;->f:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_1
    return-void
.end method

.method static synthetic access$700(Lcom/example/errorWidget/DropDownBanner;)Lcom/example/native_webview/j/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/example/errorWidget/DropDownBanner;->k:Lcom/example/native_webview/j/e;

    return-object p0
.end method


# virtual methods
.method public hide()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/example/errorWidget/DropDownBanner;->k:Lcom/example/native_webview/j/e;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/example/errorWidget/DropDownBanner;->f:Landroid/view/animation/Animation;

    new-instance v1, Lcom/example/errorWidget/DropDownBanner$b;

    invoke-direct {v1, p0}, Lcom/example/errorWidget/DropDownBanner$b;-><init>(Lcom/example/errorWidget/DropDownBanner;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3
    iget-object v0, p0, Lcom/example/errorWidget/DropDownBanner;->k:Lcom/example/native_webview/j/e;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->c()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/example/errorWidget/DropDownBanner;->f:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/example/errorWidget/DropDownBanner;->k:Lcom/example/native_webview/j/e;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/example/errorWidget/DropDownBanner;->k:Lcom/example/native_webview/j/e;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->c()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/example/errorWidget/DropDownBanner;->k:Lcom/example/native_webview/j/e;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->c()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/example/errorWidget/DropDownBanner;->e:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method
