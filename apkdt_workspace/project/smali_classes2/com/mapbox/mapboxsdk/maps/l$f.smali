.class final Lcom/mapbox/mapboxsdk/maps/l$f;
.super Lcom/mapbox/android/gestures/o$b;
.source "MapGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/maps/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "f"
.end annotation


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:D

.field private e:Z

.field private f:F

.field private g:D

.field private h:D

.field final synthetic i:Lcom/mapbox/mapboxsdk/maps/l;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/maps/l;DFFF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->i:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-direct {p0}, Lcom/mapbox/android/gestures/o$b;-><init>()V

    .line 2
    iput p4, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->a:F

    .line 3
    iput p5, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->b:F

    .line 4
    iput p6, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->c:F

    const-wide p4, 0x3f70624dd2f1a9fcL    # 0.004

    mul-double p2, p2, p4

    .line 5
    iput-wide p2, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->d:D

    return-void
.end method

.method private a(DZ)D
    .locals 8

    const-wide/high16 v0, 0x4004000000000000L    # 2.5

    mul-double p1, p1, v0

    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    mul-double v2, p1, v0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x4004000000000000L    # 2.5

    .line 27
    invoke-static/range {v2 .. v7}, Lcom/mapbox/mapboxsdk/utils/f;->a(DDD)D

    move-result-wide p1

    if-eqz p3, :cond_0

    neg-double p1, p1

    :cond_0
    return-wide p1
.end method

.method private c(Lcom/mapbox/android/gestures/o;)Landroid/graphics/PointF;
    .locals 3
    .param p1    # Lcom/mapbox/android/gestures/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->i:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/l;->k(Lcom/mapbox/mapboxsdk/maps/l;)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->i:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/maps/l;->k(Lcom/mapbox/mapboxsdk/maps/l;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->e:Z

    if-eqz v0, :cond_1

    .line 4
    new-instance p1, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->i:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/l;->h(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/b0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/b0;->u()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->i:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v2}, Lcom/mapbox/mapboxsdk/maps/l;->h(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/b0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/maps/b0;->n()F

    move-result v2

    div-float/2addr v2, v1

    invoke-direct {p1, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/mapbox/android/gestures/e;->f()Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mapbox/android/gestures/o;FF)V
    .locals 11
    .param p1    # Lcom/mapbox/android/gestures/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 14
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->i:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/l;->c(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/android/gestures/AndroidGesturesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/android/gestures/AndroidGesturesManager;->b()Lcom/mapbox/android/gestures/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mapbox/android/gestures/i;->a(Z)V

    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->i:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/l;->c(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/android/gestures/AndroidGesturesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/android/gestures/AndroidGesturesManager;->d()Lcom/mapbox/android/gestures/k;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mapbox/android/gestures/i;->a(Z)V

    .line 17
    :goto_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->i:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/l;->b(Lcom/mapbox/android/gestures/o;)V

    .line 18
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    add-float/2addr p2, p3

    .line 19
    iget-object p3, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->i:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {p3}, Lcom/mapbox/mapboxsdk/maps/l;->h(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/b0;

    move-result-object p3

    invoke-virtual {p3}, Lcom/mapbox/mapboxsdk/maps/b0;->L()Z

    move-result p3

    if-eqz p3, :cond_2

    iget p3, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->c:F

    cmpg-float p3, p2, p3

    if-ltz p3, :cond_2

    iget p3, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->f:F

    div-float/2addr p3, p2

    float-to-double v0, p3

    iget-wide v2, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->d:D

    cmpg-double p3, v0, v2

    if-gez p3, :cond_1

    goto :goto_1

    :cond_1
    float-to-double p2, p2

    .line 20
    invoke-virtual {p1}, Lcom/mapbox/android/gestures/o;->t()Z

    move-result v0

    invoke-direct {p0, p2, p3, v0}, Lcom/mapbox/mapboxsdk/maps/l$f;->a(DZ)D

    move-result-wide v4

    .line 21
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->i:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {p2}, Lcom/mapbox/mapboxsdk/maps/l;->f(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/a0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/maps/a0;->f()D

    move-result-wide v2

    .line 22
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/l$f;->c(Lcom/mapbox/android/gestures/o;)Landroid/graphics/PointF;

    move-result-object v6

    .line 23
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide v7, 0x4005bf0a8b145769L    # Math.E

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    div-double/2addr v0, v7

    add-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    add-double/2addr p1, v9

    const-wide v0, 0x4062c00000000000L    # 150.0

    mul-double p1, p1, v0

    double-to-long v7, p1

    .line 24
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->i:Lcom/mapbox/mapboxsdk/maps/l;

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Lcom/mapbox/mapboxsdk/maps/l;->a(Lcom/mapbox/mapboxsdk/maps/l;DDLandroid/graphics/PointF;J)Landroid/animation/Animator;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/mapbox/mapboxsdk/maps/l;->a(Lcom/mapbox/mapboxsdk/maps/l;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 25
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->i:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/maps/l;->d(Lcom/mapbox/mapboxsdk/maps/l;)Landroid/animation/Animator;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/mapbox/mapboxsdk/maps/l;->b(Lcom/mapbox/mapboxsdk/maps/l;Landroid/animation/Animator;)V

    return-void

    .line 26
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->i:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/maps/l;->b(Lcom/mapbox/mapboxsdk/maps/l;)V

    return-void
.end method

.method public a(Lcom/mapbox/android/gestures/o;)Z
    .locals 13
    .param p1    # Lcom/mapbox/android/gestures/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->i:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/l;->l(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/e;->c(I)V

    .line 2
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/l$f;->c(Lcom/mapbox/android/gestures/o;)Landroid/graphics/PointF;

    move-result-object v0

    .line 3
    iget-boolean v2, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->e:Z

    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/mapbox/android/gestures/a;->a()Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->i:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/maps/l;->i(Lcom/mapbox/mapboxsdk/maps/l;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v3, v2

    .line 5
    invoke-virtual {p1}, Lcom/mapbox/android/gestures/a;->a()Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v5, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->i:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v5}, Lcom/mapbox/mapboxsdk/maps/l;->i(Lcom/mapbox/mapboxsdk/maps/l;)Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-wide/16 v5, 0x0

    .line 6
    iget-wide v7, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->g:D

    const-wide/16 v9, 0x0

    const-wide/high16 v11, 0x4010000000000000L    # 4.0

    invoke-static/range {v3 .. v12}, Lcom/mapbox/mapboxsdk/utils/f;->a(DDDDD)D

    move-result-wide v3

    .line 7
    iget-wide v5, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->h:D

    if-eqz v2, :cond_1

    sub-double/2addr v5, v3

    goto :goto_1

    :cond_1
    add-double/2addr v5, v3

    .line 8
    :goto_1
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->i:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v2}, Lcom/mapbox/mapboxsdk/maps/l;->h(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/b0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/maps/b0;->v()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v2

    .line 9
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->i:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v2}, Lcom/mapbox/mapboxsdk/maps/l;->f(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/a0;

    move-result-object v2

    invoke-virtual {v2, v5, v6, v0}, Lcom/mapbox/mapboxsdk/maps/a0;->a(DLandroid/graphics/PointF;)V

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {p1}, Lcom/mapbox/android/gestures/o;->s()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    const-wide v4, 0x3fe4ccccc0000000L    # 0.6499999761581421

    mul-double v2, v2, v4

    iget-object v4, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->i:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v4}, Lcom/mapbox/mapboxsdk/maps/l;->h(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/b0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mapbox/mapboxsdk/maps/b0;->v()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    .line 11
    iget-object v4, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->i:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v4}, Lcom/mapbox/mapboxsdk/maps/l;->f(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/a0;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v0}, Lcom/mapbox/mapboxsdk/maps/a0;->b(DLandroid/graphics/PointF;)V

    .line 12
    :goto_2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->i:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/l;->c(Lcom/mapbox/android/gestures/o;)V

    .line 13
    invoke-virtual {p1}, Lcom/mapbox/android/gestures/o;->q()F

    move-result v0

    invoke-virtual {p1}, Lcom/mapbox/android/gestures/o;->r()F

    move-result p1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->f:F

    return v1
.end method

.method public b(Lcom/mapbox/android/gestures/o;)Z
    .locals 10
    .param p1    # Lcom/mapbox/android/gestures/o;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/mapbox/android/gestures/e;->g()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->e:Z

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->i:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/l;->h(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/b0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/b0;->O()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->e:Z

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->i:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/l;->h(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/b0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/b0;->I()Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->i:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/l;->c(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/android/gestures/AndroidGesturesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/android/gestures/AndroidGesturesManager;->b()Lcom/mapbox/android/gestures/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mapbox/android/gestures/i;->a(Z)V

    goto/16 :goto_1

    .line 6
    :cond_3
    invoke-virtual {p1}, Lcom/mapbox/android/gestures/o;->r()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_8

    .line 7
    invoke-virtual {p1}, Lcom/mapbox/android/gestures/o;->q()F

    move-result v0

    .line 8
    invoke-virtual {p1}, Lcom/mapbox/android/gestures/o;->r()F

    move-result v3

    .line 9
    invoke-virtual {p1}, Lcom/mapbox/android/gestures/a;->a()Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    long-to-double v4, v4

    .line 10
    invoke-virtual {p1}, Lcom/mapbox/android/gestures/a;->c()Landroid/view/MotionEvent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    long-to-double v6, v6

    cmpl-double v8, v4, v6

    if-nez v8, :cond_4

    return v2

    :cond_4
    sub-float/2addr v0, v3

    .line 11
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v8, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v4, v6

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v4

    .line 12
    iget v0, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->a:F

    float-to-double v3, v0

    cmpg-double v0, v8, v3

    if-gez v0, :cond_5

    return v2

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->i:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/l;->c(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/android/gestures/AndroidGesturesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/android/gestures/AndroidGesturesManager;->d()Lcom/mapbox/android/gestures/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/android/gestures/i;->o()Z

    move-result v0

    if-nez v0, :cond_7

    .line 14
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->i:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/l;->c(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/android/gestures/AndroidGesturesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/android/gestures/AndroidGesturesManager;->d()Lcom/mapbox/android/gestures/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/android/gestures/k;->q()F

    move-result v0

    .line 15
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v3, v0

    const-wide v5, 0x3fd999999999999aL    # 0.4

    cmpl-double v0, v3, v5

    if-lez v0, :cond_6

    iget v0, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->b:F

    float-to-double v3, v0

    cmpg-double v0, v8, v3

    if-gez v0, :cond_6

    return v2

    .line 16
    :cond_6
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->i:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/l;->h(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/b0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/b0;->B()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 17
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->i:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/l;->c(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/android/gestures/AndroidGesturesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/android/gestures/AndroidGesturesManager;->d()Lcom/mapbox/android/gestures/k;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mapbox/android/gestures/i;->a(Z)V

    .line 18
    :cond_7
    :goto_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v2, v0

    iput-wide v2, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->g:D

    .line 19
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->i:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/l;->f(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/a0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/a0;->f()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->h:D

    .line 20
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->i:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/l;->a(Lcom/mapbox/mapboxsdk/maps/l;)V

    .line 21
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->i:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/l;->a(Lcom/mapbox/android/gestures/o;)V

    .line 22
    invoke-virtual {p1}, Lcom/mapbox/android/gestures/o;->q()F

    move-result v0

    invoke-virtual {p1}, Lcom/mapbox/android/gestures/o;->r()F

    move-result p1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/mapbox/mapboxsdk/maps/l$f;->f:F

    return v1

    :cond_8
    return v2
.end method
