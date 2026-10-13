.class Lcom/mapbox/mapboxsdk/location/j$j;
.super Lcom/mapbox/android/gestures/AndroidGesturesManager;
.source "LocationCameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/location/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "j"
.end annotation


# instance fields
.field final synthetic j:Lcom/mapbox/mapboxsdk/location/j;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/location/j;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/j$j;->j:Lcom/mapbox/mapboxsdk/location/j;

    .line 2
    invoke-direct {p0, p2}, Lcom/mapbox/android/gestures/AndroidGesturesManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/j$j;->j:Lcom/mapbox/mapboxsdk/location/j;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/location/j;->b(Lcom/mapbox/mapboxsdk/location/j;)V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/mapbox/android/gestures/AndroidGesturesManager;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
