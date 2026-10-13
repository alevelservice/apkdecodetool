.class Lcom/mapbox/mapboxsdk/location/j$g;
.super Ljava/lang/Object;
.source "LocationCameraController.java"

# interfaces
.implements Lcom/mapbox/mapboxsdk/maps/n$r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/location/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Lcom/mapbox/mapboxsdk/location/j;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/location/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/j$g;->b:Lcom/mapbox/mapboxsdk/location/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private d(Lcom/mapbox/android/gestures/c;)V
    .locals 2
    .param p1    # Lcom/mapbox/android/gestures/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/mapbox/android/gestures/c;->r()F

    move-result v0

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/j$g;->b:Lcom/mapbox/mapboxsdk/location/j;

    invoke-static {v1}, Lcom/mapbox/mapboxsdk/location/j;->d(Lcom/mapbox/mapboxsdk/location/j;)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->O()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/j$g;->b:Lcom/mapbox/mapboxsdk/location/j;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/location/j;->d(Lcom/mapbox/mapboxsdk/location/j;)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->O()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mapbox/android/gestures/c;->b(F)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/location/j$g;->a:Z

    :cond_0
    return-void
.end method

.method private e(Lcom/mapbox/android/gestures/c;)V
    .locals 3
    .param p1    # Lcom/mapbox/android/gestures/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/mapbox/android/gestures/c;->s()Landroid/graphics/RectF;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/j$g;->b:Lcom/mapbox/mapboxsdk/location/j;

    invoke-static {v2}, Lcom/mapbox/mapboxsdk/location/j;->d(Lcom/mapbox/mapboxsdk/location/j;)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->P()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/j$g;->b:Lcom/mapbox/mapboxsdk/location/j;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/location/j;->d(Lcom/mapbox/mapboxsdk/location/j;)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->P()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mapbox/android/gestures/c;->a(Landroid/graphics/RectF;)V

    .line 4
    iput-boolean v1, p0, Lcom/mapbox/mapboxsdk/location/j$g;->a:Z

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/j$g;->b:Lcom/mapbox/mapboxsdk/location/j;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/location/j;->d(Lcom/mapbox/mapboxsdk/location/j;)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->P()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/j$g;->b:Lcom/mapbox/mapboxsdk/location/j;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/location/j;->d(Lcom/mapbox/mapboxsdk/location/j;)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->P()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mapbox/android/gestures/c;->a(Landroid/graphics/RectF;)V

    .line 7
    iput-boolean v1, p0, Lcom/mapbox/mapboxsdk/location/j$g;->a:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private f(Lcom/mapbox/android/gestures/c;)V
    .locals 2
    .param p1    # Lcom/mapbox/android/gestures/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/mapbox/android/gestures/c;->r()F

    move-result v0

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/j$g;->b:Lcom/mapbox/mapboxsdk/location/j;

    invoke-static {v1}, Lcom/mapbox/mapboxsdk/location/j;->d(Lcom/mapbox/mapboxsdk/location/j;)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->N()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/j$g;->b:Lcom/mapbox/mapboxsdk/location/j;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/location/j;->d(Lcom/mapbox/mapboxsdk/location/j;)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->N()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mapbox/android/gestures/c;->b(F)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/location/j$g;->a:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/mapbox/android/gestures/c;)V
    .locals 2
    .param p1    # Lcom/mapbox/android/gestures/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/j$g;->b:Lcom/mapbox/mapboxsdk/location/j;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/location/j;->d(Lcom/mapbox/mapboxsdk/location/j;)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->M()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/j$g;->b:Lcom/mapbox/mapboxsdk/location/j;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/location/j;->e(Lcom/mapbox/mapboxsdk/location/j;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/mapbox/android/gestures/e;->g()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/j$g;->e(Lcom/mapbox/android/gestures/c;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/j$g;->d(Lcom/mapbox/android/gestures/c;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/j$g;->f(Lcom/mapbox/android/gestures/c;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/j$g;->b:Lcom/mapbox/mapboxsdk/location/j;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/location/j;->a(I)V

    :goto_0
    return-void
.end method

.method public b(Lcom/mapbox/android/gestures/c;)V
    .locals 2
    .param p1    # Lcom/mapbox/android/gestures/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/j$g;->a:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/mapbox/android/gestures/i;->n()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/j$g;->b:Lcom/mapbox/mapboxsdk/location/j;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/location/j;->e(Lcom/mapbox/mapboxsdk/location/j;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/j$g;->b:Lcom/mapbox/mapboxsdk/location/j;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/location/j;->f(Lcom/mapbox/mapboxsdk/location/j;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/j$g;->b:Lcom/mapbox/mapboxsdk/location/j;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/location/j;->a(I)V

    .line 5
    invoke-virtual {p1}, Lcom/mapbox/android/gestures/i;->n()V

    :cond_2
    return-void
.end method

.method public c(Lcom/mapbox/android/gestures/c;)V
    .locals 1
    .param p1    # Lcom/mapbox/android/gestures/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/j$g;->b:Lcom/mapbox/mapboxsdk/location/j;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/location/j;->d(Lcom/mapbox/mapboxsdk/location/j;)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/location/j$g;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/j$g;->b:Lcom/mapbox/mapboxsdk/location/j;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/location/j;->e(Lcom/mapbox/mapboxsdk/location/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/j$g;->b:Lcom/mapbox/mapboxsdk/location/j;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/location/j;->d(Lcom/mapbox/mapboxsdk/location/j;)Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/location/LocationComponentOptions;->N()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mapbox/android/gestures/c;->b(F)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lcom/mapbox/android/gestures/c;->a(Landroid/graphics/RectF;)V

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/location/j$g;->a:Z

    return-void
.end method
