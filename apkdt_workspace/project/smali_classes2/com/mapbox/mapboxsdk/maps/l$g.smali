.class final Lcom/mapbox/mapboxsdk/maps/l$g;
.super Lcom/mapbox/android/gestures/l$b;
.source "MapGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/maps/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcom/mapbox/mapboxsdk/maps/l;


# direct methods
.method private constructor <init>(Lcom/mapbox/mapboxsdk/maps/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l$g;->a:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-direct {p0}, Lcom/mapbox/android/gestures/l$b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mapbox/mapboxsdk/maps/l;Lcom/mapbox/mapboxsdk/maps/l$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/l$g;-><init>(Lcom/mapbox/mapboxsdk/maps/l;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mapbox/android/gestures/l;FF)V
    .locals 0
    .param p1    # Lcom/mapbox/android/gestures/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/maps/l$g;->a:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {p2}, Lcom/mapbox/mapboxsdk/maps/l;->b(Lcom/mapbox/mapboxsdk/maps/l;)V

    .line 6
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/maps/l$g;->a:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {p2}, Lcom/mapbox/mapboxsdk/maps/l;->c(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/android/gestures/AndroidGesturesManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mapbox/android/gestures/AndroidGesturesManager;->b()Lcom/mapbox/android/gestures/c;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/mapbox/android/gestures/i;->a(Z)V

    .line 7
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/maps/l$g;->a:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-virtual {p2, p1}, Lcom/mapbox/mapboxsdk/maps/l;->b(Lcom/mapbox/android/gestures/l;)V

    return-void
.end method

.method public a(Lcom/mapbox/android/gestures/l;)Z
    .locals 2
    .param p1    # Lcom/mapbox/android/gestures/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l$g;->a:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/l;->h(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/b0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/b0;->N()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l$g;->a:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/l;->a(Lcom/mapbox/mapboxsdk/maps/l;)V

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l$g;->a:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/l;->c(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/android/gestures/AndroidGesturesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/android/gestures/AndroidGesturesManager;->b()Lcom/mapbox/android/gestures/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mapbox/android/gestures/i;->a(Z)V

    .line 4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l$g;->a:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/l;->a(Lcom/mapbox/android/gestures/l;)V

    const/4 p1, 0x1

    return p1
.end method

.method public b(Lcom/mapbox/android/gestures/l;FF)Z
    .locals 9
    .param p1    # Lcom/mapbox/android/gestures/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p3, p0, Lcom/mapbox/mapboxsdk/maps/l$g;->a:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {p3}, Lcom/mapbox/mapboxsdk/maps/l;->l(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/e;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/mapbox/mapboxsdk/maps/e;->c(I)V

    .line 2
    iget-object p3, p0, Lcom/mapbox/mapboxsdk/maps/l$g;->a:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {p3}, Lcom/mapbox/mapboxsdk/maps/l;->f(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/a0;

    move-result-object p3

    invoke-virtual {p3}, Lcom/mapbox/mapboxsdk/maps/a0;->g()D

    move-result-wide v1

    const p3, 0x3dcccccd    # 0.1f

    mul-float p2, p2, p3

    float-to-double p2, p2

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v3, v1, p2

    const-wide/16 v5, 0x0

    const-wide/high16 v7, 0x404e000000000000L    # 60.0

    .line 4
    invoke-static/range {v3 .. v8}, Lcom/mapbox/mapboxsdk/utils/f;->a(DDD)D

    move-result-wide p2

    .line 5
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/l$g;->a:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v1}, Lcom/mapbox/mapboxsdk/maps/l;->f(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/a0;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/mapbox/mapboxsdk/maps/a0;->a(Ljava/lang/Double;)V

    .line 6
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/maps/l$g;->a:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-virtual {p2, p1}, Lcom/mapbox/mapboxsdk/maps/l;->c(Lcom/mapbox/android/gestures/l;)V

    return v0
.end method
