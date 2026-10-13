.class final Lcom/mapbox/mapboxsdk/maps/l$h;
.super Lcom/mapbox/android/gestures/n$b;
.source "MapGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/maps/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "h"
.end annotation


# instance fields
.field private final e:F

.field final synthetic f:Lcom/mapbox/mapboxsdk/maps/l;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/maps/l;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l$h;->f:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-direct {p0}, Lcom/mapbox/android/gestures/n$b;-><init>()V

    .line 2
    iput p2, p0, Lcom/mapbox/mapboxsdk/maps/l$h;->e:F

    return-void
.end method


# virtual methods
.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l$h;->f:Lcom/mapbox/mapboxsdk/maps/l;

    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v0, v1}, Lcom/mapbox/mapboxsdk/maps/l;->a(Lcom/mapbox/mapboxsdk/maps/l;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l$h;->f:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/l;->j(Lcom/mapbox/mapboxsdk/maps/l;)V

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/l$h;->f:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v2}, Lcom/mapbox/mapboxsdk/maps/l;->i(Lcom/mapbox/mapboxsdk/maps/l;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/l$h;->f:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v2}, Lcom/mapbox/mapboxsdk/maps/l;->i(Lcom/mapbox/mapboxsdk/maps/l;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 7
    iget v2, p0, Lcom/mapbox/mapboxsdk/maps/l$h;->e:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_4

    cmpl-float p1, p1, v2

    if-lez p1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l$h;->f:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/maps/l;->h(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/b0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/b0;->O()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l$h;->f:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/maps/l;->h(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/b0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/b0;->C()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l$h;->f:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/maps/l;->k(Lcom/mapbox/mapboxsdk/maps/l;)Landroid/graphics/PointF;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l$h;->f:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/maps/l;->k(Lcom/mapbox/mapboxsdk/maps/l;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mapbox/mapboxsdk/maps/l;->a(Lcom/mapbox/mapboxsdk/maps/l;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l$h;->f:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/maps/l;->i(Lcom/mapbox/mapboxsdk/maps/l;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lcom/mapbox/mapboxsdk/maps/l;->a(Landroid/graphics/PointF;Z)V

    return v1

    :cond_4
    :goto_0
    return v3

    .line 12
    :cond_5
    invoke-super {p0, p1}, Lcom/mapbox/android/gestures/n$b;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    .line 1
    iget-object v3, v0, Lcom/mapbox/mapboxsdk/maps/l$h;->f:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/maps/l;->h(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/b0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/maps/b0;->M()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    .line 2
    :cond_0
    iget-object v3, v0, Lcom/mapbox/mapboxsdk/maps/l$h;->f:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/maps/l;->h(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/b0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/maps/b0;->D()Z

    move-result v3

    if-nez v3, :cond_1

    return v4

    .line 3
    :cond_1
    iget-object v3, v0, Lcom/mapbox/mapboxsdk/maps/l$h;->f:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/maps/l;->h(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/b0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/maps/b0;->t()F

    move-result v3

    div-float v5, v1, v3

    float-to-double v5, v5

    div-float v7, v2, v3

    float-to-double v7, v7

    .line 4
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    const-wide v7, 0x408f400000000000L    # 1000.0

    cmpg-double v9, v5, v7

    if-gez v9, :cond_2

    return v4

    .line 5
    :cond_2
    iget-object v7, v0, Lcom/mapbox/mapboxsdk/maps/l$h;->f:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v7}, Lcom/mapbox/mapboxsdk/maps/l;->f(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/a0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mapbox/mapboxsdk/maps/a0;->g()D

    move-result-wide v7

    const-wide/high16 v9, 0x3ff8000000000000L    # 1.5

    const-wide/16 v11, 0x0

    cmpl-double v13, v7, v11

    if-eqz v13, :cond_3

    const-wide/high16 v13, 0x4024000000000000L    # 10.0

    div-double/2addr v7, v13

    goto :goto_0

    :cond_3
    move-wide v7, v11

    :goto_0
    add-double/2addr v7, v9

    float-to-double v9, v1

    .line 6
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v7

    float-to-double v13, v3

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v13

    float-to-double v1, v2

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v7

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double v18, v1, v13

    const-wide/high16 v1, 0x401c000000000000L    # 7.0

    div-double/2addr v5, v1

    div-double/2addr v5, v7

    const-wide v1, 0x4062c00000000000L    # 150.0

    add-double/2addr v5, v1

    double-to-long v1, v5

    .line 8
    iget-object v3, v0, Lcom/mapbox/mapboxsdk/maps/l$h;->f:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/maps/l;->h(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/b0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/maps/b0;->E()Z

    move-result v3

    if-nez v3, :cond_5

    div-double v9, v9, v18

    .line 9
    invoke-static {v9, v10}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x4052c00000000000L    # 75.0

    cmpl-double v3, v5, v7

    if-lez v3, :cond_4

    return v4

    :cond_4
    move-wide/from16 v16, v11

    goto :goto_1

    :cond_5
    move-wide/from16 v16, v9

    .line 10
    :goto_1
    iget-object v3, v0, Lcom/mapbox/mapboxsdk/maps/l$h;->f:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/maps/l;->f(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/a0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/maps/a0;->a()V

    .line 11
    iget-object v3, v0, Lcom/mapbox/mapboxsdk/maps/l$h;->f:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/maps/l;->c()V

    .line 12
    iget-object v3, v0, Lcom/mapbox/mapboxsdk/maps/l$h;->f:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/maps/l;->l(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/e;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/mapbox/mapboxsdk/maps/e;->c(I)V

    .line 13
    iget-object v3, v0, Lcom/mapbox/mapboxsdk/maps/l$h;->f:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/maps/l;->f(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/a0;

    move-result-object v15

    move-wide/from16 v20, v1

    invoke-virtual/range {v15 .. v21}, Lcom/mapbox/mapboxsdk/maps/a0;->a(DDJ)V

    return v4
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l$h;->f:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/maps/l;->b(Landroid/graphics/PointF;)V

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l$h;->f:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/maps/l;->g(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/maps/b;->a(Landroid/graphics/PointF;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l$h;->f:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/maps/l;->h(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/b0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/b0;->A()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l$h;->f:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/maps/l;->g(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/b;->a()V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l$h;->f:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/maps/l;->a(Landroid/graphics/PointF;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l$h;->f:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/maps/l;->f(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/a0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/a0;->a()V

    const/4 p1, 0x1

    return p1
.end method
