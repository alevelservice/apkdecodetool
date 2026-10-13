.class final Lcom/mapbox/mapboxsdk/maps/m;
.super Ljava/lang/Object;
.source "MapKeyListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/mapboxsdk/maps/m$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/mapbox/mapboxsdk/maps/a0;

.field private final b:Lcom/mapbox/mapboxsdk/maps/b0;

.field private final c:Lcom/mapbox/mapboxsdk/maps/l;

.field private d:Lcom/mapbox/mapboxsdk/maps/m$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/maps/a0;Lcom/mapbox/mapboxsdk/maps/b0;Lcom/mapbox/mapboxsdk/maps/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/m;->a:Lcom/mapbox/mapboxsdk/maps/a0;

    .line 3
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/maps/m;->b:Lcom/mapbox/mapboxsdk/maps/b0;

    .line 4
    iput-object p3, p0, Lcom/mapbox/mapboxsdk/maps/m;->c:Lcom/mapbox/mapboxsdk/maps/l;

    return-void
.end method

.method static synthetic a(Lcom/mapbox/mapboxsdk/maps/m;)Lcom/mapbox/mapboxsdk/maps/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/maps/m;->b:Lcom/mapbox/mapboxsdk/maps/b0;

    return-object p0
.end method

.method static synthetic a(Lcom/mapbox/mapboxsdk/maps/m;Lcom/mapbox/mapboxsdk/maps/m$a;)Lcom/mapbox/mapboxsdk/maps/m$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/m;->d:Lcom/mapbox/mapboxsdk/maps/m$a;

    return-object p1
.end method

.method static synthetic b(Lcom/mapbox/mapboxsdk/maps/m;)Lcom/mapbox/mapboxsdk/maps/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/maps/m;->c:Lcom/mapbox/mapboxsdk/maps/l;

    return-object p0
.end method


# virtual methods
.method a(ILandroid/view/KeyEvent;)Z
    .locals 16
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 3
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    goto :goto_0

    :cond_0
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    :goto_0
    move-wide v7, v2

    const/16 v2, 0x42

    const/4 v3, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    return v2

    .line 4
    :pswitch_0
    iget-object v1, v0, Lcom/mapbox/mapboxsdk/maps/m;->b:Lcom/mapbox/mapboxsdk/maps/b0;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/b0;->M()Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    .line 5
    :cond_1
    iget-object v1, v0, Lcom/mapbox/mapboxsdk/maps/m;->a:Lcom/mapbox/mapboxsdk/maps/a0;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/a0;->a()V

    .line 6
    iget-object v9, v0, Lcom/mapbox/mapboxsdk/maps/m;->a:Lcom/mapbox/mapboxsdk/maps/a0;

    neg-double v10, v7

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    invoke-virtual/range {v9 .. v15}, Lcom/mapbox/mapboxsdk/maps/a0;->a(DDJ)V

    return v3

    .line 7
    :pswitch_1
    iget-object v1, v0, Lcom/mapbox/mapboxsdk/maps/m;->b:Lcom/mapbox/mapboxsdk/maps/b0;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/b0;->M()Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 8
    :cond_2
    iget-object v1, v0, Lcom/mapbox/mapboxsdk/maps/m;->a:Lcom/mapbox/mapboxsdk/maps/a0;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/a0;->a()V

    .line 9
    iget-object v4, v0, Lcom/mapbox/mapboxsdk/maps/m;->a:Lcom/mapbox/mapboxsdk/maps/a0;

    const-wide/16 v1, 0x0

    const-wide/16 v9, 0x0

    move-wide v5, v7

    move-wide v7, v1

    invoke-virtual/range {v4 .. v10}, Lcom/mapbox/mapboxsdk/maps/a0;->a(DDJ)V

    return v3

    .line 10
    :pswitch_2
    iget-object v1, v0, Lcom/mapbox/mapboxsdk/maps/m;->b:Lcom/mapbox/mapboxsdk/maps/b0;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/b0;->M()Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 11
    :cond_3
    iget-object v1, v0, Lcom/mapbox/mapboxsdk/maps/m;->a:Lcom/mapbox/mapboxsdk/maps/a0;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/a0;->a()V

    .line 12
    iget-object v9, v0, Lcom/mapbox/mapboxsdk/maps/m;->a:Lcom/mapbox/mapboxsdk/maps/a0;

    const-wide/16 v10, 0x0

    neg-double v12, v7

    const-wide/16 v14, 0x0

    invoke-virtual/range {v9 .. v15}, Lcom/mapbox/mapboxsdk/maps/a0;->a(DDJ)V

    return v3

    .line 13
    :pswitch_3
    iget-object v1, v0, Lcom/mapbox/mapboxsdk/maps/m;->b:Lcom/mapbox/mapboxsdk/maps/b0;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/b0;->M()Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 14
    :cond_4
    iget-object v1, v0, Lcom/mapbox/mapboxsdk/maps/m;->a:Lcom/mapbox/mapboxsdk/maps/a0;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/a0;->a()V

    .line 15
    iget-object v4, v0, Lcom/mapbox/mapboxsdk/maps/m;->a:Lcom/mapbox/mapboxsdk/maps/a0;

    const-wide/16 v5, 0x0

    const-wide/16 v9, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/mapbox/mapboxsdk/maps/a0;->a(DDJ)V

    return v3

    .line 16
    :cond_5
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->startTracking()V

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method a(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    const/4 v3, 0x0

    if-eq v0, v2, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    return v3

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/m;->d:Lcom/mapbox/mapboxsdk/maps/m$a;

    if-eqz p1, :cond_1

    .line 19
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/m$a;->a()V

    .line 20
    iput-object v1, p0, Lcom/mapbox/mapboxsdk/maps/m;->d:Lcom/mapbox/mapboxsdk/maps/m$a;

    :cond_1
    return v2

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/m;->b:Lcom/mapbox/mapboxsdk/maps/b0;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/b0;->M()Z

    move-result v0

    if-nez v0, :cond_3

    return v3

    .line 22
    :cond_3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/m;->a:Lcom/mapbox/mapboxsdk/maps/a0;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/a0;->a()V

    .line 23
    iget-object v3, p0, Lcom/mapbox/mapboxsdk/maps/m;->a:Lcom/mapbox/mapboxsdk/maps/a0;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v4, -0x3fdc000000000000L    # -10.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v4

    const-wide/16 v8, 0x0

    move-wide v4, v0

    invoke-virtual/range {v3 .. v9}, Lcom/mapbox/mapboxsdk/maps/a0;->a(DDJ)V

    return v2

    .line 24
    :cond_4
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/m;->b:Lcom/mapbox/mapboxsdk/maps/b0;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/b0;->O()Z

    move-result p1

    if-nez p1, :cond_5

    return v3

    .line 25
    :cond_5
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/m;->d:Lcom/mapbox/mapboxsdk/maps/m$a;

    if-eqz p1, :cond_6

    .line 26
    new-instance p1, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/m;->b:Lcom/mapbox/mapboxsdk/maps/b0;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/b0;->u()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v3, p0, Lcom/mapbox/mapboxsdk/maps/m;->b:Lcom/mapbox/mapboxsdk/maps/b0;

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/maps/b0;->n()F

    move-result v3

    div-float/2addr v3, v1

    invoke-direct {p1, v0, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 27
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/m;->c:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-virtual {v0, p1, v2}, Lcom/mapbox/mapboxsdk/maps/l;->a(Landroid/graphics/PointF;Z)V

    :cond_6
    return v2

    .line 28
    :cond_7
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/m;->d:Lcom/mapbox/mapboxsdk/maps/m$a;

    if-eqz p1, :cond_8

    .line 29
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/m$a;->a()V

    .line 30
    iput-object v1, p0, Lcom/mapbox/mapboxsdk/maps/m;->d:Lcom/mapbox/mapboxsdk/maps/m$a;

    .line 31
    :cond_8
    new-instance p1, Lcom/mapbox/mapboxsdk/maps/m$a;

    invoke-direct {p1, p0}, Lcom/mapbox/mapboxsdk/maps/m$a;-><init>(Lcom/mapbox/mapboxsdk/maps/m;)V

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/m;->d:Lcom/mapbox/mapboxsdk/maps/m$a;

    .line 32
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/m;->d:Lcom/mapbox/mapboxsdk/maps/m$a;

    .line 33
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v3, v1

    .line 34
    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v2
.end method

.method b(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 p2, 0x17

    const/4 v0, 0x0

    if-eq p1, p2, :cond_0

    const/16 p2, 0x42

    if-eq p1, p2, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/m;->b:Lcom/mapbox/mapboxsdk/maps/b0;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/b0;->O()Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 3
    :cond_1
    new-instance p1, Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/mapbox/mapboxsdk/maps/m;->b:Lcom/mapbox/mapboxsdk/maps/b0;

    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/maps/b0;->u()F

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/m;->b:Lcom/mapbox/mapboxsdk/maps/b0;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/b0;->n()F

    move-result v1

    div-float/2addr v1, v0

    invoke-direct {p1, p2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 4
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/maps/m;->c:Lcom/mapbox/mapboxsdk/maps/l;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/mapbox/mapboxsdk/maps/l;->b(Landroid/graphics/PointF;Z)V

    return v0
.end method

.method c(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    :cond_0
    const/16 p2, 0x17

    if-eq p1, p2, :cond_1

    const/16 p2, 0x42

    if-eq p1, p2, :cond_1

    return v0

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/m;->b:Lcom/mapbox/mapboxsdk/maps/b0;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/maps/b0;->O()Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    .line 3
    :cond_2
    new-instance p1, Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/mapbox/mapboxsdk/maps/m;->b:Lcom/mapbox/mapboxsdk/maps/b0;

    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/maps/b0;->u()F

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/m;->b:Lcom/mapbox/mapboxsdk/maps/b0;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/b0;->n()F

    move-result v1

    div-float/2addr v1, v0

    invoke-direct {p1, p2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 4
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/maps/m;->c:Lcom/mapbox/mapboxsdk/maps/l;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/mapbox/mapboxsdk/maps/l;->a(Landroid/graphics/PointF;Z)V

    return v0
.end method
