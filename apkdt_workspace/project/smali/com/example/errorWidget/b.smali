.class public Lcom/example/errorWidget/b;
.super Ljava/lang/Object;
.source "ErrorView.java"


# static fields
.field private static a:Lcom/example/errorWidget/DropDownBanner;


# direct methods
.method public static a()V
    .locals 1

    .line 7
    sget-object v0, Lcom/example/errorWidget/b;->a:Lcom/example/errorWidget/DropDownBanner;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/example/errorWidget/DropDownBanner;->hide()V

    :cond_0
    return-void
.end method

.method private static a(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/example/errorWidget/DropDownBanner$c;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast p0, Landroid/view/ViewGroup;

    invoke-direct {v0, v1, p0}, Lcom/example/errorWidget/DropDownBanner$c;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    new-instance p0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/example/errorWidget/DropDownBanner$c;->a(Landroid/view/animation/Interpolator;)Lcom/example/errorWidget/DropDownBanner$c;

    new-instance p0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 3
    invoke-virtual {v0, p0}, Lcom/example/errorWidget/DropDownBanner$c;->b(Landroid/view/animation/Interpolator;)Lcom/example/errorWidget/DropDownBanner$c;

    const/16 p0, 0x12c

    .line 4
    invoke-virtual {v0, p0}, Lcom/example/errorWidget/DropDownBanner$c;->a(I)Lcom/example/errorWidget/DropDownBanner$c;

    .line 5
    invoke-virtual {v0, p1}, Lcom/example/errorWidget/DropDownBanner$c;->a(Ljava/lang/String;)Lcom/example/errorWidget/DropDownBanner$c;

    .line 6
    invoke-virtual {v0}, Lcom/example/errorWidget/DropDownBanner$c;->a()Lcom/example/errorWidget/DropDownBanner;

    move-result-object p0

    sput-object p0, Lcom/example/errorWidget/b;->a:Lcom/example/errorWidget/DropDownBanner;

    return-void
.end method

.method public static b(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/example/errorWidget/b;->a()V

    .line 2
    invoke-static {p0, p1}, Lcom/example/errorWidget/b;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 3
    sget-object p0, Lcom/example/errorWidget/b;->a:Lcom/example/errorWidget/DropDownBanner;

    invoke-virtual {p0}, Lcom/example/errorWidget/DropDownBanner;->show()V

    return-void
.end method
