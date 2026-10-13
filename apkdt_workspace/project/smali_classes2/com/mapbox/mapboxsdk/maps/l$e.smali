.class final Lcom/mapbox/mapboxsdk/maps/l$e;
.super Lcom/mapbox/android/gestures/k$b;
.source "MapGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/maps/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:D

.field private final e:F

.field final synthetic f:Lcom/mapbox/mapboxsdk/maps/l;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/maps/l;FDFFF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l$e;->f:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-direct {p0}, Lcom/mapbox/android/gestures/k$b;-><init>()V

    .line 2
    iput p2, p0, Lcom/mapbox/mapboxsdk/maps/l$e;->a:F

    .line 3
    iput p5, p0, Lcom/mapbox/mapboxsdk/maps/l$e;->b:F

    .line 4
    iput p6, p0, Lcom/mapbox/mapboxsdk/maps/l$e;->c:F

    const-wide p1, 0x3f2cd5f99c38b04cL    # 2.2000000000000003E-4

    mul-double p3, p3, p1

    .line 5
    iput-wide p3, p0, Lcom/mapbox/mapboxsdk/maps/l$e;->d:D

    .line 6
    iput p7, p0, Lcom/mapbox/mapboxsdk/maps/l$e;->e:F

    return-void
.end method

.method private a(FJLandroid/graphics/PointF;)Landroid/animation/Animator;
    .locals 2
    .param p4    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 32
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 33
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 34
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 35
    new-instance p2, Lcom/mapbox/mapboxsdk/maps/l$e$a;

    invoke-direct {p2, p0, p4}, Lcom/mapbox/mapboxsdk/maps/l$e$a;-><init>(Lcom/mapbox/mapboxsdk/maps/l$e;Landroid/graphics/PointF;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 36
    new-instance p2, Lcom/mapbox/mapboxsdk/maps/l$e$b;

    invoke-direct {p2, p0}, Lcom/mapbox/mapboxsdk/maps/l$e$b;-><init>(Lcom/mapbox/mapboxsdk/maps/l$e;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method

.method private b(Lcom/mapbox/android/gestures/k;)Landroid/graphics/PointF;
    .locals 1
    .param p1    # Lcom/mapbox/android/gestures/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l$e;->f:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/l;->k(Lcom/mapbox/mapboxsdk/maps/l;)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l$e;->f:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/maps/l;->k(Lcom/mapbox/mapboxsdk/maps/l;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/mapbox/android/gestures/e;->f()Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mapbox/android/gestures/k;FFF)V
    .locals 6
    .param p1    # Lcom/mapbox/android/gestures/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 17
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l$e;->f:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/l;->h(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/b0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/b0;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l$e;->f:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/l;->c(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/android/gestures/AndroidGesturesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/android/gestures/AndroidGesturesManager;->f()Lcom/mapbox/android/gestures/o;

    move-result-object v0

    iget v1, p0, Lcom/mapbox/mapboxsdk/maps/l$e;->e:F

    invoke-virtual {v0, v1}, Lcom/mapbox/android/gestures/o;->b(F)V

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l$e;->f:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/l;->b(Lcom/mapbox/android/gestures/k;)V

    .line 20
    iget v0, p0, Lcom/mapbox/mapboxsdk/maps/l$e;->b:F

    mul-float p4, p4, v0

    const/high16 v0, -0x3e100000    # -30.0f

    const/high16 v1, 0x41f00000    # 30.0f

    .line 21
    invoke-static {p4, v0, v1}, Lcom/mapbox/mapboxsdk/utils/f;->a(FFF)F

    move-result p4

    .line 22
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    add-float/2addr p2, p3

    .line 23
    invoke-virtual {p1}, Lcom/mapbox/android/gestures/k;->q()F

    move-result p3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    div-float/2addr p3, p2

    float-to-double p2, p3

    .line 24
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l$e;->f:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/l;->h(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/b0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/b0;->K()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/mapbox/mapboxsdk/maps/l$e;->c:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l$e;->f:Lcom/mapbox/mapboxsdk/maps/l;

    .line 26
    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/l;->c(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/android/gestures/AndroidGesturesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/android/gestures/AndroidGesturesManager;->f()Lcom/mapbox/android/gestures/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/android/gestures/i;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/mapbox/mapboxsdk/maps/l$e;->d:D

    cmpg-double v2, p2, v0

    if-gez v2, :cond_1

    goto :goto_0

    .line 27
    :cond_1
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-double p2, p2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide v2, 0x4005bf0a8b145769L    # Math.E

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->log(D)D

    move-result-wide p2

    add-double/2addr p2, v4

    const-wide v0, 0x4062c00000000000L    # 150.0

    mul-double p2, p2, v0

    double-to-long p2, p2

    .line 28
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/l$e;->b(Lcom/mapbox/android/gestures/k;)Landroid/graphics/PointF;

    move-result-object p1

    .line 29
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l$e;->f:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-direct {p0, p4, p2, p3, p1}, Lcom/mapbox/mapboxsdk/maps/l$e;->a(FJLandroid/graphics/PointF;)Landroid/animation/Animator;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mapbox/mapboxsdk/maps/l;->c(Lcom/mapbox/mapboxsdk/maps/l;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 30
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l$e;->f:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/maps/l;->e(Lcom/mapbox/mapboxsdk/maps/l;)Landroid/animation/Animator;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/mapbox/mapboxsdk/maps/l;->b(Lcom/mapbox/mapboxsdk/maps/l;Landroid/animation/Animator;)V

    return-void

    .line 31
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l$e;->f:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/maps/l;->b(Lcom/mapbox/mapboxsdk/maps/l;)V

    return-void
.end method

.method public a(Lcom/mapbox/android/gestures/k;)Z
    .locals 8
    .param p1    # Lcom/mapbox/android/gestures/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l$e;->f:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/l;->h(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/b0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/b0;->J()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/mapbox/android/gestures/k;->q()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 3
    invoke-virtual {p1}, Lcom/mapbox/android/gestures/a;->a()Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    long-to-double v2, v2

    .line 4
    invoke-virtual {p1}, Lcom/mapbox/android/gestures/a;->c()Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    long-to-double v4, v4

    cmpl-double v6, v2, v4

    if-nez v6, :cond_1

    return v1

    :cond_1
    float-to-double v6, v0

    .line 5
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v2

    .line 6
    invoke-virtual {p1}, Lcom/mapbox/android/gestures/k;->r()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const-wide v2, 0x3fa47ae147ae147bL    # 0.04

    cmpg-double v4, v6, v2

    if-ltz v4, :cond_6

    const-wide v2, 0x3fb1eb851eb851ecL    # 0.07

    cmpl-double v4, v6, v2

    if-lez v4, :cond_2

    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_6

    :cond_2
    const-wide v2, 0x3fc3333333333333L    # 0.15

    cmpl-double v4, v6, v2

    if-lez v4, :cond_3

    const/high16 v2, 0x40e00000    # 7.0f

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_6

    :cond_3
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v4, v6, v2

    if-lez v4, :cond_4

    const/high16 v2, 0x41700000    # 15.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    goto :goto_0

    .line 7
    :cond_4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l$e;->f:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/l;->h(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/b0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/b0;->G()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l$e;->f:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/l;->c(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/android/gestures/AndroidGesturesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/android/gestures/AndroidGesturesManager;->f()Lcom/mapbox/android/gestures/o;

    move-result-object v0

    iget v1, p0, Lcom/mapbox/mapboxsdk/maps/l$e;->a:F

    invoke-virtual {v0, v1}, Lcom/mapbox/android/gestures/o;->b(F)V

    .line 9
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l$e;->f:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/l;->c(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/android/gestures/AndroidGesturesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/android/gestures/AndroidGesturesManager;->f()Lcom/mapbox/android/gestures/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/android/gestures/i;->n()V

    .line 10
    :cond_5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l$e;->f:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/l;->a(Lcom/mapbox/mapboxsdk/maps/l;)V

    .line 11
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l$e;->f:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/l;->a(Lcom/mapbox/android/gestures/k;)V

    const/4 p1, 0x1

    return p1

    :cond_6
    :goto_0
    return v1
.end method

.method public a(Lcom/mapbox/android/gestures/k;FF)Z
    .locals 4
    .param p1    # Lcom/mapbox/android/gestures/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 12
    iget-object p3, p0, Lcom/mapbox/mapboxsdk/maps/l$e;->f:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {p3}, Lcom/mapbox/mapboxsdk/maps/l;->l(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/e;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/mapbox/mapboxsdk/maps/e;->c(I)V

    .line 13
    iget-object p3, p0, Lcom/mapbox/mapboxsdk/maps/l$e;->f:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {p3}, Lcom/mapbox/mapboxsdk/maps/l;->f(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/a0;

    move-result-object p3

    invoke-virtual {p3}, Lcom/mapbox/mapboxsdk/maps/a0;->e()D

    move-result-wide v1

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, p2

    .line 14
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/l$e;->b(Lcom/mapbox/android/gestures/k;)Landroid/graphics/PointF;

    move-result-object p2

    .line 15
    iget-object p3, p0, Lcom/mapbox/mapboxsdk/maps/l$e;->f:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {p3}, Lcom/mapbox/mapboxsdk/maps/l;->f(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/a0;

    move-result-object p3

    iget v3, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p3, v1, v2, v3, p2}, Lcom/mapbox/mapboxsdk/maps/a0;->a(DFF)V

    .line 16
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/maps/l$e;->f:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-virtual {p2, p1}, Lcom/mapbox/mapboxsdk/maps/l;->c(Lcom/mapbox/android/gestures/k;)V

    return v0
.end method
