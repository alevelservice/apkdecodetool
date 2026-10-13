.class public Lcom/example/errorWidget/DropDownBanner$c;
.super Ljava/lang/Object;
.source "DropDownBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/errorWidget/DropDownBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:Landroid/view/animation/Interpolator;

.field private b:Landroid/view/animation/Interpolator;

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Landroid/content/Context;

.field private g:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/example/errorWidget/DropDownBanner$c;->f:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/example/errorWidget/DropDownBanner$c;->g:Landroid/view/ViewGroup;

    .line 4
    sget p2, Lcom/example/native_webview/i;->error_tryAgain_upper:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/example/errorWidget/DropDownBanner$c;->e:Ljava/lang/String;

    const/16 p1, 0x50

    .line 5
    iput p1, p0, Lcom/example/errorWidget/DropDownBanner$c;->d:I

    const/16 p1, 0x1f4

    .line 6
    iput p1, p0, Lcom/example/errorWidget/DropDownBanner$c;->c:I

    .line 7
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lcom/example/errorWidget/DropDownBanner$c;->a:Landroid/view/animation/Interpolator;

    .line 8
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lcom/example/errorWidget/DropDownBanner$c;->b:Landroid/view/animation/Interpolator;

    return-void
.end method

.method static synthetic a(Lcom/example/errorWidget/DropDownBanner$c;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/example/errorWidget/DropDownBanner$c;->f:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/example/errorWidget/DropDownBanner$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/example/errorWidget/DropDownBanner$c;->d:I

    return p0
.end method

.method static synthetic c(Lcom/example/errorWidget/DropDownBanner$c;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/example/errorWidget/DropDownBanner$c;->a:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic d(Lcom/example/errorWidget/DropDownBanner$c;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/example/errorWidget/DropDownBanner$c;->b:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic e(Lcom/example/errorWidget/DropDownBanner$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/example/errorWidget/DropDownBanner$c;->c:I

    return p0
.end method

.method static synthetic f(Lcom/example/errorWidget/DropDownBanner$c;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/example/errorWidget/DropDownBanner$c;->g:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic g(Lcom/example/errorWidget/DropDownBanner$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/example/errorWidget/DropDownBanner$c;->e:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method a(I)Lcom/example/errorWidget/DropDownBanner$c;
    .locals 0

    .line 3
    iput p1, p0, Lcom/example/errorWidget/DropDownBanner$c;->c:I

    return-object p0
.end method

.method a(Landroid/view/animation/Interpolator;)Lcom/example/errorWidget/DropDownBanner$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/example/errorWidget/DropDownBanner$c;->a:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method a(Ljava/lang/String;)Lcom/example/errorWidget/DropDownBanner$c;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/example/errorWidget/DropDownBanner$c;->e:Ljava/lang/String;

    return-object p0
.end method

.method a()Lcom/example/errorWidget/DropDownBanner;
    .locals 1

    .line 5
    new-instance v0, Lcom/example/errorWidget/DropDownBanner;

    invoke-direct {v0, p0}, Lcom/example/errorWidget/DropDownBanner;-><init>(Lcom/example/errorWidget/DropDownBanner$c;)V

    return-object v0
.end method

.method b(Landroid/view/animation/Interpolator;)Lcom/example/errorWidget/DropDownBanner$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/example/errorWidget/DropDownBanner$c;->b:Landroid/view/animation/Interpolator;

    return-object p0
.end method
