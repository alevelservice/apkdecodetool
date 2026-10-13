.class abstract Lcom/mapbox/mapboxsdk/location/r;
.super Landroid/animation/ValueAnimator;
.source "MapboxAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/mapboxsdk/location/r$b;,
        Lcom/mapbox/mapboxsdk/location/r$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/animation/ValueAnimator;",
        "Landroid/animation/ValueAnimator$AnimatorUpdateListener;"
    }
.end annotation


# instance fields
.field private final e:Lcom/mapbox/mapboxsdk/location/r$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mapbox/mapboxsdk/location/r$b<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final h:D

.field private i:J

.field private j:Z


# direct methods
.method constructor <init>([Ljava/lang/Object;Lcom/mapbox/mapboxsdk/location/r$b;I)V
    .locals 4
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x2L
        .end annotation
    .end param
    .param p2    # Lcom/mapbox/mapboxsdk/location/r$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;",
            "Lcom/mapbox/mapboxsdk/location/r$b<",
            "TK;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    int-to-double v0, p3

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v0

    iput-wide v2, p0, Lcom/mapbox/mapboxsdk/location/r;->h:D

    .line 3
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/location/r;->c()Landroid/animation/TypeEvaluator;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 5
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/location/r;->e:Lcom/mapbox/mapboxsdk/location/r$b;

    .line 6
    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/r;->f:Ljava/lang/Object;

    .line 7
    invoke-virtual {p0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8
    new-instance p1, Lcom/mapbox/mapboxsdk/location/r$c;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/mapbox/mapboxsdk/location/r$c;-><init>(Lcom/mapbox/mapboxsdk/location/r;Lcom/mapbox/mapboxsdk/location/r$a;)V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic a(Lcom/mapbox/mapboxsdk/location/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/r;->d()V

    return-void
.end method

.method private d()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/r;->j:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/r;->e:Lcom/mapbox/mapboxsdk/location/r$b;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/r;->g:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/mapbox/mapboxsdk/location/r$b;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/r;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/r;->j:Z

    return-void
.end method

.method abstract c()Landroid/animation/TypeEvaluator;
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/r;->g:Ljava/lang/Object;

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 3
    iget-wide v2, p0, Lcom/mapbox/mapboxsdk/location/r;->i:J

    sub-long v2, v0, v2

    long-to-double v2, v2

    iget-wide v4, p0, Lcom/mapbox/mapboxsdk/location/r;->h:D

    cmpg-double p1, v2, v4

    if-gez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/location/r;->d()V

    .line 5
    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/location/r;->i:J

    return-void
.end method
