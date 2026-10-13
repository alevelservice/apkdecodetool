.class Lcom/mapbox/mapboxsdk/location/k$k;
.super Ljava/lang/Object;
.source "LocationComponent.java"

# interfaces
.implements Lcom/mapbox/mapboxsdk/location/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/location/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "k"
.end annotation


# instance fields
.field private final a:Lcom/mapbox/mapboxsdk/location/y;

.field final synthetic b:Lcom/mapbox/mapboxsdk/location/k;


# direct methods
.method private constructor <init>(Lcom/mapbox/mapboxsdk/location/k;Lcom/mapbox/mapboxsdk/location/y;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/k$k;->b:Lcom/mapbox/mapboxsdk/location/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/location/k$k;->a:Lcom/mapbox/mapboxsdk/location/y;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mapbox/mapboxsdk/location/k;Lcom/mapbox/mapboxsdk/location/y;Lcom/mapbox/mapboxsdk/location/k$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/mapbox/mapboxsdk/location/k$k;-><init>(Lcom/mapbox/mapboxsdk/location/k;Lcom/mapbox/mapboxsdk/location/y;)V

    return-void
.end method

.method private c(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k$k;->b:Lcom/mapbox/mapboxsdk/location/k;

    invoke-static {v0}, Lcom/mapbox/mapboxsdk/location/k;->g(Lcom/mapbox/mapboxsdk/location/k;)Lcom/mapbox/mapboxsdk/location/i;

    move-result-object v0

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/k$k;->b:Lcom/mapbox/mapboxsdk/location/k;

    invoke-static {v1}, Lcom/mapbox/mapboxsdk/location/k;->a(Lcom/mapbox/mapboxsdk/location/k;)Lcom/mapbox/mapboxsdk/maps/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/n;->b()Lcom/mapbox/mapboxsdk/camera/CameraPosition;

    move-result-object v1

    const/16 v2, 0x24

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, v1, p1}, Lcom/mapbox/mapboxsdk/location/i;->a(Lcom/mapbox/mapboxsdk/camera/CameraPosition;Z)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k$k;->a:Lcom/mapbox/mapboxsdk/location/y;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/location/y;->a(I)V

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/k$k;->c(I)V

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/k$k;->a:Lcom/mapbox/mapboxsdk/location/y;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/location/y;->b(I)V

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/location/k$k;->c(I)V

    return-void
.end method
