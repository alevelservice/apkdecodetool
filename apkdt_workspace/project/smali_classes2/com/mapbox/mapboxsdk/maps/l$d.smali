.class final Lcom/mapbox/mapboxsdk/maps/l$d;
.super Lcom/mapbox/android/gestures/c$b;
.source "MapGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/maps/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/mapbox/mapboxsdk/maps/l;


# direct methods
.method private constructor <init>(Lcom/mapbox/mapboxsdk/maps/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/l$d;->a:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-direct {p0}, Lcom/mapbox/android/gestures/c$b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mapbox/mapboxsdk/maps/l;Lcom/mapbox/mapboxsdk/maps/l$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/maps/l$d;-><init>(Lcom/mapbox/mapboxsdk/maps/l;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mapbox/android/gestures/c;FF)V
    .locals 0
    .param p1    # Lcom/mapbox/android/gestures/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/maps/l$d;->a:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {p2}, Lcom/mapbox/mapboxsdk/maps/l;->b(Lcom/mapbox/mapboxsdk/maps/l;)V

    .line 5
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/maps/l$d;->a:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-virtual {p2, p1}, Lcom/mapbox/mapboxsdk/maps/l;->b(Lcom/mapbox/android/gestures/c;)V

    return-void
.end method

.method public a(Lcom/mapbox/android/gestures/c;)Z
    .locals 1
    .param p1    # Lcom/mapbox/android/gestures/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l$d;->a:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/l;->h(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/b0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/b0;->M()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l$d;->a:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/maps/l;->a(Lcom/mapbox/mapboxsdk/maps/l;)V

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/l$d;->a:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/l;->a(Lcom/mapbox/android/gestures/c;)V

    const/4 p1, 0x1

    return p1
.end method

.method public b(Lcom/mapbox/android/gestures/c;FF)Z
    .locals 9
    .param p1    # Lcom/mapbox/android/gestures/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x0

    cmpl-float v2, p2, v1

    if-nez v2, :cond_0

    cmpl-float v2, p3, v1

    if-eqz v2, :cond_2

    .line 1
    :cond_0
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/l$d;->a:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v2}, Lcom/mapbox/mapboxsdk/maps/l;->l(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/e;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mapbox/mapboxsdk/maps/e;->c(I)V

    .line 2
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/l$d;->a:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v2}, Lcom/mapbox/mapboxsdk/maps/l;->h(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/b0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/maps/b0;->E()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p2, 0x0

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/l$d;->a:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-static {v1}, Lcom/mapbox/mapboxsdk/maps/l;->f(Lcom/mapbox/mapboxsdk/maps/l;)Lcom/mapbox/mapboxsdk/maps/a0;

    move-result-object v2

    neg-float p2, p2

    float-to-double v3, p2

    neg-float p2, p3

    float-to-double v5, p2

    const-wide/16 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/mapbox/mapboxsdk/maps/a0;->a(DDJ)V

    .line 4
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/maps/l$d;->a:Lcom/mapbox/mapboxsdk/maps/l;

    invoke-virtual {p2, p1}, Lcom/mapbox/mapboxsdk/maps/l;->c(Lcom/mapbox/android/gestures/c;)V

    :cond_2
    return v0
.end method
