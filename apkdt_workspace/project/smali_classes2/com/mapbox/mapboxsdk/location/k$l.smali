.class final Lcom/mapbox/mapboxsdk/location/k$l;
.super Ljava/lang/Object;
.source "LocationComponent.java"

# interfaces
.implements Le/m/a/a/d/d;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/location/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/m/a/a/d/d<",
        "Le/m/a/a/d/i;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mapbox/mapboxsdk/location/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/location/k;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/location/k$l;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(Le/m/a/a/d/i;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k$l;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/location/k;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Le/m/a/a/d/i;->a()Landroid/location/Location;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/mapbox/mapboxsdk/location/k;->a(Lcom/mapbox/mapboxsdk/location/k;Landroid/location/Location;Z)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 2
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Mbgl-LocationComponent"

    const-string v1, "Failed to obtain location update"

    .line 4
    invoke-static {v0, v1, p1}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Le/m/a/a/d/i;

    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/location/k$l;->a(Le/m/a/a/d/i;)V

    return-void
.end method
