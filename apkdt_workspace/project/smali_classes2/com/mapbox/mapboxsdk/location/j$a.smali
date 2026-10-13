.class Lcom/mapbox/mapboxsdk/location/j$a;
.super Ljava/lang/Object;
.source "LocationCameraController.java"

# interfaces
.implements Lcom/mapbox/mapboxsdk/maps/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapbox/mapboxsdk/location/j;->a(ZLandroid/location/Location;JLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Lcom/mapbox/mapboxsdk/location/y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mapbox/mapboxsdk/location/y;

.field final synthetic b:Lcom/mapbox/mapboxsdk/location/j;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/location/j;Lcom/mapbox/mapboxsdk/location/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/location/j$a;->b:Lcom/mapbox/mapboxsdk/location/j;

    iput-object p2, p0, Lcom/mapbox/mapboxsdk/location/j$a;->a:Lcom/mapbox/mapboxsdk/location/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/j$a;->b:Lcom/mapbox/mapboxsdk/location/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mapbox/mapboxsdk/location/j;->a(Lcom/mapbox/mapboxsdk/location/j;Z)Z

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/j$a;->a:Lcom/mapbox/mapboxsdk/location/y;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/j$a;->b:Lcom/mapbox/mapboxsdk/location/j;

    invoke-static {v1}, Lcom/mapbox/mapboxsdk/location/j;->a(Lcom/mapbox/mapboxsdk/location/j;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/mapbox/mapboxsdk/location/y;->a(I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/j$a;->b:Lcom/mapbox/mapboxsdk/location/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mapbox/mapboxsdk/location/j;->a(Lcom/mapbox/mapboxsdk/location/j;Z)Z

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/j$a;->a:Lcom/mapbox/mapboxsdk/location/y;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/j$a;->b:Lcom/mapbox/mapboxsdk/location/j;

    invoke-static {v1}, Lcom/mapbox/mapboxsdk/location/j;->a(Lcom/mapbox/mapboxsdk/location/j;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/mapbox/mapboxsdk/location/y;->b(I)V

    :cond_0
    return-void
.end method
