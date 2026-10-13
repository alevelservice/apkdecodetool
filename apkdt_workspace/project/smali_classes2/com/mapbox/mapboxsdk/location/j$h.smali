.class Lcom/mapbox/mapboxsdk/location/j$h;
.super Ljava/lang/Object;
.source "LocationCameraController.java"

# interfaces
.implements Lcom/mapbox/mapboxsdk/maps/n$u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/location/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mapbox/mapboxsdk/location/j;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/location/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/j$h;->a:Lcom/mapbox/mapboxsdk/location/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mapbox/android/gestures/k;)V
    .locals 1
    .param p1    # Lcom/mapbox/android/gestures/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/j$h;->a:Lcom/mapbox/mapboxsdk/location/j;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/location/j;->f(Lcom/mapbox/mapboxsdk/location/j;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/location/j$h;->a:Lcom/mapbox/mapboxsdk/location/j;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/location/j;->a(I)V

    :cond_0
    return-void
.end method

.method public b(Lcom/mapbox/android/gestures/k;)V
    .locals 0
    .param p1    # Lcom/mapbox/android/gestures/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public c(Lcom/mapbox/android/gestures/k;)V
    .locals 0
    .param p1    # Lcom/mapbox/android/gestures/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
